install_learners("surv.parametric")

test_that("autotest aft", {
  set.seed(1)
  learner = lrn("surv.parametric")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)

  # manually check sanity
  task = generate_tasks.LearnerSurv(learner)$sanity
  pred = learner$train(task, 1:10)$predict(task, 11:20)
  expect_true(pred$score() >= 0.5)
})

test_that("autotest ph", {
  set.seed(1)
  learner = lrn("surv.parametric", type = "ph")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)

  # manually check sanity
  task = generate_tasks.LearnerSurv(learner)$sanity
  pred = learner$train(task, 1:10)$predict(task, 11:20)
  expect_true(pred$score() >= 0.5)
})

test_that("autotest po", {
  set.seed(1)
  learner = lrn("surv.parametric", type = "po")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)

  # manually check sanity
  task = generate_tasks.LearnerSurv(learner)$sanity
  pred = learner$train(task, 1:10)$predict(task, 11:20)
  expect_true(pred$score() >= 0.5)
})

data(lung, package = "survival")
lung2 = lung
lung2$status = lung2$status - 1
lung2 = lung2[-14, c("time", "status", "ph.ecog")]
task = TaskSurv$new("param",
  backend = lung2,
  time = "time",
  event = "status")

test_that("manualtest - aft", {
  learner = lrn("surv.parametric", dist = "weibull", type = "aft")
  expect_silent(learner$train(task))
  p = learner$predict(task)
  expect_prediction_surv(p)
  expect_equal(-p$lp, predict(learner$model$fit, type = "lp"))
  expect_equal(p$distr[1]$survival(predict(
    learner$model$fit, type = "quantile", p = c(0.2, 0.8)
  )[1, ]), c(0.8, 0.2))
  expect_equal(p$distr[10]$cdf(predict(
    learner$model$fit, type = "quantile", p = seq.int(0, 1, 0.1)
  )[10, ]),
  seq.int(0, 1, 0.1))

  learner = lrn("surv.parametric", dist = "lognormal", type = "aft")$train(task)
  p = learner$predict(task)
  expect_equal(p$distr[15]$cdf(predict(
    learner$model$fit, type = "quantile", p = seq.int(0, 1, 0.1)
  )[15, ]), seq.int(0, 1, 0.1))
})


test_that("missing", {
  learner = lrn("surv.parametric")
  learner$train(task)
  expect_error(learner$predict(tsk("lung")))
})

test_that("quantile", {
  learner = lrn("surv.parametric", dist = "weibull", type = "aft")$train(task)
  p = lrn("surv.parametric", dist = "weibull", type = "aft")$train(task)$predict(task)
  quantile = p$distr$quantile(c(0.2, 0.8))
  expect_equal(matrix(t(quantile), ncol = 2),
               predict(learner$model$fit, type = "quantile", p = c(0.2, 0.8)))
  quantile = p$distr$quantile(0.5)
  expect_equal(unlist(p$distr$cdf(quantile), use.names = FALSE), rep(0.5, 227))

  p = lrn("surv.parametric", dist = "weibull", type = "ph")$train(task)$predict(task)
  quantile = p$distr$quantile(0.5)
  expect_equal(unlist(p$distr$cdf(quantile), use.names = FALSE), rep(0.5, 227))

  p = lrn("surv.parametric", dist = "weibull", type = "po")$train(task)$predict(task)
  quantile = p$distr$quantile(0.5)
  expect_equal(unlist(p$distr$cdf(quantile), use.names = FALSE), rep(0.5, 227))
})

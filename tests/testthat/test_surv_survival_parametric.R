install_learners("surv.parametric")

test_that("autotest", {
  learner = mlr_learners$get("surv.parametric")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)

  task = tsk("rats")
  expect_silent(expect_prediction_surv(
    lrn("surv.parametric", type = "aft")$train(tsk("rats"))$predict(tsk("rats"))
  ))
  expect_silent(expect_prediction_surv(
    lrn("surv.parametric", type = "ph")$train(tsk("rats"))$predict(tsk("rats"))
  ))
  expect_silent(expect_prediction_surv(
    lrn("surv.parametric", type = "po")$train(tsk("rats"))$predict(tsk("rats"))
  ))
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
  expect_equal(p$lp[1:20], predict(learner$model$fit, type = "lp")[1:20])
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

  learner = lrn("surv.parametric", dist = "loglogistic", type = "aft")$train(task)
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

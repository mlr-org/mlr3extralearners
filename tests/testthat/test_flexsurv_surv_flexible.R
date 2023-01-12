test_that("autotest", {
  set.seed(200)
  learner = lrn("surv.flexible", k = 1, scale = "normal", inits = c(0.1, 1))
  expect_learner(learner)
  # sanity excluded due to issues in optimisation (it's too easy...)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)
})

test_that("manualtest", {
  task = tsk("rats")
  set.seed(1)
  learn = lrn("surv.flexible", k = 1, scale = "normal", inits = c(1, 1, 1))
  learn$train(task)
  p = learn$predict(task)
  # Comparison to flexsurv
  expect_equal(
    round(p$lp[1:20], 5),
    round(summary(learn$model,
      task$data(cols = task$feature_names),
      se = F, ci = F, type = "link", tidy = T)[1:20, 2], 5))
  expect_equal(
    round(p$distr[2]$survival(1:23), 5),
    round(summary(learn$model,
      task$data(cols = task$feature_names),
      se = F, ci = F, type = "survival", tidy = T, t = 1:23)[24:46, 2], 5))
})

test_that("missing", {
  task = tsk("rats")
  learner = lrn("surv.flexible", k = 1)
  learner$train(task)
  expect_error(learner$predict(tsk("lung")))
})

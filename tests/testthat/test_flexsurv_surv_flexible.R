skip_if_not_installed("flexsurv")

test_that("autotest", {
  withr::local_seed(200)
  learner = lrn("surv.flexible", k = 1, scale = "normal", inits = c(0.1, 1))
  expect_learner(learner)
  # sanity excluded due to issues in optimisation (it's too easy...)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)
})

test_that("manualtest", {
  withr::local_seed(1)
  task = tsk("rats")
  learn = lrn("surv.flexible", k = 1, scale = "normal", inits = c(1, 1, 1))
  learn$train(task)
  p = learn$predict(task)
  # Comparison to flexsurv
  expect_equal(
    p$lp[1:20],
    summary(learn$model,
      task$data(cols = task$feature_names),
      se = FALSE, ci = FALSE, type = "link", tidy = TRUE)[1:20, 2]
  )
  expect_equal(
    p$distr[2]$survival(1:23),
    summary(learn$model,
      task$data(cols = task$feature_names),
      se = FALSE, ci = FALSE, type = "survival", tidy = TRUE, t = 1:23)[24:46, 2],
    tolerance = 0.0001
  )
})

test_that("missing", {
  learner = lrn("surv.flexible", k = 1)
  learner$train(tsk("lung"))
  expect_error(learner$predict(lung_missings))
})

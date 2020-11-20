install_learners("surv.flexible")
load_tests("surv.flexible")

test_that("autotest", {
  set.seed(200)
  learner = lrn("surv.flexible", k = 1, scale = "normal", inits = c(0.1, 1))
  expect_learner(learner)
  result = run_autotest(learner,check_replicable = FALSE)
  expect_true(result, info = result$error)
})

task = tsk("rats")
test_that("manualtest", {
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
  learner = lrn("surv.flexible", k = 1)
  learner$train(task)
  expect_error(learner$predict(tsk("lung")))
})

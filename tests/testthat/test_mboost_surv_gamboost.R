install_learners("surv.gamboost")
load_tests("surv.gamboost")

test_that("autotest ph", {
  learner = lrn("surv.gamboost", baselearner = "bols", family = "coxph", center = TRUE)
  expect_learner(learner)
  # weights are fine for all predict types except 'distr'
  result = run_autotest(learner, exclude = "weights", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("autotest aft", {
  learner = lrn("surv.gamboost", family = "weibull", baselearner = "bols", center = TRUE)
  expect_learner(learner)
  # weights are fine for all predict types except 'distr'
  result = run_autotest(learner, exclude = "weights", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

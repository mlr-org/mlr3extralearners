install_learners("surv.mboost")
load_tests("surv.mboost")

test_that("autotest ph", {
  learner = lrn("surv.mboost", baselearner = "bols", family = "coxph", center = TRUE)
  expect_learner(learner)
  # weights are fine for all predict types except 'distr'
  result = run_autotest(learner, exclude = "weights", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

skip_if_not_installed("CoxBoost")

test_that("autotest surv.coxboost", {
  learner = lrn("surv.coxboost", stepno = 5)
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

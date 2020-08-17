install_learners("surv.nelson")

test_that("autotest", {
  learner = mlr_learners$get("surv.nelson")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

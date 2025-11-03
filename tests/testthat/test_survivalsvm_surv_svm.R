skip_if_not_installed("survivalsvm")

test_that("autotest", {
  learner = lrn("surv.svm", gamma = 0.1)
  expect_learner(learner)
  result = run_autotest(learner, exclude = "feat_single", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

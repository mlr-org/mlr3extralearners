test_that("autotest", {
  learner = LearnerSurvSVM$new()
  learner$param_set$values = list(gamma.mu = 0.1)
  expect_learner(learner)
  result = run_autotest(learner, exclude = "feat_single", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

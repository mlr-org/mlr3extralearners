test_that("autotest", {
  learner = LearnerSurvAkritas$new()
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  # sanity test disabled, because akritas is similar to the Kaplan-Meier in that dependent on parameter it always predicts 0.5
  # whereas the sanity check requires >= 0.6
  expect_true(result, info = result$error)
})

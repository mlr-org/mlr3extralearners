test_that("autotest", {
  learner = LearnerSurvCForest$new()
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, N = 100)
  expect_true(result, info = result$error)
})

install_learners("regr.glmboost")

test_that("autotest", {
  learner = LearnerRegrGLMBoost$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

install_learners("classif.glmboost")

test_that("autotest", {
  learner = LearnerClassifGLMBoost$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

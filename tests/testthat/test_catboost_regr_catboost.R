install_learners("regr.catboost")

test_that("autotest", {
  learner = LearnerRegrCatboost$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

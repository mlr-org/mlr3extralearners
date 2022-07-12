test_that("autotest", {
  learner = LearnerRegrKSVM$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("autotest", {
  learner = LearnerClassifCTree$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("autotest", {
  set.seed(1)
  learner = LearnerDensPlugin$new()
  expect_learner(learner)
  # mrl3proba's generate_task does not respect feature types
  result = run_autotest(learner, exclude = "integer")
  expect_true(result, info = result$error)
})

test_that("autotest", {
  learner = LearnerRegrFNN$new()
  learner$param_set$values = list(k = 10)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

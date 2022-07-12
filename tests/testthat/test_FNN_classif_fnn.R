test_that("autotest", {
  learner = LearnerClassifFNN$new()
  learner$param_set$values = list(k = 10)
  expect_learner(learner)
  result = run_autotest(learner, predict_types = "response")
  expect_true(result, info = result$error)
})

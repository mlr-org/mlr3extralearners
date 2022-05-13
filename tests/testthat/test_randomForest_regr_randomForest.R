test_that("autotest", {
  learner = LearnerRegrRandomForest$new()
  learner$param_set$values = list("importance" = "mse")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})

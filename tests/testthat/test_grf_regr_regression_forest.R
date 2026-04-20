test_that("train and predict work for regression_forest", {
  task.mtcars <- mlr3::tsk("mtcars")
  learner.grf <- LearnerRegrRegressionForest$new()
  
  learner.grf$train(task.mtcars)
  expect_true(!is.null(learner.grf$model))
  
  prediction.result <- learner.grf$predict(task.mtcars)
  expect_true(inherits(prediction.result, "PredictionRegr"))
  expect_equal(length(prediction.result$response), task.mtcars$nrow)
})
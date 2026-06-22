test_that("autotest", {
  learner = LearnerRegrRegressionForest$new()
  expect_learner(learner)
  result = run_autotest(learner, exclude = "feat_all")
  expect_true(result, info = result$error)
})

test_that("train and predict work for regression_forest", {
  task.mtcars <- mlr3::tsk("mtcars")
  learner.grf <- LearnerRegrRegressionForest$new()
  
  learner.grf$train(task.mtcars)
  expect_false(is.null(learner.grf$model))
  
  prediction.result <- learner.grf$predict(task.mtcars)
  expect_s3_class(prediction.result, "PredictionRegr")
  expect_equal(length(prediction.result$response), task.mtcars$nrow)
})
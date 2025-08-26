skip_if_not_installed("randomForestSRC")

test_that("autotest", {
  withr::local_seed(1)
  learner = lrn("regr.rfsrc", ntree = 50, importance = "random", na.action = "na.impute")
  expect_learner(learner)
  # remove property as prediction doesn't work due to rsfrc bug
  learner$properties = setdiff(learner$properties, "selected_features")

  result = run_autotest(learner, exclude = "single")
  expect_true(result, info = result$error)
})

test_that("importance/selected", {
  withr::local_seed(1)
  task = tsk("boston_housing")
  learner = lrn("regr.rfsrc", ntree = 20)
  learner$train(task)
  expect_error(learner$importance(), "Set 'importance'")
  expect_error(learner$selected_features(), "Set parameter 'var.used'")

  # when selected_features() works, prediction fails
  learner$param_set$set_values(var.used = "all.trees")
  learner$train(task)
  expect_character(learner$selected_features())
  expect_error(learner$predict(task), "Prediction is not supported")
})

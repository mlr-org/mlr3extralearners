library(testthat)

test_that("The learner is correctly instanciated", {
  lrn = mlr3regrgpboost::LearnerRegrGPBoost$new()
  expect_equal(lrn$id, "regr.gpboost")
  expect_true("numeric" %in% lrn$feature_types)
})

test_that("LearnerRegrGPBoost train and predict work", {
  task = mlr3::tsk("mtcars")
  learner = LearnerRegrGPBoost$new()
  learner$train(task)
  preds = learner$predict(task)
  expect_equal(length(preds$response), task$nrow)
  expect_true(is.numeric(preds$response))
  expect_false(any(is.na(preds$response)))
})

test_that("Train and predict work with 'cyl' as group", {
  task = mlr3::tsk("mtcars")
  task$set_col_roles("cyl", roles = "group")
  expect_false("cyl" %in% task$feature_names)
  lrn = LearnerRegrGPBoost$new()
  expect_error(lrn$train(task), NA)
  expect_false(is.null(lrn$model))
  p = lrn$predict(task)
  expect_equal(length(p$response), task$nrow)
})

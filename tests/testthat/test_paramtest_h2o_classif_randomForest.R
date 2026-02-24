skip_if_not_installed("h2o")

test_that("paramtest classif.h2o.randomForest train", {
  learner = lrn("classif.h2o.randomForest")
  fun = h2o::h2o.randomForest
  exclude = c(
    "x", # handled by mlr3
    "y", # handled by mlr3
    "training_frame", # handled by mlr3
    "model_id", # not exposed
    "validation_frame", # resampling handled by mlr3
    "nfolds", # resampling handled by mlr3
    "keep_cross_validation_models", # resampling handled by mlr3
    "keep_cross_validation_predictions", # resampling handled by mlr3
    "keep_cross_validation_fold_assignment", # resampling handled by mlr3
    "fold_assignment", # resampling handled by mlr3
    "fold_column", # resampling handled by mlr3
    "offset_column", # not supported
    "weights_column", # handled by mlr3
    "checkpoint", # not exposed
    "calibration_frame", # not exposed
    "custom_metric_func", # not exposed
    "export_checkpoints_dir", # not exposed
    "quiet" # handled by mlr3 wrapper
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.h2o.randomForest predict", {
  learner = lrn("classif.h2o.randomForest")
  fun = h2o::h2o.predict
  exclude = c(
    "object", # handled by mlr3
    "newdata", # handled by mlr3
    "quiet" # handled by mlr3 wrapper
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

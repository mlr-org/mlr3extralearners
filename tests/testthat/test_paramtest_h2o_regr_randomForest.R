skip_if_not_installed("h2o")

test_that("paramtest regr.h2o.randomForest train", {
  learner = lrn("regr.h2o.randomForest")
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
    "balance_classes", # classification only
    "class_sampling_factors", # classification only
    "max_after_balance_size", # classification only
    "sample_rate_per_class", # classification only
    "binomial_double_trees", # classification only
    "checkpoint", # not exposed
    "calibrate_model", # classification only
    "calibration_frame", # not exposed
    "calibration_method", # classification only
    "distribution", # deprecated / ignored for random forest
    "custom_metric_func", # not exposed
    "export_checkpoints_dir", # not exposed
    "gainslift_bins", # classification only
    "auc_type" # classification only
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.h2o.randomForest predict", {
  learner = lrn("regr.h2o.randomForest")
  fun = h2o::h2o.predict
  exclude = c(
    "object", # handled by mlr3
    "newdata" # handled by mlr3
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

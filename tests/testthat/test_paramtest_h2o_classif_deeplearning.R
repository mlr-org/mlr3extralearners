skip_if_not_installed("h2o")

test_that("paramtest classif.h2o.deeplearning train", {
  learner = lrn("classif.h2o.deeplearning")
  fun = h2o::h2o.deeplearning
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
    "weights_column", # handled by mlr3
    "offset_column", # not supported
    "checkpoint", # not exposed
    "pretrained_autoencoder", # not exposed
    "overwrite_with_best_model", # not exposed
    "initial_weights", # not exposed
    "initial_biases", # not exposed
    "quantile_alpha", # regression only
    "tweedie_power", # regression only
    "huber_alpha", # regression only
    "regression_stop", # regression only
    "quiet", # handled by mlr3 wrapper
    "max_categorical_features", # not exposed
    "export_checkpoints_dir", # not exposed
    "auc_type", # not exposed
    "custom_metric_func", # not exposed
    "gainslift_bins" # not exposed
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.h2o.deeplearning predict", {
  learner = lrn("classif.h2o.deeplearning")
  fun = h2o::h2o.predict
  exclude = c(
    "object", # handled by mlr3
    "newdata", # handled by mlr3
    "quiet" # handled by mlr3 wrapper
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

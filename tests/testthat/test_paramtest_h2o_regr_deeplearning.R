skip_if_not_installed("h2o")

test_that("paramtest regr.h2o.deeplearning train", {
  learner = lrn("regr.h2o.deeplearning")
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
    "offset_column", # no offset property
    "balance_classes", # classification only
    "class_sampling_factors", # classification only
    "max_after_balance_size", # classification only
    "initial_weights", # not exposed
    "initial_biases", # not exposed
    "classification_stop", # classification only
    "max_hit_ratio_k", # classification only
    "variable_importances", # no importance property
    "use_all_factor_levels", # no importance property
    "auc_type", # classification only
    "gainslift_bins", # classification only
    "score_validation_sampling", # only one level for regression learner
    "col_major" # deprecated
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.h2o.deeplearning predict", {
  learner = lrn("regr.h2o.deeplearning")
  fun = h2o::h2o.predict
  exclude = c(
    "object", # handled by mlr3
    "newdata" # handled by mlr3
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

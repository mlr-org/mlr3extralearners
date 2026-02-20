skip_if_not_installed("h2o")

test_that("paramtest classif.h2o.gbm train", {
  learner = lrn("classif.h2o.gbm")
  fun = h2o::h2o.gbm
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
    "score_each_iteration", # not exposed
    "score_tree_interval", # not exposed
    "fold_assignment", # resampling handled by mlr3
    "fold_column", # resampling handled by mlr3
    "ignore_const_cols", # not exposed
    "offset_column", # not supported
    "weights_column", # handled by mlr3
    "class_sampling_factors", # not exposed
    "nbins_top_level", # not exposed
    "r2_stopping", # not exposed
    "stopping_rounds", # not exposed
    "stopping_metric", # not exposed
    "stopping_tolerance", # not exposed
    "max_runtime_secs", # not exposed
    "build_tree_one_node", # not exposed
    "learn_rate_annealing", # not exposed
    "distribution", # handled by mlr3 wrapper
    "quantile_alpha", # regression only
    "tweedie_power", # regression only
    "huber_alpha", # regression only
    "checkpoint", # not exposed
    "sample_rate", # not exposed
    "sample_rate_per_class", # not exposed
    "col_sample_rate", # not exposed
    "col_sample_rate_change_per_level", # not exposed
    "col_sample_rate_per_tree", # not exposed
    "min_split_improvement", # not exposed
    "histogram_type", # not exposed
    "max_abs_leafnode_pred", # not exposed
    "pred_noise_bandwidth", # not exposed
    "categorical_encoding", # not exposed
    "calibrate_model", # not exposed
    "calibration_frame", # not exposed
    "calibration_method", # not exposed
    "custom_metric_func", # not exposed
    "custom_distribution_func", # not exposed
    "export_checkpoints_dir", # not exposed
    "in_training_checkpoints_dir", # not exposed
    "in_training_checkpoints_tree_interval", # not exposed
    "monotone_constraints", # not exposed
    "check_constant_response", # not exposed
    "gainslift_bins", # not exposed
    "auc_type", # not exposed
    "interaction_constraints", # not exposed
    "auto_rebalance", # not exposed
    "verbose", # not exposed
    "quiet" # handled by mlr3 wrapper
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.h2o.gbm predict", {
  learner = lrn("classif.h2o.gbm")
  fun = h2o::h2o.predict
  exclude = c(
    "object", # handled by mlr3
    "newdata", # handled by mlr3
    "quiet" # handled by mlr3 wrapper
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

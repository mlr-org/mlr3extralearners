skip_if_not_installed("h2o")

test_that("paramtest regr.h2o.glm train", {
  learner = lrn("regr.h2o.glm")
  fun = h2o::h2o.glm
  exclude = c(
    "x", # handled by mlr3
    "y", # handled by mlr3
    "training_frame", # handled by mlr3
    "model_id", # not exposed
    "validation_frame", # resampling handled by mlr3
    "nfolds", # resampling handled by mlr3
    "checkpoint", # not exposed
    "export_checkpoints_dir", # not exposed
    "seed", # not exposed
    "keep_cross_validation_models", # resampling handled by mlr3
    "keep_cross_validation_predictions", # resampling handled by mlr3
    "keep_cross_validation_fold_assignment", # resampling handled by mlr3
    "fold_assignment", # resampling handled by mlr3
    "fold_column", # resampling handled by mlr3
    "ignore_const_cols", # not exposed
    "score_each_iteration", # not exposed
    "score_iteration_interval", # not exposed
    "offset_column", # not supported
    "weights_column", # handled by mlr3
    "family", # fixed to gaussian
    "tweedie_variance_power", # not exposed
    "tweedie_link_power", # not exposed
    "theta", # not exposed
    "early_stopping", # not exposed
    "missing_values_handling", # not exposed
    "plug_values", # not exposed
    "compute_p_values", # not exposed
    "dispersion_parameter_method", # not exposed
    "init_dispersion_parameter", # not exposed
    "remove_collinear_columns", # not exposed
    "non_negative", # not exposed
    "objective_epsilon", # not exposed
    "gradient_epsilon", # not exposed
    "startval", # not exposed
    "calc_like", # not exposed
    "prior", # not exposed
    "cold_start", # not exposed
    "max_active_predictors", # not exposed
    "interactions", # not exposed
    "interaction_pairs", # not exposed
    "obj_reg", # not exposed
    "stopping_rounds", # not exposed
    "stopping_metric", # not exposed
    "stopping_tolerance", # not exposed
    "control_variables", # not exposed
    "balance_classes", # classification only
    "class_sampling_factors", # classification only
    "max_after_balance_size", # classification only
    "max_runtime_secs", # not exposed
    "custom_metric_func", # not exposed
    "generate_scoring_history", # not exposed
    "auc_type", # not exposed
    "dispersion_epsilon", # not exposed
    "tweedie_epsilon", # not exposed
    "max_iterations_dispersion", # not exposed
    "build_null_model", # not exposed
    "fix_dispersion_parameter", # not exposed
    "generate_variable_inflation_factors", # not exposed
    "fix_tweedie_variance_power", # not exposed
    "dispersion_learning_rate", # not exposed
    "influence", # not exposed
    "gainslift_bins", # not exposed
    "linear_constraints", # not exposed
    "init_optimal_glm", # not exposed
    "separate_linear_beta", # not exposed
    "constraint_eta0", # not exposed
    "constraint_tau", # not exposed
    "constraint_alpha", # not exposed
    "constraint_beta", # not exposed
    "constraint_c0", # not exposed
    "quiet" # handled by mlr3 wrapper
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.h2o.glm predict", {
  learner = lrn("regr.h2o.glm")
  fun = h2o::h2o.predict
  exclude = c(
    "object", # handled by mlr3
    "newdata", # handled by mlr3
    "quiet" # handled by mlr3 wrapper
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

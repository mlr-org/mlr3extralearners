skip_if_not_installed("h2o")

test_that("paramtest classif.h2o.glm train", {
  learner = lrn("classif.h2o.glm")
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
    "keep_cross_validation_models", # resampling handled by mlr3
    "keep_cross_validation_predictions", # resampling handled by mlr3
    "keep_cross_validation_fold_assignment", # resampling handled by mlr3
    "fold_assignment", # resampling handled by mlr3
    "fold_column", # resampling handled by mlr3
    "offset_column", # not supported
    "weights_column", # handled by mlr3
    "family", # handled by mlr3 wrapper
    "tweedie_variance_power", # not exposed
    "tweedie_link_power", # not exposed
    "theta", # not exposed
    "dispersion_parameter_method", # not exposed
    "init_dispersion_parameter", # not exposed
    "control_variables", # not exposed
    "custom_metric_func", # not exposed
    "auc_type", # not exposed (twoclass wrapper)
    "dispersion_epsilon", # not exposed
    "tweedie_epsilon", # not exposed
    "max_iterations_dispersion", # not exposed
    "fix_dispersion_parameter", # not exposed
    "fix_tweedie_variance_power", # not exposed
    "dispersion_learning_rate", # not exposed
    "influence", # not exposed
    "linear_constraints", # not exposed
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

test_that("paramtest classif.h2o.glm predict", {
  learner = lrn("classif.h2o.glm")
  fun = h2o::h2o.predict
  exclude = c(
    "object", # handled by mlr3
    "newdata", # handled by mlr3
    "quiet" # handled by mlr3 wrapper
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

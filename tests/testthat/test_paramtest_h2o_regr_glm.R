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
    "keep_cross_validation_models", # resampling handled by mlr3
    "keep_cross_validation_predictions", # resampling handled by mlr3
    "keep_cross_validation_fold_assignment", # resampling handled by mlr3
    "fold_assignment", # resampling handled by mlr3
    "fold_column", # resampling handled by mlr3
    "offset_column", # not supported
    "weights_column", # handled by mlr3
    "family", # fixed to gaussian
    "tweedie_variance_power", # tweedie family only
    "tweedie_link_power", # tweedie family only
    "theta", # non-gaussian families only
    "prior", # classification-oriented / non-gaussian use
    "balance_classes", # classification only
    "class_sampling_factors", # classification only
    "max_after_balance_size", # classification only
    "auc_type", # classification metrics only
    "tweedie_epsilon", # tweedie family only
    "fix_tweedie_variance_power", # tweedie family only
    "gainslift_bins" # classification metrics only
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.h2o.glm predict", {
  learner = lrn("regr.h2o.glm")
  fun = h2o::h2o.predict
  exclude = c(
    "object", # handled by mlr3
    "newdata" # handled by mlr3
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

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
    "fold_assignment", # resampling handled by mlr3
    "fold_column", # resampling handled by mlr3
    "offset_column", # no offset property
    "weights_column", # handled by mlr3
    "distribution", # handled by mlr3 wrapper
    "quantile_alpha", # regression only
    "tweedie_power", # regression only
    "huber_alpha", # regression only
    "r2_stopping", # no longer supported by h2o
    "calibrate_model", # not exposed
    "calibration_frame", # not exposed
    "calibration_method", # not exposed
    "custom distribution_func" # distribution handled by mlr3wrapper
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.h2o.gbm predict", {
  learner = lrn("classif.h2o.gbm")
  fun = h2o::h2o.predict
  exclude = c(
    "object", # handled by mlr3
    "newdata" # handled by mlr3
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

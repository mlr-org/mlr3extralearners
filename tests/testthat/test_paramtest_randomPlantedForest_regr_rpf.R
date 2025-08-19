skip_if_not_installed("randomPlantedForest")

test_that("regr.rpf train", {
  learner = lrn("regr.rpf")
  fun = randomPlantedForest:::rpf.data.frame
  exclude = c(
    "x", "y", # handled internally
    "loss", # For regression, this parameter is redundant (only "L2" supported)
    # The following 2 parameters are control parameters for
    # classification only, and are ignored in the regression case
    "delta",
    "epsilon",
    # The following 2 are custom mlr3 parameters
    "max_interaction_ratio",
    "max_interaction_limit"
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("regr.rpf predict", {
  learner = lrn("regr.rpf")
  fun = randomPlantedForest:::predict.rpf # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "new_data", # handled internally
    "type" # handled internally by predict_type
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

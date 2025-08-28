skip_if_not_installed("randomPlantedForest")

test_that("classif.rpf train", {
  learner = lrn("classif.rpf")
  fun = randomPlantedForest:::rpf.data.frame
  exclude = c(
    "x", "y", # handled internally
    # The following 2 are custom mlr3 parameters
    "max_interaction_ratio",
    "max_interaction_limit"
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.rpf predict", {
  learner = lrn("classif.rpf")
  fun = randomPlantedForest:::predict.rpf # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "new_data", # handled internally
    "type" # handled internally via predict_type
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

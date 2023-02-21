test_that("regr.rpf train", {
  learner = lrn("regr.rpf")
  fun.list = list(randomPlantedForest:::rpf.data.frame)
  exclude = c(
    "x", "y", # handled internally
    "loss", # Not applicable for regression learner
    "delta", # Not applicable for regression learner
    "epsilon", # Not applicable for regression learner
    "max_interaction_ratio",
    "max_interaction_limit"
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun.list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("regr.rpf predict", {
  learner = lrn("regr.rpf")
  fun.list = list(predict) # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "new_data", # handled internally
    "type" # Not sure but handled by predict_type?
  )

  paramtest = run_paramtest(learner, fun.list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

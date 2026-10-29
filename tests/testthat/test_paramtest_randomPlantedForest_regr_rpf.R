skip_if_not_installed("randomPlantedForest")

test_that("paramtest regr.rpf train", {
  learner = lrn("regr.rpf")
  fun_list = list(randomPlantedForest:::rpf.data.frame) # nolint
  exclude = c(
    "x", # handled internally
    "y", # handled internally
    "loss", # only "L2" is supported for regression
    "delta", # classification only
    "epsilon", # classification only
    "max_interaction_ratio", # manually added as an alternative to "max_interaction"
    "max_interaction_limit", # manually added as an upper bound for "max_interaction_ratio"
    "marshal_include_data" # custom mlr3 parameter controlling marshaling
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.rpf predict", {
  learner = lrn("regr.rpf")
  fun_list = list(randomPlantedForest:::predict.rpf) # nolint
  exclude = c(
    "object", # handled internally
    "new_data", # handled internally
    "type" # handled internally via predict_type
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

test_that("classif.rpf train", {
  learner = lrn("classif.rpf")
  fun = randomPlantedForest:::rpf.data.frame
  exclude = c(
    "x", "y", # handled internally
    "max_interaction_ratio",
    "max_interaction_limit"
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.rpf predict", {
  learner = lrn("classif.rpf")
  fun = predict # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "new_data", # handled internally
    "type" # Not sure but handled by predict_type?
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

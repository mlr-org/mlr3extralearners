skip_if_not_installed("rotationForest")

test_that("classif.rotationForest train", {
  learner = lrn("classif.rotationForest")
  fun = rotationForest::rotationForest
  exclude = c(
    "x", # handled internally
    "y", # handled internally
    "verbose"
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.rotationForest predict", {
  learner = lrn("classif.rotationForest")
  fun = rotationForest:::predict.rotationForest # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "newdata", # handled internally
    "all" # set to FALSE to return average instead of per tree prediction
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

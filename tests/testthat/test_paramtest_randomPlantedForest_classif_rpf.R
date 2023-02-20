test_that("classif.rpf train", {
  learner = lrn("classif.rpf")
  fun = randomPlantedForest::rpf
  exclude = c(
    "x", # handled internally
    "data" # handled internally
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude)
  expect_paramtest(paramtest)
})

test_that("classif.rpf predict", {
  learner = lrn("classif.rpf")
  fun = predict # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "new_data", # handled internally
    "type", # Not sure but handled by predict_type?
    "components" # FIXME: NYI
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

skip_if_not_installed("neuralnet")

test_that("paramtest classif.neuralnet train", {
  learner = lrn("classif.neuralnet")
  fun = neuralnet::neuralnet
    exclude = c(
      "formula", # handled internally
      "data" # handled internally
    )
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.neuralnet predict", {
  learner = lrn("classif.neuralnet")
  fun = neuralnet:::predict.nn # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "newdata", # handled internally
    "all.units"  # should always be set to FALSE (default in neuralnet:::predict.nn)
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
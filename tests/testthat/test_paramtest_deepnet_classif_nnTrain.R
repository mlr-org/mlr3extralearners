skip_if_not_installed("deepnet")

test_that("paramtest classif.nnTrain train", {
  learner = lrn("classif.nnTrain")
  fun = deepnet::nn.train
  exclude = c(
    "x", # handled internally
    "y", # handled internally
    "max.number.of.layers" # handled internally
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.nnTrain predict", {
  learner = lrn("classif.nnTrain")
  fun = deepnet::nn.predict
  exclude = c(
    "nn", # handled internally
    "x" # handled internally
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

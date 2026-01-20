skip_if_not_installed("deepnet")

test_that("paramtest classif.dbnDNN train", {
  learner = lrn("classif.dbnDNN")
  fun = deepnet::dbn.dnn.train
  exclude = c(
    "x", # handled internally
    "y" # handled internally
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.dbnDNN predict", {
  learner = lrn("classif.dbnDNN")
  fun = deepnet::nn.predict
  exclude = c(
    "nn", # model handled internally
    "newdata", # passed via ordered_features
    "x" # alias for newdata
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

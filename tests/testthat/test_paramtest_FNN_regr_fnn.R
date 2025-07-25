# no real training phase

test_that("paramtest regr.fnn predict", {
  learner = lrn("regr.fnn")
  fun = FNN::knn.reg # replace!
  exclude = c(
    "train", # handled by mlr
    "test", # handled by mlr
    "y" # handled by mlr
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

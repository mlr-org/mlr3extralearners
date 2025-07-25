# no real training phase

test_that("paramtest classif.fnn predict", {
  learner = lrn("classif.fnn")
  fun = FNN::knn # replace!
  exclude = c(
    "train", # handled by mlr
    "test", # handled by mlr
    "y", # handled by mlr
    "cl", # this is essentially the target feature, handled by mlr
    "prob" # handled by mlr
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

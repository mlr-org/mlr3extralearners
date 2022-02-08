test_that("paramtest classif.randomforest train", {
  learner = lrn("classif.randomForest")
  fun_list = list(randomForest:::randomForest.default) # nolint
  exclude = c(
    "x", # handled via mlr3
    "y", # handled via mlr3
    "xtest", # handled via mlr3
    "ytest", # handled via mlr3
    "corr.bias", # only regression
    "nPerm", # only regression
    "weights" # mlr3
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.randomForest predict", {
  learner = lrn("classif.randomForest")
  fun_list = list(randomForest:::predict.randomForest) # nolint
  exclude = c(
    "object", # handled via mlr3
    "newdata", # handled via mlr3
    "type", # handled via mlr3
    "cutoff" # not implemented by author
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

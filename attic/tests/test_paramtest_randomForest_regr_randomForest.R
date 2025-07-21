test_that("paramtest regr.randomforest train", {
  learner = lrn("regr.randomForest")
  fun_list = list(randomForest:::randomForest.default) # nolint
  exclude = c(
    "x", # handled via mlr3
    "y", # handled via mlr3
    "xtest", # handled via mlr3
    "ytest", # handled via mlr3
    "corr.bias", # not implemented by author
    "nPerm", # not implemented by author
    "classwt", # classification only
    "cutoff", # classification only
    "weights" # mlr3
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.randomForest predict", {
  learner = lrn("regr.randomForest")
  fun_list = list(randomForest:::predict.randomForest) # nolint
  exclude = c(
    "object", # handled via mlr3
    "newdata", # handled via mlr3
    "type", # handled via mlr3
    "cutoff", # classification only
    "norm.votes" # classification only
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

install_learners("regr.randomForest")

test_that("autotest", {
  learner = LearnerRegrRandomForest$new()
  learner$param_set$values = list("importance" = "mse")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("train regr.randomforest", {
  learner = lrn("regr.randomForest")
  fun_list = list(randomForest:::randomForest.default)
  exclude = c(
    "x", # handled via mlr3
    "y", # handled via mlr3
    "xtest", # handled via mlr3
    "ytest", # handled via mlr3
    "corr.bias", # not implemented by author
    "nPerm", # not implemented by author
    "classwt", # classification only
    "cutoff" # classification only
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("predict regr.randomForest", {
  learner = lrn("regr.randomForest")
  fun_list = list(randomForest:::predict.randomForest)
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

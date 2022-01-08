install_learners("classif.randomForest")

test_that("autotest", {
  learner = LearnerClassifRandomForest$new()
  learner$param_set$values = list(importance = "gini")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("classif.randomforest", {
  learner = lrn("classif.randomForest")
  fun_list = list(randomForest:::randomForest.default)
  exclude = c(
    "x", # handled via mlr3
    "y", # handled via mlr3
    "xtest", # handled via mlr3
    "ytest", # handled via mlr3
    "corr.bias", # only regression
    "nPerm" # only regression
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("predict classif.randomForest", {
  learner = lrn("classif.randomForest")
  fun_list = list(randomForest:::predict.randomForest)
  exclude = c(
    "object", # handled via mlr3
    "newdata", # handled via mlr3
    "type", # handled via mlr3
    "cutoff" # not implemented by author
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

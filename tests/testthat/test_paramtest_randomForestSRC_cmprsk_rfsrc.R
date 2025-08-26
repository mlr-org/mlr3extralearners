skip_if_not_installed("mlr3proba")
skip_if_not_installed("randomForestSRC")

test_that("paramtest cmprsk.rfsrc train", {
  learner = lrn("cmprsk.rfsrc")
  fun_list = list(randomForestSRC::rfsrc)
  exclude = c(
    "formula", # handled internally
    "data", # handled internally
    "ytry", # for unsupervised forests only
    "yvar.wt", # for multivariable forests (not yet implemented)
    "case.wt", # handled by task weights
    "cores", # set as option(rf.cores)
    "sampsize.ratio", # alternative to sampsize
    "mtry.ratio" # alternative to mtry
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest cmprsk.rfsrc predict", {
  learner = lrn("cmprsk.rfsrc")
  fun_list = list(randomForestSRC:::predict.rfsrc)
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "m.target", # for multivariate families only
    "cores", # set as option(rf.cores)
    "estimator", # additionaly implemented by author
    "perf.type" # scoring is done with measures
  )

  paramtest = run_paramtest(learner, fun_list, exclude, "predict")
  expect_paramtest(paramtest)
})

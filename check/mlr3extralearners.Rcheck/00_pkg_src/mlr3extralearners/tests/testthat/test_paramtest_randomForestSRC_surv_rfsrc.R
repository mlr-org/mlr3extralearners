test_that("paramtest surv.rfsrc train", {
  learner = lrn("surv.rfsrc")
  fun_list = list(randomForestSRC::rfsrc)
  exclude = c(
    "formula", # handled internally
    "data", # handled internally
    "ytry", # for unsupervised forests only
    "yvar.wt", # not yet implemented
    "case.wt", # handled by task weights
    "cores", # set as option(rf.cores)
    "sampsize.ratio", # alternative to sampsize
    "mtry.ratio", # alternative to mtry
    "perf.type" # scoring is done with measures
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})


test_that("paramtest surv.rfsrc predict", {
  learner = lrn("surv.rfsrc")
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

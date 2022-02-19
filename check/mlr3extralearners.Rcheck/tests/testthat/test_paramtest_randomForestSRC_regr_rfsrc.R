test_that("paramtest regr.rfsrc train", {
  learner = lrn("regr.rfsrc")
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
    "perf.type" # scoring is done with mlr3 measures
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})


test_that("paramtest regr.rfsrc predict", {
  learner = lrn("regr.rfsrc")
  fun_list = list(randomForestSRC:::predict.rfsrc) # nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "m.target", # for multivariate families only
    "cores", # set as option(rf.cores)
    "perf.type" # scoring is done with measures
  )

  paramtest = run_paramtest(learner, fun_list, exclude, "predict")
  expect_paramtest(paramtest)
})

skip_if_not_installed("randomForestSRC")

test_that("paramtest classif.rfsrc train", {
  learner = lrn("classif.rfsrc")
  fun_list = list(randomForestSRC::rfsrc)
  exclude = c(
    "formula", # handled internally
    "data", # handled internally
    "ytry", # for unsupervised forests only
    "yvar.wt", # not yet implemented
    "case.wt", # handled by task weights
    "mtry.ratio", # alternative to mtry
    "sampsize.ratio", # alternative to sampsize
    "cores", # is set as option(rf.cores)
    "ntime", # for survival forests only
    "cause" # for competing risk forests only
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.rfsrc predict", {
  learner = lrn("classif.rfsrc")
  fun_list = list(randomForestSRC:::predict.rfsrc) # nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "m.target", # all classes returned
    "cores", # is set as option(rf.cores)
    "perf.type" # scoring is done with measures
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.obliqueRSF train", {
  learner = lrn("surv.obliqueRSF")
  fun_list = list(obliqueRSF::ORSF)
  exclude = c(
    "data", # handled internally
    "time", # handled internally
    "status", # handled internally
    "features", # handled internally
    "newdata", # handled internally
    "times", # all times required for distr
    "object", # handled internally
    "mtry_ratio" # manually added as an alternative to "mtry"
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.obliqueRSF predict", {
  learner = lrn("surv.obliqueRSF")
  fun_list = list(obliqueRSF:::predict.orsf)
  exclude = c(
    "data", # handled internally
    "time", # handled internally
    "status", # handled internally
    "features", # handled internally
    "newdata", # handled internally
    "times", # all times required for distr
    "object", # handled internally
    "mtry_ratio" # manually added as an alternative to "mtry"
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

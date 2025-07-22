test_that("paramtest regr.liblinear train", {
  learner = lrn("regr.liblinear")
  fun_list = list(LiblineaR::LiblineaR)
  exclude = c(
    "data", # handled by mlr3
    "target", # handled by mlr3
    "epsilon", # overwritten by svr_eps
    "wi" # not used in regression
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.liblinear predict", {
  learner = lrn("regr.liblinear")
  fun_list = list(LiblineaR:::predict.LiblineaR) # nolint
  exclude = c(
    "object", # handled internally
    "newx", # handled internally
    "proba", # classif only
    "decisionValues" # classif only
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

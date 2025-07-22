test_that("paramtest classif.liblinear train", {
  learner = lrn("classif.liblinear")
  fun_list = list(LiblineaR::LiblineaR)
  exclude = c(
    "data", # handled by mlr3
    "target", # handled by mlr3
    "svr_eps" # only for regression
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.liblinear predict", {
  learner = lrn("classif.liblinear")
  fun_list = list(LiblineaR:::predict.LiblineaR) # nolint
  exclude = c(
    "object", # handled internally
    "newx", # handled internally
    "proba", # handled internally
    "decisionValues" # handled internally
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

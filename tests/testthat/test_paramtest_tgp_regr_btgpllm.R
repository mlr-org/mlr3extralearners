skip_if_not_installed("tgp")

test_that("paramtest regr.btgpllm train", {
  learner = lrn("regr.btgpllm")
  fun_list = list(tgp::btgpllm)
  exclude = c(
    "X", # handled via mlr3
    "Z", # handled via mlr3
    "XX", # handled via mlr3
    "pred.n", # set internally to FALSE
    "basemax" # set internally when factors are present
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.btgpllm predict", {
  learner = lrn("regr.btgpllm")
  fun_list = list(tgp:::predict.tgp) # nolint
  exclude = c(
    "object", # handled via mlr3
    "XX", # handled via mlr3
    "pred.n" # set internally to FALSE
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

skip_if_not_installed("tgp")

test_that("regr.bgpllm train", {
  learner = lrn("regr.bgpllm")
  fun = tgp::bgpllm
  exclude = c(
    "X", # handled internally
    "Z", # handled internally
    "XX", # handled internally
    "pred.n" # set internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("regr.bgpllm predict", {
  learner = lrn("regr.bgpllm")
  fun = tgp:::predict.tgp # nolint
  exclude = c(
    "object", # handled internally
    "XX", # handled internally
    "pred.n" # set internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

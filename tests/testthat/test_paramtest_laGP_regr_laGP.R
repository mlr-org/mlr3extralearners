skip_if_not_installed("laGP")

test_that("paramtest regr.laGP predict", {
  learner = lrn("regr.laGP")
  fun = laGP::aGP

  exclude = c(
    "X", # handled internally
    "Z", # handled internally
    "XX", # handled internally
    "Xi.ret", # handled internally
    "num.gpus", # not exposed
    "gpu.threads", # not exposed
    "omp.threads", # not exposed
    "nn.gpu" # not exposed
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

skip_if_not_installed("tgp")

test_that("paramtest regr.btlm train", {
  learner = lrn("regr.btlm")
  fun = tgp::btlm
  exclude = c(
    "X", # handled via mlr3
    "Z", # handled via mlr3
    "XX", # handled via predict
    "sens.p" # requires tgp::sens output; not exposed in learner
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.btlm predict", {
  learner = lrn("regr.btlm")
  fun = tgp:::predict.tgp # nolint
  exclude = c(
    "object", # handled via mlr3
    "XX", # handled via mlr3
    "sens.p" # requires tgp::sens output; not exposed in learner
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

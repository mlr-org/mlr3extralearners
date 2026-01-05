skip_if_not_installed("tgp")

test_that("paramtest regr.blm train", {
  learner = lrn("regr.blm")
  fun = tgp::blm
  exclude = c(
    "X", # handled via mlr3
    "Z", # handled via mlr3
    "XX", # handled via predict
    "pred.n" # set internally
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.blm predict", {
  learner = lrn("regr.blm")
  fun = tgp:::predict.tgp
  exclude = c(
    "object", # handled via mlr3
    "XX", # handled via mlr3
    "pred.n" # set internally
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

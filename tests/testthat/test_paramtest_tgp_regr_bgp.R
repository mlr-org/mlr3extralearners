skip_if_not_installed("tgp")

test_that("paramtest regr.bgp train", {
  learner = lrn("regr.bgp")
  fun = tgp::bgp
  exclude = c(
    "X", # handled by mlr3
    "Z", # handled by mlr3
    "XX", # handled via predict
    "pred.n" # set internally to avoid in-sample predictions during training
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.bgp predict", {
  learner = lrn("regr.bgp")
  fun = tgp:::predict.tgp # nolint
  exclude = c(
    "object", # handled by mlr3
    "XX", # handled by mlr3
    "pred.n" # set internally
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

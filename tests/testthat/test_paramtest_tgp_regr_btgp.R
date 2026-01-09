skip_if_not_installed("tgp")

test_that("paramtest regr.btgp train", {
  learner = lrn("regr.btgp")
  fun = tgp::btgp
  exclude = c(
    "X", # handled by mlr3
    "Z", # handled by mlr3
    "XX", # handled via predict
    "pred.n" # always FALSE in .train; predictions are computed in .predict
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.btgp predict", {
  learner = lrn("regr.btgp")
  fun = tgp:::predict.tgp
  exclude = c(
    "object", # mlr3
    "XX", # mlr3
    "BTE", # not exposed for predict to keep defaults lightweight
    "pred.n" # internal option in tgp
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

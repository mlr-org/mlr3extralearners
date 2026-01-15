skip_if_not_installed("tgp")

test_that("paramtest regr.btgp train", {
  learner = lrn("regr.btgp")
  fun = tgp::btgp
  exclude = c(
    "X", # handled by mlr3
    "Z", # handled by mlr3
    "XX", # handled via predict
    "pred.n" # internal tgp switch for predictions at training X; not exposed by learner
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.btgp predict", {
  learner = lrn("regr.btgp")
  fun = tgp:::predict.tgp # nolint
  exclude = c(
    "object", # mlr3
    "XX", # mlr3
    "BTE", # not exposed for predict to keep defaults lightweight
    "pred.n" # internal tgp switch; not exposed by learner
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

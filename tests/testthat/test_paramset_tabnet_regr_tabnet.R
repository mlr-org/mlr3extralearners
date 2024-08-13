test_that("paramtest regr.tabnet train", {
  learner = lrn("regr.tabnet")
  fun = tabnet::tabnet_fit # nolint

  exclude = c(
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.earth predict", {
  learner = lrn("regr.tabnet")
  fun = tabnet:::predict.tabnet_fit # nolint

  exclude = c(
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

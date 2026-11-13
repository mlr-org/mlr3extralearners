skip_if_not_installed("XBART")

test_that("paramtest regr.xbart train", {
  learner = lrn("regr.xbart")
  fun_list = list(XBART::XBART)
  exclude = c(
    "y", # handled by mlr3
    "X" # handled by mlr3
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.xbart predict", {
  learner = lrn("regr.xbart")
  fun_list = list(XBART:::predict.XBART) # nolint
  exclude = c(
    "object", # handled by mlr3
    "X" # handled by mlr3
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

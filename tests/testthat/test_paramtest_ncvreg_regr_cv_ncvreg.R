skip_if_not_installed("mlr3proba")
skip_if_not_installed("ncvreg")

test_that("regr.cv_ncvreg train", {
  learner = lrn("regr.cv_ncvreg")
  fun = list(ncvreg::cv.ncvreg, ncvreg::ncvreg)
  exclude = c(
    "X", # handled by mlr3
    "y" # handled by mlr3
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("predict regr.cv_ncvreg", {
  learner = lrn("regr.cv_ncvreg")
  fun = ncvreg:::predict.cv.ncvreg
  exclude = c(
    "object", # handled via mlr3
    "X", # handled via mlr3
    "type", # handled via mlr3
    "which", # we use the `lambda` as it supports interpolation
    "pred_lambda" # rename of `lambda` for prediction
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

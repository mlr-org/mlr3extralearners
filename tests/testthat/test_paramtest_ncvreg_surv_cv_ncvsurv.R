skip_if_not_installed("mlr3proba")
skip_if_not_installed("ncvreg")

test_that("surv.cv_ncvsurv train", {
  learner = lrn("surv.cv_ncvsurv")
  fun = list(ncvreg::cv.ncvsurv, ncvreg::ncvsurv)
  exclude = c(
    "X", # handled by mlr3
    "y" # handled by mlr3
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("predict surv.cv_ncvsurv", {
  learner = lrn("surv.cv_ncvsurv")
  fun = ncvreg:::predict.cv.ncvsurv
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

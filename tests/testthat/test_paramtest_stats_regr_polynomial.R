skip_if_not_installed("stats")

test_that("paramtest regr.polynomial train", {
  learner = lrn("regr.polynomial")
  fun_list = list(stats::lm, stats::poly)
  exclude = c(
    "formula", # handled by mlr3
    "data", # handled by mlr3
    "weights", # handled by mlr3
    "subset", # handled by mlr3
    "na.action", # handled by mlr3
    "offset", # handled by mlr3
    "method", # we always use qr
    "model", # we always keep the model frame
    "x", # passed via the formula
    "y", # we always keep the response
    "qr", # we always keep the QR decomposition
    "singular.ok", # not implemented by author
    "contrasts", # causes lots of troubles just when setting the default
    "coefs", # handled by mlr3
    "simple" # we always need the full basis for prediction
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.polynomial predict", {
  learner = lrn("regr.polynomial")
  fun = stats::predict.lm
  exclude = c(
    "object", # handled via mlr3
    "newdata", # handled via mlr3
    "se.fit", # handled via mlr3
    "scale", # not implemented by author
    "df", # not implemented by author
    "interval", # not implemented by author
    "level", # not implemented by author
    "type", # not implemented by author
    "terms", # not implemented by author
    "na.action", # handled via mlr3
    "pred.var", # not implemented by author
    "weights", # not implemented by author
    "rankdeficient", # not implemented by author
    "tol", # not implemented by author
    "verbose" # not implemented by author
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

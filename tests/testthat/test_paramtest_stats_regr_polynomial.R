skip_if_not_installed("stats")

test_that("paramtest regr.polynomial train", {
  learner = lrn("regr.polynomial")
  fun_list = list(stats::lm)
  exclude = c(
    "formula",   # handled by mlr3
    "data",      # handled by mlr3
    "weights",   # handled by mlr3
    "subset",    # handled by mlr3
    "degree",    # passed to poly(), not lm()
    "raw",       # passed to poly(), not lm()
    "na.action", # handled by mlr3
    "method",    # not exposed
    "model",     # not exposed
    "x",         # not exposed
    "y",         # not exposed
    "qr",        # not exposed
    "singular.ok", # not exposed
    "contrasts", # not exposed
    "offset"     # handled by mlr3
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.polynomial predict", {
  learner = lrn("regr.polynomial")
  fun = stats:::predict.lm # nolint
  exclude = c(
    "object",          # handled via mlr3
    "newdata",         # handled via mlr3
    "se.fit",          # not implemented
    "scale",           # not implemented
    "df",              # not implemented
    "interval",        # not implemented
    "level",           # not implemented
    "type",            # not implemented
    "terms",           # not implemented
    "na.action",       # handled via mlr3
    "pred.var",        # not implemented
    "weights",         # not implemented
    "rankdeficient",   # not implemented
    "tol",             # not implemented
    "verbose"          # not implemented
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

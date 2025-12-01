skip_if_not_installed("laGP")

test_that("paramtest regr.laGP predict", {
  learner = lrn("regr.laGP")
  fun = laGP::aGP

  tested = c("start", "end", "d", "g", "method", "close", "numrays", "verb")
  exclude = setdiff(names(formals(fun)), tested)

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

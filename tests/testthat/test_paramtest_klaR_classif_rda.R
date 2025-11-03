skip_if_not_installed("klaR")

test_that("classif.rda train", {
  learner = lrn("classif.rda")
  fun = klaR:::rda.default
  exclude = c(
    "x",
    "object", # handled internally
    "data", # handled internally
    "grouping",  # optional vector specifying the class for each observation - not implemented by author
    "prior",  # optional prior probabilities for the classes - not implemented by author
    "regularization",  # handled internally by klaR
    "startsimplex"  # optional starting simplex for the Nelder-Mead-minimization- not implemented by author
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.rda predict", {
  learner = lrn("classif.rda")
  fun = klaR:::predict.rda # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "newdata", # handled internally
    "posterior",  # must be set to True
    "aslist"  # must be set to True
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

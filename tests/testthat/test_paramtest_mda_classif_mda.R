test_that("classif.mda train", {
  learner = lrn("classif.mda")
  fun = mda::mda
  exclude = c(
    "formula", # handled internally
    "data", # handled internally
    formalArgs(mda::mda.start)  # handled internally by mda
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.mda predict", {
  learner = lrn("classif.mda")
  fun = mda:::predict.mda # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "newdata", # handled internally
    "type",  # handled internally
    "g"# unknown in CRAN documentation of mda
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

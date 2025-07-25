test_that("paramtest regr.rvm train", {
  learner = lrn("regr.rvm")
  # The Learner actually calls the S4 method with class "formula", but this only creates the matrix
  # and then calls the method for the class "matrix"
  fun_list = list(
    s4_helper(getMethod("rvm", "matrix"))
  )
  exclude = c(
    "x", # handled by mlr3
    "y", # handled by mlr3
    "cross", # crossvalidation is done in mlrregr ksv3
    "type", # train: set to regression
    "subset", # mlr3
    # on the residuals, can be implemented if wanted
    # the kpar parameters are passed explicitly via "kpar", "degree", "scale", "order", "offset",
    # "length", "lambda", "normalized"
    "degree",
    "sigma",
    "scale",
    "order",
    "offset",
    "length",
    "lambda",
    "normalized"
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.rvm predict", {
  learner = lrn("regr.rvm")
  # The Learner actually calls the S4 method with class "formula", but this only creates the matrix
  # and then calls the method for the class "matrix"
  fun_list = list(
    s4_helper(getMethod("predict", "rvm"))
  )
  exclude = c(
    "object", # handled internally
    "newdata" # handled internally
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

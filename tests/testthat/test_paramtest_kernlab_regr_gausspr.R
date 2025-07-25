test_that("paramtest regr.gausspr train", {
  learner = lrn("regr.gausspr")
  # The Learner actually calls the S4 method with class "formula", but this only creates the matrix
  # and then calls the method for the class "matrix"
  fun_list = list(
    s4_helper(getMethod("gausspr", "matrix"))
  )
  exclude = c(
    "x", # handled by mlr3
    "y", # handled by mlr3
    "class.weights", # handled by the task
    "prob.model", # Would calculate the scale parameter of the Laplacian distribution fitted
    "subset", # mlr3
    "cross", # mlr3
    "type", # for train: set to regression, for predict: only response allowed (sd could be
    # implemented on request)
    # the kpar parameters are passed explicitly via "sigma", "degree", "scale", "order", "offset"
    "kpar",
    "degree",
    "sigma",
    "scale",
    "order",
    "offset"
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.gausspr predict", {
  learner = lrn("regr.gausspr")
  # The Learner actually calls the S4 method with class "formula", but this only creates the matrix
  # and then calls the method for the class "matrix"
  fun_list = list(
    s4_helper(getMethod("predict", "gausspr"))
  )
  exclude = c(
    "object", # mlr3
    "newdata", # mlr3
    "coupler", # only for classification
    "type" # mlr3
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

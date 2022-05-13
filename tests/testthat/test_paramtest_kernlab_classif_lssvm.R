test_that("paramtest classif.lssvm train", {
  learner = lrn("classif.lssvm")
  # The Learner actually calls the S4 method with class "formula", but this only creates the matrix
  # and then calls the method for the class "matrix"
  fun = list(
    s4_helper(getMethod("lssvm", "matrix"))
  )

  exclude = c(
    "x", # handled by mlr3
    "y", # handled by mlr3
    "class.weights", # handled by the task
    "prob.model", # Would calculate the scale parameter of the Laplacian distribution fitted
    "cross", # crossvalidation is done in mlr3
    "subset", # mlr3
    "type", # mlr3
    # on the residuals, can be implemented if wanted
    # https://stackoverflow.com/questions/34323072/probability-model-in-kernlabksvm
    # the kpar parameters are passed explicitly via "kpar"; "degree", "scale", "order", ...
    "kpar",
    "degree",
    "sigma",
    "scale",
    "order",
    "offset",
    "normalized",
    "length",
    "lambda"
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.lssvm predict", {
  learner = lrn("classif.lssvm")
  # The Learner actually calls the S4 method with class "formula", but this only creates the matrix
  # and then calls the method for the class "matrix"
  fun = list(
    s4_helper(getMethod("predict", "lssvm"))
  )

  exclude = c(
    # predict
    "object",
    "newdata",
    "coupler",
    "type"
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

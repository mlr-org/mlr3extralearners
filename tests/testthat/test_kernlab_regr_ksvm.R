install_learners("regr.ksvm")

test_that("autotest", {
  learner = LearnerRegrKSVM$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("paramtest", {
  learner = lrn("regr.ksvm")
  # The Learner actually calls the S4 method with class "formula", but this only creates the matrix
  # and then calls the method for the class "matrix"
  fun_list = list(
    s4_helper(getMethod("ksvm", "matrix")),
    s4_helper(getMethod("predict", "ksvm"))
  )
  exclude = c(
    "x", # handled by mlr3
    "y", # handled by mlr3
    "class.weights", # handled by the task
    "prob.model", # Would calculate the scale parameter of the Laplacian distribution fitted
    "cross", # crossvalidation is done in mlr3
    "subset", # mlr3
    # the kpar parameters are passed explicitly via "kpar", "degree", "scale", "order", "offset"
    "kpar", # could also be set to "automatic", but not implemented by the author
    "degree",
    "sigma",
    "scale",
    "order",
    "offset",
    # predict
    "object", # mlr3
    "newdata", # mlr3
    "type", # set to response by the author (would also allow se and variance)
    "coupler" # only for classification
  )
  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})

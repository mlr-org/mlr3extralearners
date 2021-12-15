install_learners("regr.gausspr")
load_tests("regr.gausspr")

test_that("autotest", {
  learner = lrn("regr.gausspr")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("regr.gausspr sigma", {
  learner = lrn("regr.gausspr", tol = 0.1, kpar = list(sigma = 0.2))
  t = tsk("mtcars")
  learner$train(t)
  expect_equal(learner$model@kernelf@kpar$sigma, 0.2)

  learner = lrn("regr.gausspr", tol = 0.1, sigma = 0.2)
  learner$train(t)
  expect_equal(learner$model@kernelf@kpar$sigma, 0.2)
})


test_that("paramtest", {
  learner = lrn("regr.gausspr")
  # The Learner actually calls the S4 method with class "formula", but this only creates the matrix
  # and then calls the method for the class "matrix"
  fun_list = list(
    s4_helper(getMethod("gausspr", "matrix")),
    s4_helper(getMethod("predict", "gausspr"))
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
    "offset",
    # predict
    "object",
    "newdata",
    "coupler" # only for classification
  )
  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})

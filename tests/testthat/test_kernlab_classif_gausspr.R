install_learners("classif.gausspr")
load_tests("classif.gausspr")

test_that("autotest", {
  learner = lrn("classif.gausspr")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("classif.gausspr sigma", {
  learner = lrn("classif.gausspr", tol = 0.1, kpar = list(sigma = 0.2))
  t = tsk("iris")

  learner$train(t)
  expect_equal(learner$model@kernelf@kpar$sigma, 0.2)

  learner = lrn("classif.gausspr", tol = 0.1, sigma = 0.2)
  learner$train(t)
  expect_equal(learner$model@kernelf@kpar$sigma, 0.2)
})

# No paramtest because they are not accessible with formalArgs

test_that("paramtest", {
  learner = lrn("classif.gausspr")
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
    "cross", # crossvalidation is done in mlr3
    "subset", # mlr3
    "type", # mlr3
    "var", # only for regression
    "variance.model", # only for regression
    # on the residuals, can be implemented if wanted
    # https://stackoverflow.com/questions/34323072/probability-model-in-kernlabksvm
    # the kpar parameters are passed explicitly via "kpar"; "degree", "scale", "order", "offset"
    "kpar",
    "degree",
    "sigma",
    "scale",
    "order",
    "offset",
    # predict
    "object",
    "newdata"
  )
  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})

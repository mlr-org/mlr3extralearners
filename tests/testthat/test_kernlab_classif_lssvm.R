install_learners("classif.lssvm")
load_tests("classif.lssvm")

test_that("autotest", {
  set.seed(1)
  learner = lrn("classif.lssvm")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "single", N = 50)
  expect_true(result, info = result$error)
})

test_that("classif.lssvm sigma", {
  learner = lrn("classif.lssvm", kpar = list(sigma = 0.2))
  t = tsk("iris")
  learner$train(t)
  expect_equal(learner$model@kernelf@kpar$sigma, 0.2)

  learner = lrn("classif.lssvm", sigma = 0.2)
  learner$train(t)
  expect_equal(learner$model@kernelf@kpar$sigma, 0.2)
})

test_that("paramtest", {
  learner = lrn("classif.lssvm")
  # The Learner actually calls the S4 method with class "formula", but this only creates the matrix
  # and then calls the method for the class "matrix"
  fun = list(
    s4_helper(getMethod("lssvm", "matrix")),
    s4_helper(getMethod("predict", "lssvm"))
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
    "lambda",
    # predict
    "object",
    "newdata",
    "coupler"

  )
  paramtest = run_paramtest(learner, fun, exclude)
  expect_paramtest(paramtest)
})

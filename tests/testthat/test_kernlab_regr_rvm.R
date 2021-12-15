install_learners("regr.rvm")
load_tests("regr.rvm")

test_that("autotest", {
  set.seed(2)
  learner = lrn("regr.rvm")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("regr.rvm sigma", {
  learner = lrn("regr.rvm", kpar = list(sigma = 0.2))
  t = tsk("mtcars")
  learner$train(t)
  expect_equal(learner$model@kernelf@kpar$sigma, 0.2)

  learner = lrn("regr.rvm", sigma = 0.2)
  learner$train(t)
  expect_equal(learner$model@kernelf@kpar$sigma, 0.2)
})

test_that("paramtest", {
  learner = lrn("regr.rvm")
  # The Learner actually calls the S4 method with class "formula", but this only creates the matrix
  # and then calls the method for the class "matrix"
  fun_list = list(
    s4_helper(getMethod("rvm", "matrix")),
    s4_helper(getMethod("predict", "rvm"))
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
    "normalized",
    # predict
    "object",
    "newdata"
  )
  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})

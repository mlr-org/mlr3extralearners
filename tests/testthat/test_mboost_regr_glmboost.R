install_learners("regr.glmboost")

test_that("autotest", {
  learner = LearnerRegrGLMBoost$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("regr.glmboost", {
  learner = lrn("regr.glmboost")
  fun = list(mboost:::glmboost.formula, mboost::boost_control)
  exclude = c(
    "formula", # handled via mlr3
    "data", # handled via mlr3
    "weights", # handled via mlr3
    "control", # handled to mboost::boost_control
    "center", # depreacated
    "custom.family", # possibility to pass custom family
    "nuirange", # GammaReg etc.
    "d" # Huber
  )
  paramtest = run_paramtest(learner, fun, exclude)
  expect_paramtest(paramtest)
})


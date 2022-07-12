test_that("paramtest regr.glmboost train", {
  learner = lrn("regr.glmboost")
  fun_list = list(mboost:::glmboost.formula, mboost::boost_control) # nolint
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
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})


test_that("paramtest regr.glmboost predict", {
  learner = lrn("regr.glmboost")
  fun = list(mboost:::predict.glmboost) # nolint
  exclude = c(
    "object", # handled by mlr3
    "newdata", # handled via mlr3
    "type", # handled via mlr3
    "which",
    "aggregate"
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

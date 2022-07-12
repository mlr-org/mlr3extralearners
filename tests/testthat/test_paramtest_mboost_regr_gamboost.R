test_that("paramtest regr.gamboost train", {
  learner = lrn("regr.gamboost")
  fun_list = list(mboost::gamboost, mboost::boost_control)

  exclude = c(
    "formula", # handled via mlr3
    "data", # handled via mlr3
    "weights", # handled via mlr3
    "control", # handled to mboost::boost_control
    "center", # depreacated
    "custom.family",
    "nuirange", # Parameter belongs to the families GammaReg etc.
    "d" # Belongs to the Huber family
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.gamboost predict", {
  learner = lrn("regr.gamboost")
  fun_list = list(mboost:::predict.mboost) # nolint

  exclude = c(
    "object", # mlr3
    "newdata", # mlr3
    "type", # mlr3
    "which",
    "aggregate"
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

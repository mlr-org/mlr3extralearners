test_that("paramtest surv.glmboost train", {
  learner = lrn("surv.glmboost")
  fun_list = list(mboost:::glmboost.formula, mboost::boost_control) # nolint
  exclude = c(
    "formula", # handled via mlr3
    "data", # handled via mlr3
    "weights", # handled via mlr3
    "control", # handled to mboost::boost_control
    "custom.family", # Pass custom families as other families are parametrized as characters
    "nuirange", # e.g. mboost::Weibbull
    "sigma", # e.g. mboost::Cindex
    "ipcw" # e.g. mboost::Cindex
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.glmboost predict", {
  learner = lrn("surv.glmboost")
  fun_list = list(mboost:::predict.glmboost) # nolint
  exclude = c(
    "object",
    "newdata",
    "type",
    "which",
    "aggregate"
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.gamboost train", {
  learner = lrn("surv.gamboost")
  fun_list = list(mboost::gamboost, mboost::boost_control, mboost::CoxPH, mboost::Weibull,
    mboost::Loglog, mboost::Lognormal, mboost::Gehan, mboost::Cindex
  )
  exclude = c(
    "formula", # handled via mlr3
    "data", # handled via mlr3
    "weights", # handled via mlr3
    "control", # handled to mboost::boost_control
    "custom.family" # extra param
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.gamboost predict", {
  learner = lrn("surv.gamboost")
  fun_list = list(mboost::predict.mboost)
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

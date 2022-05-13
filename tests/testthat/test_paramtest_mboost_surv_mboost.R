test_that("paramtest surv.mboost train", {
  learner = lrn("surv.mboost")
  fun_list = list(mboost::boost_control, mboost::mboost, mboost::Weibull, mboost::Loglog,
    mboost::Lognormal, mboost::Gehan, mboost::Cindex)
  exclude = c(
    "center", # deprecated
    "formula", # mlr3
    "data", # mlr3
    "weights", # task
    "control", # mlr3
    "custom.family" # mlr3
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.mboost predict", {
  learner = lrn("surv.mboost")
  fun_list = list()
  exclude = c(
    "family" # handled internally
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

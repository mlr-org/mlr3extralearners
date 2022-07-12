test_that("paramtest classif.gamboost train", {
  learner = lrn("classif.gamboost")
  fun_list = list(mboost::gamboost, mboost::boost_control)
  exclude = c(
    "formula", # handled via mlr3
    "data", # handled via mlr3
    "weights", # handled via mlr3
    "control", # handled to mboost::boost_control
    "center", # (mboost_control) depreacated
    "custom.family", # Provide a custom family
    "type", # mboost::Binomial
    "link" # mboost::Binomial
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.gamboost predict", {
  learner = lrn("classif.gamboost")
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

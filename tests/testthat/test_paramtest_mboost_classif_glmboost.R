test_that("paramtest classif.glmboost train", {
  learner = lrn("classif.glmboost")
  fun_list = list(mboost:::glmboost.formula, mboost::boost_control) # nolint
  exclude = c(
    "formula", # handled via mlr3
    "data", # handled via mlr3
    "weights", # handled via mlr3
    "control", # handled to mboost::boost_control
    "center", # deprecated
    "custom.family", # provide custom family
    "link", # mboost::Binomial
    "type" # mboost::Binomial
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.glmboost predict", {
  learner = lrn("classif.glmboost")
  fun_list = list(mboost:::predict.mboost) # nolint
  exclude = c(
    "object",
    "newdata",
    "aggregate",
    "which",
    "type"
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

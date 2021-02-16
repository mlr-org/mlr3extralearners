# NOTE - Most parameters not in formals, all listed here:
#   https://github.com/microsoft/LightGBM/blob/master/docs/Parameters.rst

library(mlr3extralearners)
install_learners("regr.lightgbm")

test_that("regr.lightgbm train", {
  learner = lrn("regr.lightgbm")
  fun = lightgbm::lgb.train
  exclude = c(
    "params", # handled internally
    "data", # handled internally
    "obj", # uses 'objective' alias
    "eval", # uses 'metric' alias
    "valids", # handled internally
    "colnames" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

test_that("regr.lightgbm predict", {
  learner = lrn("regr.lightgbm")
  fun = lightgbm:::predict.lgb.Booster
    exclude = c(
      "object", # handled internally
      "data", # handled internally
      "rawscore", # always FALSE
      "predleaf", # always FALSE
      "predcontrib", # always FALSE
      "reshape" # always FALSE
    )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

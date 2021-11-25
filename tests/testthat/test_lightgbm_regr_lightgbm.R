install_learners("regr.lightgbm")
load_tests("regr.lightgbm")

test_that("autotest", {
  set.seed(1)
  learner = lrn("regr.lightgbm", nrounds = 50)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("manual validation", {
  learner = lrn("regr.lightgbm", early_stopping_rounds = 1)
  task = tsk("mtcars")
  expect_error(learner$train(task))
  task$row_roles$validation = sample(seq(task$nrow), task$nrow * 0.3)
  expect_true(inherits(learner$train(task)$predict(task), "PredictionRegr"))
})
# NOTE - Most parameters not in formals, all listed here:
#   https://github.com/microsoft/LightGBM/blob/master/docs/Parameters.rst

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
      "params", # handled internally
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

install_learners("classif.lightgbm")
load_tests("classif.lightgbm")

test_that("autotest", {
  set.seed(1)
  learner = lrn("classif.lightgbm", nrounds = 50)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("manual validation binary", {
  learner = lrn("classif.lightgbm", early_stopping_rounds = 1)
  task = tsk("sonar")
  expect_error(learner$train(task))
  task$row_roles$validation = sample(seq(task$nrow), task$nrow * 0.3)
  expect_true(inherits(learner$train(task)$predict(task), "PredictionClassif"))
})

test_that("manual validation multiclass", {
  learner = lrn("classif.lightgbm", early_stopping_rounds = 1)
  task = tsk("iris")
  expect_error(learner$train(task))
  task$row_roles$validation = sample(seq(task$nrow), task$nrow * 0.3)
  expect_true(inherits(learner$train(task)$predict(task), "PredictionClassif"))
})
# NOTE - Most parameters not in formals, all listed here:
#   https://github.com/microsoft/LightGBM/blob/master/docs/Parameters.rst

test_that("classif.lightgbm train", {
  learner = lrn("classif.lightgbm")
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

test_that("classif.lightgbm predict", {
  learner = lrn("classif.lightgbm")
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

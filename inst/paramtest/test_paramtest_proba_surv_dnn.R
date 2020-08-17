library(mlr3extralearners)
install_learners("surv.dnn")

test_that("surv.dnn compile", {
  learner = lrn("surv.dnn")
  fun = keras:::compile.keras.engine.training.Model
  exclude = c(
    "object", # handled internally
    "loss", # handled internally
    "metrics", # handled internally
    "sample_weight_mode", # unused
    "target_tensors" # unused
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.dnn get_optimizer", {
  learner = lrn("surv.dnn")
  fun = get_keras_optimizer
  exclude = c(

  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.dnn callback_early_stopping", {
  learner = lrn("surv.dnn")
  fun = keras::callback_early_stopping
  exclude = c(
    "monitor", # handled internally
    "mode" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.dnn fit", {
  learner = lrn("surv.dnn")
  fun = keras:::fit.keras.engine.training.Model
  exclude = c(
    "object", # handled internally
    "x", # handled internally
    "y", # handled internally
    "view_metrics", # handled internally
    "validation_data" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.dnn predict", {
  learner = lrn("surv.dnn")
  fun = keras:::predict.keras.engine.training.Model
  exclude = c(
    "object", # handled internally
    "x" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

library(mlr3extralearners)
install_learners("surv.loghaz")

test_that("surv.loghaz prepare_train_data", {
  learner = lrn("surv.loghaz")
  fun = prepare_train_data
  exclude = c(
    "task", # handled internally
    "model", # handled internally
    "discretise", # handled internally
    "standardize_time", # handled internally
    "log_duration", # unused
    "with_mean", # unused
    "with_std" # unused
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.loghaz get_activation", {
  learner = lrn("surv.loghaz")
  fun = get_pycox_activation
  exclude = c(
    "construct", # handled internally
    "dim", # unused
    "min_val", # unused
    "max_val", # unused
    "negative_slope", # unused
    "num_parameters", # unused
    "init", # unused
    "lower", # unused
    "upper", # unused
    "beta", # unused
    "threshold", # unused
    "value" # unused
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.loghaz get_optim", {
  learner = lrn("surv.loghaz")
  fun = get_pycox_optim
  exclude = c(
    "net" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

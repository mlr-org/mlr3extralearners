library(mlr3extralearners)
install_learners("surv.pchazard")

test_that("surv.pchazard prepare_train_data", {
  learner = lrn("surv.pchazard")
  fun = prepare_train_data
  exclude = c(
    "task", # handled internally
    "model", # handled internally
    "standardize_time", # handled internally
    "discretise", # handled internally
    "log_duration", # handled internally
    "with_mean", # handled internally
    "with_std" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.pchazard get_activation", {
  learner = lrn("surv.pchazard")
  fun = get_activation
  exclude = c(
    "construct", # unused
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

test_that("surv.pchazard get_optim", {
  learner = lrn("surv.pchazard")
  fun = get_optim
  exclude = c(
    "net" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

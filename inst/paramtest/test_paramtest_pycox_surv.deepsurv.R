library(mlr3extralearners)
install_learners("surv.deepsurv")

test_that("surv.deepsurv prepare_train_data", {
  learner = lrn("surv.deepsurv")
  fun = prepare_train_data
  exclude = c(
    "task", # handled internally
    "model", # handled internally
    "discretise", # handled internally
    "standardize_time", # handled internally
    "log_duration", # unused
    "with_mean", # unused
    "with_std", # unused
    "cuts", # unused
    "cutpoints", # unused
    "scheme", # unused
    "cut_min" # unused
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.deepsurv get_activation", {
  learner = lrn("surv.deepsurv")
  fun = get_activation
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

test_that("surv.deepsurv get_optim", {
  learner = lrn("surv.deepsurv")
  fun = get_optim
  exclude = c(
    "net" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

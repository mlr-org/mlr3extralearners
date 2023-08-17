test_that("paramtest surv.dnnsurv train", {
  learner = lrn("surv.dnnsurv")
  fun_list = list(survivalmodels::dnnsurv, survivalmodels::get_keras_optimizer)

  exclude = c(
    "formula", # unused
    "data", # handled internally
    "reverse", # unused
    "time_variable", # handled internally
    "status_variable", # handled internally
    "x", # unused
    "y", # unused
    "schedule_decay", # not used
    "rho", # handled internally
    "global_clipnorm", # handled internally
    "use_ema", # handled internally
    "ema_momentum", # handled internally
    "ema_overwrite_frequency", # handled internally
    "jit_compile", # handled internally
    "initial_accumultator_value", # handled internally
    "amsgrad", # handled internally
    "lr_power", # handled internally
    "l1_regularization_strength", # handled internally
    "l2_regularization_strength", # handled internally
    "l2_shrinkage_regularization_strength", # handled internally
    "beta", # handled internally
    "centered" # handled internally
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.dnnsurv predict", {
  learner = lrn("surv.dnnsurv")
  fun = survivalmodels:::predict.dnnsurv # nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "distr6" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

library(mlr3extralearners)
mlr3extralearners::install_learners("surv.deepsurv")

test_that("surv.deepsurv train", {
  learner = lrn("surv.deepsurv")
  fun = survivalmodels::deepsurv
  exclude = c(
    "formula", # unused
    "data", # handled internally
    "reverse", # unused
    "time_variable", # handled internally
    "status_variable", # handled internally
    "x", # unused
    "y" # unused
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.deepsurv predict", {
  learner = lrn("surv.deepsurv")
  fun = survivalmodels:::predict.pycox
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "distr6", # handled internally
    "interpolate", # unused
    "inter_scheme", # unused
    "sub" # unused
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.deepsurv get_pycox_optim", {
  learner = lrn("surv.deepsurv")
  fun = survivalmodels:::get_pycox_optim
  exclude = c(
    "net" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

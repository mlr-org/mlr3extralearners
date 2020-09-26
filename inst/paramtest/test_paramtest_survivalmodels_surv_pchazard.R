library(mlr3extralearners)
install_learners("surv.pchazard")

test_that("surv.pchazard train", {
  learner = lrn("surv.pchazard")
  fun = survivalmodels::pchazard
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

test_that("surv.pchazard predict", {
  learner = lrn("surv.pchazard")
  fun = survivalmodels:::predict.pycox
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "distr6", # handled internally
    "inter_scheme" # deephit and loghaz only
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.pchazard get_pycox_optim", {
  learner = lrn("surv.pchazard")
  fun = survivalmodels:::get_pycox_optim
  exclude = c(
    "net" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

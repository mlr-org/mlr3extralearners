library(mlr3extralearners)
install_learners("surv.coxtime")
remotes::install_github("RaphaelS1/survivalmodels", upgrade = "always", force = FALSE)

test_that("surv.coxtime train", {
  learner = lrn("surv.coxtime")
  fun = survivalmodels::coxtime
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

test_that("surv.coxtime predict", {
  learner = lrn("surv.coxtime")
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

test_that("surv.coxtime get_pycox_optim", {
  learner = lrn("surv.coxtime")
  fun = survivalmodels:::get_pycox_optim
  exclude = c(
    "net" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

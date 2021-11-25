library(mlr3extralearners)
mlr3extralearners::install_learners("surv.dnnsurv")

test_that("surv.dnnsurv train", {
  learner = lrn("surv.dnnsurv")
  fun = survivalmodels::dnnsurv
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

test_that("surv.dnnsurv predict", {
  learner = lrn("surv.dnnsurv")
  fun = survivalmodels:::predict.dnnsurv
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "distr6" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

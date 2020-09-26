library(mlr3extralearners)
install_learners("surv.akritas")

test_that("surv.akritas train", {
  learner = lrn("surv.akritas")
  fun = survivalmodels::akritas
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

test_that("surv.akritas predict", {
  learner = lrn("surv.akritas")
  fun = survivalmodels:::predict.akritas
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "times", # handled internally
    "type", # handled internally
    "distr6" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

library(mlr3extralearners)
mlr3extralearners::install_learners("surv.penalized")

test_that("surv.penalized_train", {
  learner = lrn("surv.penalized")
  fun = penalized::penalized
  exclude = c(
    "response", # coerced internally
    "penalized", # all variables assumed penalized unless passed to 'unpenalized' parameter
    "data", # coerced internally
    "model" # coerced internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.penalized_predict", {
  learner = lrn("surv.penalized")
  fun = penalized:::predict
  exclude = c(
    "object" # passed internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

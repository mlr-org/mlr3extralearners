skip_if_not_installed("mlr3proba")
skip_if_not_installed("survivalmodelsmlr3")

test_that("paramtest surv.akritas train", {
  learner = lrn("surv.akritas")
  fun = survivalmodelsmlr3::akritas
  exclude = c(
    "formula", # unused
    "data", # handled internally
    "reverse", # unused
    "time_variable", # handled internally
    "status_variable", # handled internally
    "x", # unused
    "y" # unused
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.akritas predict", {
  learner = lrn("surv.akritas")
  fun = survivalmodelsmlr3:::predict.akritas # nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "times", # handled internally
    "type", # handled internally
    "distr6" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

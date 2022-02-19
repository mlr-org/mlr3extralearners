test_that("paramtest surv.akritas train", {
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

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.akritas predict", {
  learner = lrn("surv.akritas")
  fun = survivalmodels:::predict.akritas # nolint
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

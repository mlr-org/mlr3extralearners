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
    "y" # unused
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

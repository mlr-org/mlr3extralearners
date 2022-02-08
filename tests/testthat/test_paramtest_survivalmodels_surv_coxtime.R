test_that("paramtest surv.coxtime train", {
  learner = lrn("surv.coxtime")
  fun_list = list(survivalmodels::coxtime, survivalmodels:::get_pycox_optim) # nolint
  exclude = c(
    "formula", # unused
    "data", # handled internally
    "reverse", # unused
    "time_variable", # handled internally
    "status_variable", # handled internally
    "x", # unused
    "y", # unused
    "net" # handled internally
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.coxtime predict", {
  learner = lrn("surv.coxtime")
  fun = survivalmodels:::predict.pycox # nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "distr6", # handled internally
    "interpolate", # unused
    "inter_scheme", # unused
    "sub" # unused
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

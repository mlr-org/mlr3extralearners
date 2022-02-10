test_that("paramtest surv.pchazard train", {
  learner = lrn("surv.pchazard")
  fun_list = list(survivalmodels::pchazard, survivalmodels:::get_pycox_optim) # nolint
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

test_that("paramtest surv.pchazard predict", {
  learner = lrn("surv.pchazard")
  fun = survivalmodels:::predict.pycox # nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "distr6", # handled internally
    "inter_scheme" # deephit and loghaz only
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

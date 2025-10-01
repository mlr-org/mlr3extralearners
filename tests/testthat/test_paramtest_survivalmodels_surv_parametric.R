skip_if_not_installed("mlr3proba")
skip_if_not_installed("survival")
skip_if_not_installed("survivalmodels")

test_that("paramtest surv.parametric train", {
  learner = lrn("surv.parametric")
  fun = list(survivalmodels::parametric, survival::survreg)
  exclude = c(
    "maxiter", # control parameter
    "rel.tolerance", # control parameter
    "toler.chol", # control parameter
    "debug", # control parameter
    "outer.max", # control parameter
    "control", # control parameter
    "weights", # handled in mlr3
    "subset", # handled in mlr3
    "x", # x,y,data are all coerced to formula internally
    "y", # x,y,data are all coerced to formula internally
    "model", # model always returned
    "data", # x,y,data are all coerced to formula internally
    "formula", # x,y,data are all coerced to formula internally
    "reverse", # handled in mlr3
    "time_variable", # handled in mlr3
    "status_variable", # handled in mlr3
    "eps" # handled in mlr3
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.parametric predict", {
  learner = lrn("surv.parametric")
  fun = survivalmodels:::predict.parametric
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "distr6", # handled internally
    "form", # handled internally
    "times", # handled internally
    "ntime", # handled internally
    "round_time" # handled internally
  )

  paramtest = run_paramtest(learner, fun = fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

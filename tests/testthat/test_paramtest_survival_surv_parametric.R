test_that("paramtest surv.parametric train", {
  learner = lrn("surv.parametric")
  fun = survival::survreg
  exclude = c(
    "maxiter",
    # control parameter
    "rel.tolerance",
    # control parameter
    "toler.chol",
    # control parameter
    "debug",
    # control parameter
    "outer.max",
    # control parameter
    "control",
    # control parameter
    "weights",
    # handled in mlr3
    "subset",
    # handled in mlr3
    "x",
    # x,y,data are all coerced to formula internally
    "y",
    # x,y,data are all coerced to formula internally
    "model",
    # model always returned
    "data",
    # x,y,data are all coerced to formula internally
    "formula" # x,y,data are all coerced to formula internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.parametric predict", {
  learner = lrn("surv.parametric")
  fun = .predict_survreg
  exclude = c(
    # handled via mlr3
    "type",
    "object",
    "task",
    "feature_names",
    "tobit",
    "learner"
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

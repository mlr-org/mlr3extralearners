test_that("regr.priority_lasso train", {
  learner = lrn("regr.priority_lasso")
  fun = list(prioritylasso::prioritylasso)
  exclude = c(
    "X", # handled internally
    "Y", # handled internally,
    "weights", # handled internally,
    "family", # is "gaussian" for continuous data
    "type.measure", # is "mse" for continuous data
    # all other parameters are ones inherited from cv.glmnet
    "alignment",
    "alpha",
    "big",
    "devmax",
    "dfmax",
    "eps",
    "epsnr",
    "exclude",
    "exmx",
    "fdev",
    "gamma",
    "grouped",
    "intercept",
    "keep",
    "lambda",
    "lambda.min.ratio",
    "lower.limits",
    "maxit",
    "mnlam",
    "mxit",
    "mxitnr",
    "nlambda",
    "offset",
    "parallel",
    "penalty.factor",
    "pmax",
    "pmin",
    "prec",
    "predict.gamma",
    "relax",
    "s",
    "standardize.response",
    "thresh",
    "trace.it",
    "type.gaussian",
    "type.logistic",
    "type.measure",
    "type.multinomial",
    "upper.limits"
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("regr.priority_lasso predict", {
  library(prioritylasso)
  learner = lrn("regr.priority_lasso", predict_type="response")
  fun = list(prioritylasso:::predict.prioritylasso) # nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type",
    "lambda.type",
    "predict.gamma",
    "s"
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

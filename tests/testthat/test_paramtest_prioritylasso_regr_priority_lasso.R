skip_if_not_installed("prioritylasso")

test_that("regr.priority_lasso train", {
  learner = lrn("regr.priority_lasso")
  fun = list(prioritylasso::prioritylasso, glmnet::cv.glmnet, glmnet::glmnet)
  exclude = c(
    "X", # handled internally
    "Y", # handled internally
    "type.measure", # set to "mse" internally
    "weights", # handled internally
    "family", # handled internally
    "mcontrol", # this is tricky with the "missings" property as the learner still fails
    "scale.y", # only applies to regression
    "x", # handled internally
    "y", # handled internally
    "offset", # not supported
    "alignment", # not supported
    "keep", # not supported
    "parallel", # not supported
    "gamma", # not supported
    "relax", # not supported
    "control", # not supported
    "alpha", # only lasso by default
    "nlambda", # not supported
    "lambda.min.ratio", # not supported
    "intercept", # not supported
    "thresh", # not supported
    "dfmax", # not supporter
    "pmax", # not supported
    "exclude", # not supported
    "penalty.factor", # not supported
    "lower.limits", # not supported
    "upper.limits", # not supported
    "maxit", # not supported
    "type.logistic", # not applicable to regression
    "standardize.response", # not supported
    "type.multinomial", # not supported
    "cox.ties", # not supported
    "adaptive.order" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("regr.priority_lasso predict", {
  learner = lrn("regr.priority_lasso", predict_type = "response")
  fun = prioritylasso:::predict.prioritylasso
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "handle.missingtestdata" # not supported
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

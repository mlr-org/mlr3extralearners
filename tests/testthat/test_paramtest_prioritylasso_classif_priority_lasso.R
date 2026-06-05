skip_if_not_installed("prioritylasso")

test_that("classif.priority_lasso train", {
  learner = lrn("classif.priority_lasso")
  fun = list(prioritylasso::prioritylasso, glmnet::cv.glmnet, glmnet::glmnet)
  exclude = c(
    "X", # handled internally
    "Y", # handled internally
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
    "type.gaussian", # not applicable to classification
    "standardize.response", # not supported
    "type.multinomial", # not supported
    "cox.ties" # not supported
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.priority_lasso predict", {
  learner = lrn("classif.priority_lasso")
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

test_that("regr.priority_lasso train", {
  learner = lrn("regr.priority_lasso")
  fun = list(prioritylasso::prioritylasso, glmnet::cv.glmnet, glmnet::glmnet.control, glmnet::glmnet)
  exclude = c(
    "x", # handled internally
    "y", # handled internally,
    "X", # handled internally
    "Y", # handled internally,
    "weights", # handled internally,
    "family", # is "gaussian" for continuous data
    "type.measure", # is "mse" for continuous data
    "itrace", # supported via param trace.it
    "factory" # only used in scripts, no effect within mlr3
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("regr.priority_lasso predict", {
  library(prioritylasso)
  learner = lrn("regr.priority_lasso", predict_type = "response")
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

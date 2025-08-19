skip_if_not_installed("prioritylasso")

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
    "factory",
    "mcontrol" # this is tricky with the "missings" property as the learner still fails
    # unless parameters are set correctly
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("regr.priority_lasso predict", {
  learner = lrn("regr.priority_lasso", predict_type = "response")
  fun = list(prioritylasso:::predict.prioritylasso) # nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "predict.gamma", # is passed as gamma to predict.glmnet
    "lambda.type", # predict.glmnet
    "s" # predict.glmnet
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

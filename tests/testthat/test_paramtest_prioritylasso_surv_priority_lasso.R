test_that("surv.priority_lasso train", {
  learner = lrn("surv.priority_lasso")
  fun = list(prioritylasso::prioritylasso, glmnet::cv.glmnet, glmnet::glmnet.control, glmnet::glmnet)
  exclude = c(
    "x", # handled internally
    "y", # handled internally,
    "X", # handled internally
    "Y", # handled internally,
    "weights", # handled internally,
    "family", # is "cox" for survival data
    "type.measure", # is "deviance" for continuous data
    "itrace", # supported via param trace.it
    "factory", # only used in scripts, no effect within mlr3
    "scale.y", # only applies to regression
    "mcontrol" # this is tricky with the "missings" property as the learner still fails
    # unless parameters are set correctly
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("surv.priority_lasso predict", {
  learner = lrn("surv.priority_lasso")
  fun = list(prioritylasso:::predict.prioritylasso) # nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "lambda.type", # predict.glmnet
    "predict.gamma", # is passed as gamma to predict.glmnet
    "s", # predict.glmnet
    "handle.missingtestdata" # we don't support missing data both in train
    # (`mcontrol` parameter) therefore also not during prediction
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

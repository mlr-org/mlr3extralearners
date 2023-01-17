test_that("classif.priority_lasso train", {
  learner = lrn("classif.priority_lasso")
  fun = list(prioritylasso::prioritylasso, glmnet::cv.glmnet, glmnet::glmnet.control, glmnet::glmnet)

  exclude = c(
    "x", # handled internally
    "y", # handled internally,
    "X", # handled internally
    "Y", # handled internally,
    "weights", # handled internally,
    "family", # handled internally
    "itrace", # supported via param trace.it
    "factory" # only used in scripts, no effect within mlr3
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.priority_lasso predict", {
  learner = lrn("classif.priority_lasso")
  fun = list(prioritylasso:::predict.prioritylasso) # nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "lambda.type", # predict.glmnet
    "predict.gamma", # is passed as gamma to predict.glmnet
    "s" # predict.glmnet
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

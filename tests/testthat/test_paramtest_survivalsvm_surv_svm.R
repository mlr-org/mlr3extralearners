test_that("paramtest surv.svm_train", {
  learner = lrn("surv.svm")
  fun = survivalsvm::survivalsvm
  exclude = c(
    "formula", # coerced internally
    "data", # coerced internally by task
    "subset", # coerced internally by task
    "time.variable.name", # unused alternative formulation to formula
    "status.variable.name" # unused alternative formulation to formula
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.svm predict", {
  learner = lrn("surv.svm")
  fun = survivalsvm:::predict.survivalsvm # nolint
  exclude = c(
    "object", # passed internally
    "newdata", # coerced internally by task
    "subset" # coerced internally by task
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

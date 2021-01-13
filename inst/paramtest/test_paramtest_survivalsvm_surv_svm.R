library(mlr3extralearners)
install_learners("surv.svm")

test_that("surv.svm_train", {
  learner = lrn("surv.svm")
  fun = survivalsvm::survivalsvm
  exclude = c(
    "formula", # coerced internally
    "data", # coerced internally by task
    "subset", # coerced internally by task
    "time.variable.name", # unused alternative formulation to formula
    "status.variable.name" # unused alternative formulation to formula
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.svm_predict", {
  learner = lrn("surv.svm")
  fun = survivalsvm:::predict.survivalsvm
  exclude = c(
    "object", # passed internally
    "newdata", # coerced internally by task
    "subset" # coerced internally by task
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

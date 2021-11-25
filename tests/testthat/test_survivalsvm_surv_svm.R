install_learners("surv.svm")
load_tests("surv.svm")

test_that("autotest", {
  learner = LearnerSurvSVM$new()
  learner$param_set$values = list(gamma.mu = 0.1)
  expect_learner(learner)
  result = run_autotest(learner, exclude = "feat_single", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

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

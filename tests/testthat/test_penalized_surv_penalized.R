install_learners("surv.penalized")
load_tests("surv.penalized")

test_that("autotest", {
  learner = lrn("surv.penalized", trace = FALSE)
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("unpenalized", {
  task = tsk("rats")
  learner = lrn("surv.penalized", unpenalized = c("litter"), trace = FALSE)
  learner$train(task)
  expect_equal(names(learner$model@penalized), c("rx", "sexm"))
  expect_equal(names(learner$model@unpenalized), c("litter"))
  expect_prediction_surv(learner$predict(task))
})

test_that("surv.penalized_train", {
  learner = lrn("surv.penalized")
  fun = penalized::penalized
  exclude = c(
    "response", # coerced internally
    "penalized", # all variables assumed penalized unless passed to 'unpenalized' parameter
    "data", # coerced internally
    "model" # coerced internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.penalized_predict", {
  learner = lrn("surv.penalized")
  fun = penalized:::predict
  exclude = c(
    "object" # passed internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

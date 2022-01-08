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

test_that("train surv.penalized", {
  learner = lrn("surv.penalized")
  fun_list = list(penalized::penalized)
  exclude = c(
    "response", # coerced internally
    "penalized", # all variables assumed penalized unless passed to 'unpenalized' parameter
    "data", # coerced internally
    "model" # coerced internally
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("surv.penalized_predict", {
  learner = lrn("surv.penalized")
  fun_list = list(penalized:::predict)
  exclude = c(
    "object", # passed internally
    "unpenalized" # see learner details
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

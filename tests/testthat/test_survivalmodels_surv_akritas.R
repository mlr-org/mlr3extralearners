install_learners("surv.akritas")
load_tests("surv.akritas")

test_that("autotest", {
  learner = LearnerSurvAkritas$new()
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("paramtest surv.akritas train", {
  learner = lrn("surv.akritas")
  fun = survivalmodels::akritas
  exclude = c(
    "formula", # unused
    "data", # handled internally
    "reverse", # unused
    "time_variable", # handled internally
    "status_variable", # handled internally
    "x", # unused
    "y" # unused
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.akritas predict", {
  learner = lrn("surv.akritas")
  fun = survivalmodels:::predict.akritas
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "times", # handled internally
    "type", # handled internally
    "distr6" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

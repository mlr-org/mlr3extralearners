install_learners("surv.dnnsurv")
load_tests("surv.dnnsurv")

skip_on_os("windows")

test_that("autotest", {
  set.seed(10)
  learner = lrn("surv.dnnsurv", cuts = 5)
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)
})

test_that("surv.dnnsurv train", {
  learner = lrn("surv.dnnsurv")
  fun = survivalmodels::dnnsurv
  exclude = c(
    "formula", # unused
    "data", # handled internally
    "reverse", # unused
    "time_variable", # handled internally
    "status_variable", # handled internally
    "x", # unused
    "y" # unused
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.dnnsurv predict", {
  learner = lrn("surv.dnnsurv")
  fun = survivalmodels:::predict.dnnsurv
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "distr6" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

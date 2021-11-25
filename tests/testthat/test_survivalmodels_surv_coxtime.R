install_learners("surv.coxtime")
load_tests("surv.coxtime")

skip_on_os("windows")

if (!reticulate::py_module_available("torch") || !reticulate::py_module_available("pycox") ||
    !reticulate::py_module_available("numpy"))
  skip("One of torch, numpy, pycox not available for testing.")

np = reticulate::import("numpy")
torch = reticulate::import("torch")
set.seed(1)
np$random$seed(1L)
torch$manual_seed(1L)

test_that("autotest", {
  learner = lrn("surv.coxtime")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)
})

test_that("surv.coxtime train", {
  learner = lrn("surv.coxtime")
  fun = survivalmodels::coxtime
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

test_that("surv.coxtime predict", {
  learner = lrn("surv.coxtime")
  fun = survivalmodels:::predict.pycox
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "distr6", # handled internally
    "interpolate", # unused
    "inter_scheme", # unused
    "sub" # unused
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.coxtime get_pycox_optim", {
  learner = lrn("surv.coxtime")
  fun = survivalmodels:::get_pycox_optim
  exclude = c(
    "net" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

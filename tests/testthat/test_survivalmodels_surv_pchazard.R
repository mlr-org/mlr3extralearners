install_learners("surv.pchazard")
load_tests("surv.pchazard")

skip_on_os("windows")

if (!reticulate::py_module_available("torch") || !reticulate::py_module_available("pycox") ||
  !reticulate::py_module_available("numpy")) {
  skip("One of torch, numpy, pycox not available for testing.")
}

np = reticulate::import("numpy")
torch = reticulate::import("torch")
set.seed(1)
np$random$seed(1L)
torch$manual_seed(1L)

test_that("autotest", {
  learner = lrn("surv.pchazard")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)
})

test_that("surv.pchazard train", {
  learner = lrn("surv.pchazard")
  fun_list = list(survivalmodels::pchazard, survivalmodels:::get_pycox_optim)
  exclude = c(
    "formula", # unused
    "data", # handled internally
    "reverse", # unused
    "time_variable", # handled internally
    "status_variable", # handled internally
    "x", # unused
    "y", # unused
    "net" # handled internally
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("surv.pchazard predict", {
  learner = lrn("surv.pchazard")
  fun = survivalmodels:::predict.pycox
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "distr6", # handled internally
    "inter_scheme" # deephit and loghaz only
  )

  ParamTest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

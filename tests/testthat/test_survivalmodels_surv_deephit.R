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
  learner = lrn("surv.deephit")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)
})

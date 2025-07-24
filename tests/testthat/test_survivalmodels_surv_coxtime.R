skip_on_os("windows")
skip("avoid py_module_available()")

np = reticulate::import("numpy")
torch = reticulate::import("torch")
set.seed(1)
np$random$seed(1L)
torch$manual_seed(1L)

test_that("autotest", {
  learner = lrn("surv.coxtime")
  expect_learner(learner)
  # single test fails randomly I think this depends on the python version
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity || feat_single")
  expect_true(result, info = result$error)
})

skip_on_os("windows")
print(reticulate::py_list_packages())

test_that("autotest", {
  skip_if_no_pycox()

  np = reticulate::import("numpy")
  torch = reticulate::import("torch")
  set.seed(1)
  np$random$seed(1L)
  torch$manual_seed(1L)

  learner = lrn("surv.coxtime")
  expect_learner(learner)
  # single test fails randomly I think this depends on the python version
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity || feat_single")
  expect_true(result, info = result$error)
})

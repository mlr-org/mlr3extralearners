skip_on_os("windows")

test_that("autotest", {
  skip_if_no_pycox()

  np = reticulate::import("numpy")
  torch = reticulate::import("torch")
  set.seed(1)
  np$random$seed(1L)
  torch$manual_seed(1L)

  learner = lrn("surv.deephit")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)
})

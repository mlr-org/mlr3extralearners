skip_on_os("windows")
skip_if_not_installed("RWeka")

test_that("autotest", {
  learner = lrn("classif.JRip")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "feat_single_factor_multiclass")
  expect_true(result, info = result$error)
})

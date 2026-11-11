skip_on_os("windows")
skip_if_not_installed("RWeka")

test_that("autotest", {
  withr::local_seed(42)
  learner = lrn("classif.JRip")
  expect_learner(learner)
  # a single nominal feature with a multiclass target can produce empty rule distributions in Weka
  # ("Can't normalize array. Sum is zero."); ordered features are converted to nominal by RWeka
  result = run_autotest(learner, exclude = "feat_single_factor_multiclass|feat_single_ordered_multiclass")
  expect_true(result, info = result$error)
})

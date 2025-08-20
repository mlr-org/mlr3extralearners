skip_if_not_installed("aorsf")

test_that("autotest", {
  withr::local_seed(42)
  learner = lrn("regr.aorsf", n_tree = 20, na_action = "impute_meanmode")
  expect_learner(learner)
  result = run_autotest(learner, N = 30, exclude = "utf8_feature_names")
  expect_true(result)
})

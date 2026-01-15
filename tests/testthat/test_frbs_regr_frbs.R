skip_if_not_installed("frbs")

test_that("autotest", {
  learner = lrn("regr.frbs")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "feat_single_integer|feat_single_numeric|sanity")
  expect_true(result, info = result$error)
})

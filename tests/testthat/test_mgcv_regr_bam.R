skip_if_not_installed("mgcv")

test_that("autotest", {
  learner = lrn("regr.bam")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "utf8_feature_names|feat_all")
  expect_true(result, info = result$error)
})
test_that("autotest", {
  skip_if_not_installed("RRF")
  learner = lrn("regr.RRF", importance = TRUE)
  expect_learner(learner)
  result = run_autotest(learner, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})

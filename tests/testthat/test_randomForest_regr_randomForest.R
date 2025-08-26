test_that("autotest", {
  skip_if_not_installed("randomForest")
  learner = lrn("regr.randomForest", importance = "mse")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})

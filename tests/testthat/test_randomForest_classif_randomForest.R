skip_if_not_installed("randomForest")

test_that("autotest", {
  learner = lrn("classif.randomForest", importance = "gini")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})

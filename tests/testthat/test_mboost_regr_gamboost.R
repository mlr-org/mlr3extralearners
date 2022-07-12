test_that("autotest", {
  learner = LearnerRegrGAMBoost$new()
  learner$param_set$values = list(baselearner = "btree")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})

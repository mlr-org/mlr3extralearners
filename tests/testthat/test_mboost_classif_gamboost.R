test_that("autotest", {
  learner = LearnerClassifGAMBoost$new()
  learner$param_set$values = list(baselearner = "btree", family = "Binomial")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})

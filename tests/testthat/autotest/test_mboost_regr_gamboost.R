install_learners("regr.gamboost")

test_that("autotest", {
  learner = LearnerRegrGAMBoost$new()
  learner$param_set$values = list(baselearner = "btree")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

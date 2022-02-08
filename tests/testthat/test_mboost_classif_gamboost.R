install_learners("classif.gamboost")

test_that("autotest", {
  learner = LearnerClassifGAMBoost$new()
  learner$param_set$values = list(baselearner = "btree", family = "Binomial")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

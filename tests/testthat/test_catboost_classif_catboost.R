install_learners("classif.catboost")

test_that("autotest", {
  learner = LearnerClassifCatboost$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

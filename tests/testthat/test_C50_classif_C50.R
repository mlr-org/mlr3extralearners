test_that("autotest", {
  learner = LearnerClassifC50$new()
  learner$param_set$values = list(trials = 30L)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

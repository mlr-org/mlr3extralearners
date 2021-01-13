install_learners("classif.nnet")

test_that("autotest", {
  learner = LearnerClassifNnet$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

install_learners("classif.liblinear")

test_that("autotest", {
  learner = LearnerClassifLiblineaR$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

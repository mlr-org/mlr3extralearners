install_learners("classif.liblinearl1logreg")

test_that("autotest", {
  learner = LearnerClassifLiblineaRL1LogReg$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

install_learners("classif.liblinearl2logreg")

test_that("autotest", {
  learner = LearnerClassifLiblineaRL2LogReg$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

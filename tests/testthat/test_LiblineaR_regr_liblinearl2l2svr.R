install_learners("regr.liblinearl2l2svr")

test_that("autotest", {
  learner = LearnerRegrLiblineaRL2L2SVR$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

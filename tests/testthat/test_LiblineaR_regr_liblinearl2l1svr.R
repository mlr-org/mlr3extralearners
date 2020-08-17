install_learners("regr.liblinearl2l1svr")

test_that("autotest", {
  learner = LearnerRegrLiblineaRL2L1SVR$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

install_learners("classif.liblinearl2l2svc")

test_that("autotest", {
  learner = LearnerClassifLiblineaRL2L2SVC$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

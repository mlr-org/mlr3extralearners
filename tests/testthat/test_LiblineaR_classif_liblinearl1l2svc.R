install_learners("classif.liblinearl1l2svc")

test_that("autotest", {
  learner = LearnerClassifLiblineaRL1L2SVC$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

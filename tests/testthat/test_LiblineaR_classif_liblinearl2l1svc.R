install_learners("classif.liblinearl2l1svc")

test_that("autotest", {
  learner = LearnerClassifLiblineaRL2L1SVC$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

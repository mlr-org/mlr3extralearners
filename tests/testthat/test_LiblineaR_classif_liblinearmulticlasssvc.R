install_learners("classif.liblinearmulticlasssvc")

test_that("autotest", {
  learner = LearnerClassifLiblineaRMultiClassSVC$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

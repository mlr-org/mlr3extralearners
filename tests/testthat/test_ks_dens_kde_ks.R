install_learners("dens.kde_ks")

test_that("autotest", {
  learner = LearnerDensKDEks$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

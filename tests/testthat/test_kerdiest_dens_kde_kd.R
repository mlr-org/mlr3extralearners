install_learners("dens.kde_kd")

test_that("autotest", {
  learner = LearnerDensKDEkd$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

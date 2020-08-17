install_learners("dens.nonpar")

test_that("autotest", {
  learner = LearnerDensNonparametric$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

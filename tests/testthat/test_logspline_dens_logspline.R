install_learners("dens.logspline")
load_tests("dens.logspline")

test_that("autotest", {
  learner = LearnerDensLogspline$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

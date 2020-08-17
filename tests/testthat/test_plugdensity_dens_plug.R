install_learners("dens.plug")

test_that("autotest", {
  learner = LearnerDensPlugin$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

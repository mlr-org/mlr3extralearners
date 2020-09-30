install_learners("regr.M5Rules")

skip_on_os("windows")

test_that("autotest", {
  learner = LearnerRegrM5Rules$new()
  expect_learner(learner)
  result = run_autotest(learner, exclude = "sanity")
  expect_true(result, info = result$error)
})

skip_on_os("windows")

test_that("autotest", {
  learner = LearnerClassifPART$new()
  expect_learner(learner)
  result = run_autotest(learner, exclude = "missings_each_row")
  expect_true(result, info = result$error)
})

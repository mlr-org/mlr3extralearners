skip_if_not_installed("abess")

test_that("autotest", {
  learner = lrn("regr.abess")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

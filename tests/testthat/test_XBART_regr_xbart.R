skip_if_not_installed("XBART")

test_that("autotest", {
  learner = lrn("regr.xbart")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

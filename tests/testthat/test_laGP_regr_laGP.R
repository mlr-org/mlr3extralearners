skip_if_not_installed("laGP")

test_that("autotest", {
  learner = lrn("regr.laGP", end = 15)
  expect_learner(learner)
  suppressMessages(capture.output({
    result = run_autotest(learner)
  }))
  expect_true(result, info = result$error)
})

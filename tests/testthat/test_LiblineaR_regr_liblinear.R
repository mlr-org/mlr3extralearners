skip_if_not_installed("LiblineaR")

test_that("autotest", {
  learner = lrn("regr.liblinear")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

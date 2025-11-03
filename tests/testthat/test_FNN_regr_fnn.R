skip_if_not_installed("FNN")

test_that("autotest", {
  learner = lrn("regr.fnn", k = 10)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

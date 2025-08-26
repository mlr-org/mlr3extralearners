skip_on_os("windows")

test_that("autotest", {
  skip_if_not_installed("RWeka")
  learner = lrn("regr.IBk")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

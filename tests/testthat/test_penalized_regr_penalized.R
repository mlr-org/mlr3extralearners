skip_if_not_installed("penalized")

test_that("autotest", {
  learner = lrn("regr.penalized")
  expect_learner(learner)
  # note that you can skip tests using the exclude argument
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

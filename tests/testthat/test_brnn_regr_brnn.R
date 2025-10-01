skip_if_not_installed("brnn")

test_that("autotest", {
  learner = lrn("regr.brnn")
  expect_learner(learner)
  # note that you can skip tests using the exclude argument
  result = run_autotest(learner, exclude = "feat_single")
  expect_true(result, info = result$error)
})

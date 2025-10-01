skip_if_not_installed("bst")
skip_if_not_installed("rpart")

test_that("autotest", {
  learner = lrn("regr.bst")
  expect_learner(learner)
  # note that you can skip tests using the exclude argument
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

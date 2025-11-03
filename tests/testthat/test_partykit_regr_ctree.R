skip_if_not_installed("partykit")
skip_if_not_installed("sandwich")
skip_if_not_installed("coin")

test_that("autotest", {
  learner = lrn("regr.ctree")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

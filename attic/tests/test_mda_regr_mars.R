test_that("autotest", {
  learner = lrn("regr.mars")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

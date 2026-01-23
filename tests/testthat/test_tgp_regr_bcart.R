skip_if_not_installed("tgp")

test_that("autotest", {
  learner = lrn("regr.bcart", BTE = c(1000L, 2000L, 2L), verb = 0L)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

skip_if_not_installed("tgp")

test_that("autotest", {
  withr::local_seed(42)
  learner = lrn("regr.bcart", BTE = c(2000L, 4000L, 4L), verb = 0L)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

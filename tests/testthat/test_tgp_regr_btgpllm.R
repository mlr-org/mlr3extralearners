test_that("autotest", {
  skip_if_not_installed("tgp")
  learner = lrn("regr.btgpllm", BTE = c(1000L, 2000L, 2L), verb = 0L)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})


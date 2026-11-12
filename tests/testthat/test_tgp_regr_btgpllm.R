test_that("autotest", {
  skip_if_not_installed("tgp")
  learner = lrn("regr.btgpllm")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})


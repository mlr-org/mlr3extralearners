skip_if_not_installed("tgp")

test_that("autotest: regr.bgpllm", {
  learner = lrn("regr.bgpllm")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

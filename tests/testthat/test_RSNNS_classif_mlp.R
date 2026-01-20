skip_if_not_installed("RSNNS")

test_that("autotest", {
  withr::local_seed(1)
  learner = lrn("classif.mlp", maxit = 10L)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

remotes::install_url('https://github.com/catboost/catboost/releases/download/v0.24.1/catboost-R-Linux-0.24.1.tgz', # nolint
                      INSTALL_opts = c("--no-multiarch"))

test_that("autotest", {
  learner = LearnerRegrCatboost$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

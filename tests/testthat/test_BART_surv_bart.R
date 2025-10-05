skip_if_not_installed("BART")

test_that("autotest", {
  withr::local_seed(1)
  learner = lrn("surv.bart", nskip = 1, ndpost = 1, keepevery = 1)
  expect_learner(learner)
  # We exclude 'feat_all' to disable encapsulated tests since mirai's
  # nanonext dependency runs into a bug => `panic: nng is not fork-reentrant safe`
  capture_output({result = run_autotest(learner, exclude = "feat_all")})
  expect_true(result, info = result$error)
})

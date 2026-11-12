skip_if_not_installed("survival")

test_that("autotest", {
  learner = lrn("surv.nelson")
  expect_learner(learner)
  # sanity requires C-index >= 0.6 but Nelson doesn't discriminate at all (C = 0.5)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)
})

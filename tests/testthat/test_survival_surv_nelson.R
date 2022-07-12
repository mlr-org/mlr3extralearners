test_that("autotest", {
  learner = lrn("surv.nelson")
  expect_learner(learner)
  # sanity always 0.5
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)
})

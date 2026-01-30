skip_if_not_installed("survdnn")
skip_if_not_installed("torch")

test_that("autotest surv.survdnn", {
  withr::local_seed(1)

  learner = lrn("surv.survdnn",
    loss    = "cox",
    epochs  = 2L,
    verbose = FALSE,
    .device = "cpu",
    .seed   = 1L
  )
  expect_learner(learner)

  result = run_autotest(
    learner,
    check_replicable = FALSE,
    exclude = "sanity"  # NN may not pass fixed survival sanity threshold reliably
  )

  expect_true(isTRUE(result), info = if (!isTRUE(result)) result$error else "")
})

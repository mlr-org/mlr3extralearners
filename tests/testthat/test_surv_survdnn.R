skip_if_not_installed("survdnn")
skip_if_not_installed("torch")

test_that("autotest", {
  withr::local_seed(1)

  learner = lrn("surv.survdnn",
    loss = "cox",
    epochs = 2L,
    verbose = FALSE,
    .device = "cpu",
    .seed = 1L
  )

  expect_learner(learner)

  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

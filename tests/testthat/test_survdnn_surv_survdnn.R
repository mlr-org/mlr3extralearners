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

  result = run_autotest(
    learner,
    check_replicable = FALSE#,
    #exclude = "feat_all|sanity|utf8_feature_names"
  )

  expect_true(result)
})

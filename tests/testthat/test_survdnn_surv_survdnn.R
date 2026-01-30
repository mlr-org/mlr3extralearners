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

  cfg_lrn = function(learner, task) {
    # for sanity task, change loss and epochs
    if (identical(task$id, "sanity")) {
      learner$param_set$set_values(loss = "coxtime", epochs = 20L)
    }
  }

  result = run_autotest(
    learner,
    check_replicable = FALSE,
    configure_learner = cfg_lrn
  )

  expect_true(result, info = result$error)
})

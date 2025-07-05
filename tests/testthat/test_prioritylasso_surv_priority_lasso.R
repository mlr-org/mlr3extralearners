test_that("autotest", {
  set.seed(1)
  learner = lrn("surv.priority_lasso")

  # dynamically set the blocks, depending on the task
  cfg_lrn = function(learner, task) {
    s = seq_along(task$feature_names)
    learner$param_set$set_values(blocks = set_names(list(s), "bp1"))
  }

  result = run_autotest(learner, exclude = "feat_single", configure_learner = conf_lrn)
  expect_true(result, info = result$error)
})

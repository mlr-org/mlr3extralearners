test_that("autotest", {
  set.seed(1)
  learner = lrn("regr.priority_lasso")

  # Dynamically define a single block containing all features for the given task
  cfg_lrn = function(learner, task) {
    s = seq_along(task$feature_names)
    learner$param_set$set_values(blocks = set_names(list(s), "bp1"))
  }

  result = run_autotest(learner, exclude = "feat_single", configure_learner = cfg_lrn)
  expect_true(result, info = result$error)
})

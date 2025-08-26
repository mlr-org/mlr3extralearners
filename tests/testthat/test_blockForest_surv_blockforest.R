skip_if_not_installed("blockForest")

test_that("autotest", {
  withr::local_seed(1)
  learner = lrn("surv.blockforest", nsets = 5, num.trees = 10,
                num.trees.pre = 5, importance = "permutation")

  # Dynamically define a single block containing all features for the given task
  cfg_lrn = function(learner, task) {
    s = seq_along(task$feature_names)
    learner$param_set$set_values(blocks = set_names(list(s), "bp1"))
  }

  # 1 feature task for this learner doesn't make sense (1 block => at least 2 features)
  result = run_autotest(learner, exclude = "feat_single|utf8_feature_names", configure_learner = cfg_lrn)
  expect_true(result)
})

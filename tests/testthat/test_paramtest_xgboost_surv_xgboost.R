skip_if_not_installed("mlr3proba")
skip_if_not_installed("xgboost")

test_that("surv.xgboost", {
  learner_cox = lrn("surv.xgboost.cox")
  learner_aft = lrn("surv.xgboost.aft")
  fun = list(xgboost::xgb.train, xgboost::xgb.params)
  exclude = c(
    "params", # handled by mlr3
    "custom_metric", # not supported for survival
    "data", # handled by mlr3
    "objective", # handled by mlr3
    "seed", # not available in xgb.params doc?
    "num_class", # parameters is for multiclassification objectives, not survival
    "eval_metric", # handled by mlr3
    "eta", # alias for parameter learning_rate
    "min_split_loss", # alias for parameter gamma
    "reg_lambda", # alias for parameter lambda
    "reg_alpha", # alias for parameter alpha
    "lambdarank_pair_method", # rank only
    "lambdarank_num_pair_per_sample", # rank only
    "lambdarank_normalization", # rank only
    "lambdarank_score_normalization", # rank only
    "lambdarank_unbiased", # rank only
    "lambdarank_bias_norm", # rank only
    "ndcg_exp_gain", # rank only
    "aft_loss_distribution", # only for AFT objective, not for Cox
    "aft_loss_distribution_scale" # not in the doc?
  )

  paramtest_cox = run_paramtest(learner_cox, fun, exclude, tag = "train")
  expect_paramtest(paramtest_cox)
  paramtest_aft = run_paramtest(learner_aft, fun, exclude, tag = "train")
  expect_paramtest(paramtest_aft)
})

test_that("predict surv.xgboost", {
  learner_cox = lrn("surv.xgboost.cox")
  learner_aft = lrn("surv.xgboost.aft")

  fun = xgboost:::predict.xgb.Booster
  exclude = c(
    "object", # handled by mlr3
    "newdata", # handled by mlr3
    "outputmargin", # always FALSE
    "predleaf", # always FALSE
    "predcontrib", # always FALSE
    "approxcontrib", # unused
    "predinteraction", # always FALSE
    "strict_shape", # destroys prediction format
    "training", # always FALSE
    "avoid_transpose", # always FALSE
    "base_margin" # not supported
  )

  paramtest_cox = run_paramtest(learner_cox, fun, exclude, tag = "predict")
  expect_paramtest(paramtest_cox)
  paramtest_aft = run_paramtest(learner_aft, fun, exclude, tag = "predict")
  expect_paramtest(paramtest_aft)
})

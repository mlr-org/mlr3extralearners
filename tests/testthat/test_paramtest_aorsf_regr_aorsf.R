test_that("paramtest regr.aorsf train", {
  learner = lrn("regr.aorsf")
  fun_list = list(aorsf::orsf)
  exclude = c(
    "control", # handled internally
    "weights", # handled internally
    "oobag_fun", # handled internally
    "data", # handled internally
    "formula", # handled internally
    "control", # handled internally
    "oobag_fun", # handled internally
    "oobag_pred_horizon", # only relevant for survival trees
    "tree_seeds", # handled internally
    "new_data", # handled internally
    "object", # handled internally
    "mtry_ratio", # manually added as an alternative to "mtry"
    "no_fit", # handled internally
    "control_method", # handled internally
    "control_do_scale", # handled internally
    "control_eps", # handled internally
    "control_iter_max", # handled internally
    "control_net_mix", # handled internally
    "control_df_target", # handled internally
    "group_factors" # is set correctly in the learner's importance method (is only relevant for that)
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.aorsf predict", {
  learner = lrn("regr.aorsf")
  fun_list = list(aorsf:::predict.ObliqueForest)
  exclude = c(
    "object", # handled internally
    "new_data", # handled internally
    "pred_horizon", # all times required for distr
    "pred_simplify", #can't be FALSE otherwise response is NA in prediction
    "pred_type", # handled internally
    "na_action", # not implemented,
    "verbose_progress", # handled internally
    "boundary_checks" # not implemented
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

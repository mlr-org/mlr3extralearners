
test_that("paramtest surv.aorsf train", {
  learner = lrn("surv.aorsf")
  fun_list = list(aorsf::orsf)
  exclude = c(
    "control", # handled internally
    "weights", # handled internally
    "oobag_fun", # handled internally
    "data", # handled internally
    "formula", # handled internally
    "control", # handled internally
    "oobag_fun", # handled internally
    "tree_seeds", # handled internally
    "new_data", # handled internally
    "object", # handled internally
    "mtry_ratio", # manually added as an alternative to "mtry"
    "no_fit", # handled internally
    "control_type", # handled internally
    "control_fast_do_scale", # handled internally
    "control_fast_method", # handled internally
    "control_cph_method", # handled internally
    "control_cph_eps", # handled internally
    "control_cph_iter_max", # handled internally
    "control_net_alpha", # handled internally
    "control_net_df_target", # handled internally
    "group_factors" # is set correctly in the learner's importance method (is only relevant for that)
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.aorsf predict", {
  learner = lrn("surv.aorsf")
  fun_list = list(aorsf:::predict.orsf_fit)
  exclude = c(
    "object", # handled internally
    "new_data", # handled internally
    "pred_horizon", # all times required for distr
    "pred_type", # handled internally
    "na_action", # not implemented
    "boundary_checks" # not implemented
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

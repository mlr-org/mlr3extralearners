skip_if_not_installed("aorsf")

test_that("paramtest regr.aorsf train", {
  learner = lrn("regr.aorsf")
  fun_list = list(aorsf::orsf)
  exclude = c(
    "control", # handled internally
    "data", # handled internally
    "epsilon", # handled internally
    "formula", # handled internally
    "group_factors", # is set correctly in the learner's importance
    "max_iter", # handled internally
    "method", # handled internally
    "mtry_ratio", # manually added as an alternative to "mtry"
    "net_mix", # handled internally
    "new_data", # handled internally
    "no_fit", # handled internally
    "object", # handled internally
    "oobag_fun", # handled internally
    "oobag_fun", # handled internally
    "oobag_pred_horizon", # only relevant for survival trees
    "scale_x", # handled internally
    "target_df", # handled internally
    "tree_seeds", # handled internally
    "weights" # handled internally
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.aorsf predict", {
  learner = lrn("regr.aorsf")
  fun_list = list(aorsf:::predict.ObliqueForest) # nolint
  exclude = c(
    "new_data", # handled internally
    "object", # handled internally
    "pred_horizon", # all times required for distr
    "pred_simplify",  #can't be FALSE otherwise response is NA in prediction
    "pred_type", # handled internally
    "verbose_progress", # handled internally
    "boundary_checks" # not implemented
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

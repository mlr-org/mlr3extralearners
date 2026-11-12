skip_if_not_installed("stochtree")

# bart() takes most parameters in lists, whose entries and defaults are only defined in its body
stochtree_param_list = function(name, prefix = NULL) {
  default = NULL
  walk_calls = function(x) {
    if (!is.call(x)) return(NULL)
    if (identical(x[[1L]], as.name("<-")) && identical(x[[2L]], as.name(name))) default <<- x[[3L]]
    lapply(as.list(x), walk_calls)
  }
  walk_calls(body(stochtree::bart))
  ids = names(default)[-1L]
  clash = ids %in% prefix
  ids[clash] = paste0("variance_", ids[clash])
  fun = function() NULL
  formals(fun) = set_names(vector("list", length(ids)), ids)
  fun
}

test_that("paramtest regr.stochtree train", {
  learner = lrn("regr.stochtree")
  mean_forest = stochtree_param_list("mean_forest_params_default")
  fun_list = list(
    stochtree::bart,
    stochtree_param_list("general_params_default"),
    mean_forest,
    stochtree_param_list("variance_forest_params_default", prefix = names(formals(mean_forest)))
  )
  exclude = c(
    "X_train", # handled by mlr3
    "y_train", # handled by mlr3
    "X_test", # handled by mlr3
    "observation_weights", # handled by mlr3
    "leaf_basis_train", # leaf regression is not supported
    "leaf_basis_test", # leaf regression is not supported
    "rfx_group_ids_train", # random effects are not supported
    "rfx_basis_train", # random effects are not supported
    "rfx_group_ids_test", # random effects are not supported
    "rfx_basis_test", # random effects are not supported
    "random_effects_params", # random effects are not supported
    "previous_model_json", # continuing a sampler is not supported
    "previous_model_warmstart_sample_num", # continuing a sampler is not supported
    "general_params", # entries are exposed as individual parameters
    "mean_forest_params", # entries are exposed as individual parameters
    "variance_forest_params", # entries are exposed as individual parameters
    "outcome_model", # regression always uses the continuous outcome with identity link
    "probit_outcome_model", # deprecated and classification only
    "cloglog_leaf_prior_shape", # cloglog link only
    "cloglog_leaf_prior_scale" # cloglog link only
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.stochtree predict", {
  learner = lrn("regr.stochtree")
  fun_list = list(stochtree:::predict.bartmodel) # nolint
  exclude = c(
    "object", # handled by mlr3
    "X", # handled by mlr3
    "leaf_basis", # leaf regression is not supported
    "rfx_group_ids", # random effects are not supported
    "rfx_basis", # random effects are not supported
    "type", # handled by mlr3 predict_type
    "terms", # always the outcome prediction
    "scale" # only relevant for discrete outcomes
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

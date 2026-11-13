skip_if_not_installed("stochtree")

# bcf() takes most parameters in lists, whose entries and defaults are only defined in its body
stochtree_bcf_param_list = function(name) {
  default = NULL
  walk_calls = function(x) {
    if (!is.call(x)) return(NULL)
    if (identical(x[[1L]], as.name("<-")) && identical(x[[2L]], as.name(name))) default <<- x[[3L]]
    lapply(as.list(x), walk_calls)
  }
  walk_calls(body(stochtree::bcf))
  names(default)[-1L]
}

test_that("paramtest regr.stochtree_bcf train", {
  learner = lrn("regr.stochtree_bcf")
  forests = list(
    prognostic = stochtree_bcf_param_list("prognostic_forest_params_default"),
    treatment = stochtree_bcf_param_list("treatment_effect_forest_params_default"),
    variance = stochtree_bcf_param_list("variance_forest_params_default")
  )
  # entries that occur in more than one forest list are prefixed
  clash = unique(unlist(forests)[duplicated(unlist(forests))])
  ids = unlist(imap(forests, function(ids, prefix) ifelse(ids %in% clash, paste0(prefix, "_", ids), ids)))
  ids = c(ids, stochtree_bcf_param_list("general_params_default"))
  nested = function() NULL
  formals(nested) = set_names(vector("list", length(ids)), ids)

  fun_list = list(stochtree::bcf, nested)
  exclude = c(
    "treatment", # custom mlr3 parameter that selects the treatment feature
    "X_train", # handled by mlr3
    "Z_train", # handled by mlr3 via the treatment parameter
    "y_train", # handled by mlr3
    "X_test", # handled by mlr3
    "Z_test", # handled by mlr3
    "observation_weights", # handled by mlr3
    "propensity_train", # estimated internally
    "propensity_test", # estimated internally
    "rfx_group_ids_train", # random effects are not supported
    "rfx_basis_train", # random effects are not supported
    "rfx_group_ids_test", # random effects are not supported
    "rfx_basis_test", # random effects are not supported
    "random_effects_params", # random effects are not supported
    "rfx_prior_var", # random effects are not supported
    "previous_model_json", # continuing a sampler is not supported
    "previous_model_warmstart_sample_num", # continuing a sampler is not supported
    "general_params", # entries are exposed as individual parameters
    "prognostic_forest_params", # entries are exposed as individual parameters
    "treatment_effect_forest_params", # entries are exposed as individual parameters
    "variance_forest_params", # entries are exposed as individual parameters
    "outcome_model", # regression always uses the continuous outcome with identity link
    "probit_outcome_model", # deprecated and classification only
    "delta_max" # probit outcome model only
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.stochtree_bcf predict", {
  learner = lrn("regr.stochtree_bcf")
  fun_list = list(stochtree:::predict.bcfmodel) # nolint
  exclude = c(
    "treatment", # custom mlr3 parameter that selects the treatment feature
    "object", # handled by mlr3
    "X", # handled by mlr3
    "Z", # handled by mlr3 via the treatment parameter
    "propensity", # estimated internally
    "rfx_group_ids", # random effects are not supported
    "rfx_basis", # random effects are not supported
    "type", # handled by mlr3 predict_type
    "terms", # always the outcome prediction
    "scale" # only relevant for discrete outcomes
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})

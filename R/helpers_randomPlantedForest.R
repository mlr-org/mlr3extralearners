#' @export
marshal_model.rpf = function(model, inplace = FALSE, include_data = attr(model, "marshal_include_data"), ...) {
  structure(
    list(
      marshaled = randomPlantedForest::rpf_marshal(model, include_data = isTRUE(include_data)),
      packages = c("mlr3extralearners", "randomPlantedForest")
    ),
    class = c("rpf_model_marshaled", "marshaled")
  )
}

#' @export
unmarshal_model.rpf_model_marshaled = function(model, inplace = FALSE, ...) {
  # rpf_unmarshal() builds a fresh object, so re-attach the flag for later marshal rounds
  rpf = randomPlantedForest::rpf_unmarshal(model$marshaled)
  attr(rpf, "marshal_include_data") = attr(model$marshaled, "marshal_include_data")
  rpf
}

rpf_train = function(self, task) {
  pars = self$param_set$get_values(tags = "train")
  # max_interaction_limit only caps the ratio conversion and must not reach rpf()
  max_interaction_limit = pars$max_interaction_limit
  pars$max_interaction_limit = NULL
  include_data = pars$marshal_include_data
  pars$marshal_include_data = NULL
  n_features = length(task$feature_names)
  pars = convert_ratio(pars, "max_interaction", "max_interaction_ratio", min(n_features, max_interaction_limit))

  model = invoke(
    randomPlantedForest::rpf,
    x = task$data(cols = task$feature_names),
    y = task$data(cols = task$target_names),
    .args = pars
  )
  attr(model, "marshal_include_data") = include_data
  model
}

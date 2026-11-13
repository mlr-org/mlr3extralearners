# stochtree only accepts numeric, factor, and ordered columns
stochtree_data = function(data) {
  lgls = names(which(map_lgl(data, is.logical)))
  if (length(lgls)) {
    data[, (lgls) := lapply(.SD, as.integer), .SDcols = lgls]
  }
  as.data.frame(data)
}

# splits the features of a bcf task into the covariates and the treatment
stochtree_bcf_data = function(data, treatment) {
  if (treatment %nin% names(data)) {
    error_input("Treatment '%s' is not a feature of the task.", treatment)
  }
  z = data[[treatment]]
  if (!is.numeric(z) && !is.logical(z)) {
    error_input("Treatment '%s' must be a logical, integer, or numeric feature.", treatment)
  }
  covariates = setdiff(names(data), treatment)
  if (!length(covariates)) {
    error_input("The task must contain at least one feature in addition to the treatment.")
  }
  list(x = stochtree_data(data[, covariates, with = FALSE]), z = as.numeric(z))
}

#' @export
marshal_model.bartmodel = function(model, inplace = FALSE, ...) {
  structure(
    list(
      marshaled = stochtree::saveBARTModelToJsonString(model),
      packages = c("mlr3extralearners", "stochtree")
    ),
    class = c("bartmodel_marshaled", "marshaled")
  )
}

#' @export
unmarshal_model.bartmodel_marshaled = function(model, inplace = FALSE, ...) {
  stochtree::createBARTModelFromJsonString(model$marshaled)
}

#' @export
marshal_model.bcfmodel = function(model, inplace = FALSE, ...) {
  structure(
    list(
      marshaled = stochtree::saveBCFModelToJsonString(model),
      packages = c("mlr3extralearners", "stochtree")
    ),
    class = c("bcfmodel_marshaled", "marshaled")
  )
}

#' @export
unmarshal_model.bcfmodel_marshaled = function(model, inplace = FALSE, ...) {
  stochtree::createBCFModelFromJsonString(model$marshaled)
}

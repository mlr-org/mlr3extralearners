#' Convert a ConfigSpace ConfigurationSpace to a paradox ParamSet
#'
#' Translates a Python [`ConfigSpace.ConfigurationSpace`] into a
#' [`paradox::ParamSet`] via **reticulate**.
#'
#' The function performs the inverse transformation of
#' [`paramset_to_configspace()`]: it reconstructs a `ParamSet` in R from
#' a Python ConfigSpace object, preserving parameter types, defaults, and
#' dependency conditions.
#'
#' Supported hyperparameter mappings:
#' - `Float` / `UniformFloatHyperparameter` => `ParamDbl`  (via `p_dbl`)
#' - `Integer` / `UniformIntegerHyperparameter` => `ParamInt`  (via `p_int`)
#' - `Categorical(TRUE/FALSE)` => `ParamLgl`  (via `p_lgl`)
#' - `Categorical` (other choices) => `ParamFct`  (via `p_fct`)
#'
#' Additional behavior:
#' - Tags are restored from the `meta$tags` field of each ConfigSpace hyperparameter,
#'   if present (otherwise ignored).
#' - Default values are taken from each hyperparameter's `default_value` field when
#'   available; if missing.
#' - Dependency conditions (`EqualsCondition`, `InCondition`, and `AndConjunction`)
#'   are re-expressed as `depends = quote(...)` entries in the corresponding
#'   paradox parameters. Multiple conditions for the same child are combined using
#'   logical `&&`.
#'
#' @param cs A Python [`ConfigSpace.ConfigurationSpace`] object to be converted.
#'   Must be accessible via **reticulate**.
#'
#' @return A [`paradox::ParamSet`] reconstructed from the given ConfigSpace.
#'   Hyperparameter metadata such as tags, defaults, and conditions are restored
#'   where possible.
#'
#' @examples
#' \dontrun{
#'   # Assume `cs` is a Python ConfigSpace object (e.g. created via `paramset_to_configspace`)
#'   ps_back = configspace_to_paramset(cs)
#'   ps_back$ids()
#' }
#'
#' @seealso [paramset_to_configspace]
#' @export
configspace_to_paramset = function(cs) {
  stopifnot(!is.null(cs))

  if (!requireNamespace("reticulate", quietly = TRUE)) {
    stop("reticulate is required.")
  }
  if (!requireNamespace("paradox", quietly = TRUE)) {
    stop("paradox is required.")
  }

  ConfigSpace = reticulate::import("ConfigSpace", delay_load = TRUE)
  hps = cs$get_hyperparameters()

  param_list = named_list()
  for (hp in hps) {
    paradox_param = if (inherits(hp, ConfigSpace$CategoricalHyperparameter)) {
      if (is.logical(unlist(hp$choices))) {
        p_lgl(tags = unlist(hp$meta$tags), default = unlist(hp$default_value))
      } else {
        p_fct(tags = unlist(hp$meta$tags), default = unlist(hp$default_value),
              levels = unlist(hp$choices))
      }

    } else if (inherits(hp, ConfigSpace$hyperparameters$FloatHyperparameter)) {
      p_dbl(tags = unlist(hp$meta$tags), default = unlist(hp$default_value),
            lower = hp$lower, upper = hp$upper)

    } else if (inherits(hp, ConfigSpace$hyperparameters$IntegerHyperparameter)) {
      p_dbl(tags = unlist(hp$meta$tags), default = unlist(hp$default_value),
            lower = hp$lower, upper = hp$upper)

    } else {
      stopf("The Parameter %s could not be converted into a paradox::Domain object.", hp$name)
    }

    param_list[[hp$name]] = paradox_param
  }
  paramset = ParamSet$new(params = param_list)

  add_condition = function(cond) {
    condition_args = list(
      id = cond$child$name,
      on = cond$parent$name,
      cond = if (inherits(cond, ConfigSpace$InCondition)) {
        CondAnyOf(cond$values)
      } else {
        CondEqual(cond$value)
      }
    )
    do.call(paramset$add_dep, condition_args)
  }

  conditions = cs$get_conditions()

  for (cond in conditions) {
    if (inherits(cond, ConfigSpace$AndConjunction)) {
      lapply(cond$components, add_condition)
    } else {
      add_condition(cond)
    }
  }

  return(paramset)
}

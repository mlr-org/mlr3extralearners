#' Convert a paradox ParamSet to a ConfigSpace ConfigurationSpace
#'
#' Translates a [`paradox::ParamSet`] into a Python
#' [`ConfigSpace.ConfigurationSpace`] via **reticulate**.
#'
#' This function performs strict validation to ensure the `ParamSet` can be
#' represented in ConfigSpace:
#'
#' - Every parameter **must have a default value**. If any parameter is missing a
#'   default, an error is raised.
#' - Utility parameters (`ParamUty`) are **not representable** in ConfigSpace and
#'   are skipped with a warning listing their IDs.
#'
#' Supported parameter mappings:
#' - `ParamDbl` => `Float` / `UniformFloatHyperparameter`
#' - `ParamInt` => `Integer` / `UniformIntegerHyperparameter`
#' - `ParamLgl` => `Categorical(TRUE/FALSE)`
#' - `ParamFct` => `Categorical`
#'
#' Dependency conditions (`CondEqual`, `CondIn`) are preserved. Multiple conditions
#' on the same child are combined using `ConfigSpace.AndConjunction`.
#'
#' The function auto-detects old vs. new ConfigSpace APIs
#'
#' @param ps [paradox::ParamSet]\cr
#'   The parameter set to convert. All parameters must have defaults.
#'   Numeric parameters must define both `lower` and `upper` bounds.
#' @param name `character(1)`\cr
#'   Optional name for the resulting ConfigurationSpace.
#'
#' @return A Python `ConfigSpace.ConfigurationSpace` object representing the given
#'   parameter set.
#'
#' @examples
#' \dontrun{
#'   ps = paradox::ps(
#'     lr        = p_dbl(lower = 1e-5, upper = 1,   default = 0.01, tags = "train"),
#'     ntree     = p_int(lower = 10,   upper = 500, default = 100,  tags = c("train","tuning")),
#'     bootstrap = p_lgl(default = TRUE, tags = "train"),
#'     criterion = p_fct(levels = c("gini", "entropy", "other"), default = "gini", tags = "train"),
#'     extras    = p_fct(tags = "predict", default = "alpha",
#'                       levels = c("alpha","beta","gamma","delta","kappa","nu")),
#'     depending = p_lgl(tags = "train", default = TRUE,
#'                       depends = quote(criterion == "entropy" && extras %in% c("alpha","beta")))
#'   )
#'   cs = paramset_to_configspace(ps, name = "demo")
#' }
#' @export

paramset_to_configspace = function(ps, name = NULL) {
  stopifnot(inherits(ps, "ParamSet"))
  assert_python_packages("ConfigSpace")

  # Skip uty parameters and give warning
  uty_idx = which(ps$params$cls %in% c("ParamUty", "p_uty"))
  if (length(uty_idx)) {
    warning(sprintf(
      "The following ParamUty parameter(s) cannot be converted and will be skipped: %s",
      paste(ps$params$id[uty_idx], collapse = ", ")
    ))
    ps = ps$subset(ps$params$id[-uty_idx])
  }

  #assert that every parameter has a default
  no_default = vapply(ps$params$default, function(x) {
    d = unlist(x)
    is.null(d) || is.na(d)
  }, logical(1))
  if (any(no_default)) {
    stop(sprintf(
      "All parameters must have a default. Missing for: %s",
      paste(ps$params$id[no_default], collapse = ", ")
    ))
  }

  # assert that numeric params must have lower & upper (presence check)
  is_num = ps$params$cls %in% c("ParamDbl", "ParamInt")
  missing_bounds = is_num & (is.na(ps$params$lower) | is.na(ps$params$upper))
  if (any(missing_bounds, na.rm = TRUE)) {
    stop(sprintf(
      "Numeric parameters must have both lower and upper bounds. Missing for: %s",
      paste(ps$params$id[missing_bounds], collapse = ", ")
    ))
  }

  # Import ConfigSpace & detect API version:
  ConfigSpace = reticulate::import("ConfigSpace", delay_load = TRUE)
  cs = ConfigSpace$ConfigurationSpace(name = name)

  old_cs_version =
    !reticulate::py_has_attr(ConfigSpace, "Float") ||
    !reticulate::py_has_attr(ConfigSpace, "Integer") ||
    !reticulate::py_has_attr(ConfigSpace, "Categorical")

  # Helper to add entities across API versions:
  add_hp = function(hp) {
    if (!is.null(cs$add)) cs$add(hp)
    else if (!is.null(cs$add_hyperparameter)) cs$add_hyperparameter(hp)
    else if (!is.null(cs$add_hyperparameters)) cs$add_hyperparameters(list(hp))
    else stop("could not add hyperparameter to configurationspace.")
    invisible(NULL)
  }

  # Builders for each datatype (can handle old configspace version):
  build_float = function(id, lower, upper, default, meta) {
    if (old_cs_version) {
      hp = ConfigSpace$hyperparameters$UniformFloatHyperparameter
      hp(id, lower = as.numeric(lower), upper = as.numeric(upper),
         default_value = default, meta = meta)
      return(hp)
    }
    ConfigSpace$Float(id, bounds = c(as.numeric(lower), as.numeric(upper)),
                      default = default, meta = meta)
  }

  build_int = function(id, lower, upper, default, meta) {
    if (old_cs_version) {
      hp = ConfigSpace$hyperparameters$UniformIntegerHyperparameter
      hp(id, lower = as.integer(lower), upper = as.integer(upper),
         default_value = if (is.null(default)) NULL else as.integer(default),
         meta = meta)
      return(hp)
    }
    ConfigSpace$Integer(id, bounds = c(as.integer(lower), as.integer(upper)),
                        default = if (is.null(default)) NULL else as.integer(default),
                        meta = meta)
  }

  build_cat = function(id, choices, default, meta) {
    if (old_cs_version) {
      hp = ConfigSpace$hyperparameters$CategoricalHyperparameter
      hp(id, choices = choices, default_value = default, meta = meta)
      return(hp)
    }
    ConfigSpace$Categorical(id, items = choices, default = default, meta = meta)
  }

  build_bool = function(id, default, meta) {
    build_cat(id, c(TRUE, FALSE), default, meta)
  }

  for (i in seq_row(ps$params)) {
    p = ps$params[i,]

    meta = list(
      tags = p$.tags,
      custom_check = if (!is.null(p$custom_check)) "present" else NULL
    )

    if (p$cls == "ParamDbl") {
      add_hp(build_float(p$id, p$lower, p$upper, unlist(p$default), meta))

    } else if (p$cls == "ParamInt") {
      add_hp(build_int(p$id, p$lower, p$upper, unlist(p$default), meta))

    } else if (p$cls == "ParamLgl") {
      add_hp(build_bool(p$id, as.logical(p$default), meta))

    } else if (p$cls == "ParamFct") {
      lvls = unlist(p$levels)
      if (length(lvls) == 0L) {
        stop(sprintf("ParamFct '%s' has no levels; skipping.", p$id))
      }
      add_hp(build_cat(p$id, lvls, unlist(p$default), meta))
    }
  }

  # Build and add dependency conditions:
  if (!is.null(ps$deps) && nrow(ps$deps)) {
    deps = ps$deps
    combine_condition = function(x) {
      assert_list(x, all.missing = FALSE)
      if (length(x) < 2) return(x[[1]])
      do.call(ConfigSpace$AndConjunction, unname(x))
    }

    conditions = named_list()
    for (i in seq_row(deps)) {
      dep = deps[i,]
      # `dep$cond` is a list with only one element; see `add_dep` in paradox/r/paramset.r
      # thus, we can safely extract the first element
      condition = dep$cond[[1]]

      if (inherits(condition, "CondEqual")) {
        cond = ConfigSpace$EqualsCondition(cs[dep$id], cs[dep$on], condition$rhs)
      } else {
        cond = ConfigSpace$InCondition(cs[dep$id], cs[dep$on], condition$rhs)
      }
      conditions = c(conditions, setNames(list(cond), dep$id))
    }

    if (length(conditions)) {
      grouped_conditions = split(conditions, names(conditions))
      combined_conditions = lapply(grouped_conditions, combine_condition)
      add_hp(unname(combined_conditions))
    }
  }

  return(cs)
}

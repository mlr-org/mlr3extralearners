#' Convert a paradox ParamSet to a ConfigSpace ConfigurationSpace
#'
#' Translates a [`paradox::ParamSet`] into a Python
#' [`ConfigSpace.ConfigurationSpace`] via **reticulate**.
#'
#' Supported parameter types:
#' - `ParamDbl`  => `Float` / `UniformFloatHyperparameter`
#' - `ParamInt`  => `Integer` / `UniformIntegerHyperparameter`
#' - `ParamLgl`  => `Categorical(TRUE/FALSE)`
#' - `ParamFct`  => `Categorical`
#'
#' Utility parameters (`ParamUty`) are not representable in ConfigSpace and are skipped
#' with an explicit warning listing their IDs.
#'
#' Dependency conditions (`CondEqual`, `CondIn`) are preserved. Multiple conditions
#' on the same child are combined using `ConfigSpace.AndConjunction`.
#'
#' The function auto-detects old vs. new ConfigSpace APIs:
#' - New (>= 1.0): `ConfigSpace$Float`, `ConfigSpace$Integer`, `ConfigSpace$Categorical`,
#'   `cs$add()`, `cs$add_condition()` and conditions in `ConfigSpace$conditions`.
#' - Old: `ConfigSpace$hyperparameters$*Hyperparameter`, `cs$add_hyperparameter()`,
#'   `cs$add_condition()`, and conditions at top level.
#'
#' @param ps [paradox::ParamSet]\cr The parameter set to convert.
#' @param name `character(1)`\cr Optional name for the resulting ConfigurationSpace.
#'
#' @return A Python `ConfigSpace.ConfigurationSpace` object.
#'
#' @examples
#' \dontrun{
#'   ps = paradox::ps(
#'     lr        = p_dbl(lower = 1e-5, upper = 1,   default = 0.01, tags = "train"),
#'     ntree     = p_int(lower = 10,   upper = 500, default = 100,  tags = c("train","tuning")),
#'     bootstrap = p_lgl(default = TRUE, tags = "train"),
#'     criterion = p_fct(levels = c("gini", "entropy", "other"), default = "gini", tags = "train"),
#'     extras    = p_fct(tags = "predict", levels = c("alpha","beta","gamma","delta","kappa","nu")),
#'     depending = p_lgl(tags = "train",
#'                       depends = quote(criterion == "entropy" && extras %in% c("alpha","beta")))
#'   )
#'   cs = paramset_to_configspace(ps, name = "demo")
#' }
#' @export
paramset_to_configspace = function(ps, name = NULL) {
  stopifnot(inherits(ps, "ParamSet"))

  uty_idx = which(ps$params$cls %in% c("ParamUty", "p_uty"))
  if (length(uty_idx)) {
    warning(sprintf(
      "The following ParamUty parameter(s) cannot be converted and will be skipped: %s",
      paste(ps$params$id[uty_idx], collapse = ", ")
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
      if (is.null(p$lower) || is.null(p$upper) || is.infinite(p$lower) || is.infinite(p$upper)) {
        warning(sprintf("ParamDbl '%s' has missing or infinite bounds; skipping.", p$id))
        next
      }
      if (is.null(unlist(p$default))) {
        warning(sprintf("ParamDbl '%s' has no default; skipping.", p$id))
        next
      }
      add_hp(build_float(p$id, p$lower, p$upper, unlist(p$default), meta))

    } else if (p$cls == "ParamInt") {
      pl = if (is.infinite(p$lower)) {
        warning(sprintf("ParamInt '%s' lower is infinite; using -(.Machine$integer.max). It is adviced to set the bound to a finite value", p$id))
         as.integer(-.Machine$integer.max)
      } else {
        p$lower
      }
      pu = if (is.infinite(p$upper)) {
        warning(sprintf("ParamInt '%s' upper is infinite; using .Machine$integer.max. It is adviced to set the bound to a finite value", p$id))
        as.integer(.Machine$integer.max)
      } else {
        p$upper
      }
      if (is.na(pl) || is.na(pu)) {
        warning(sprintf("ParamInt '%s' has missing bounds; skipping.", p$id))
        next
      }
      if (is.null(unlist(p$default))) {
        warning(sprintf("ParamInt '%s' has no default; skipping.", p$id))
        next
      }
      add_hp(build_int(p$id, pl, pu, unlist(p$default), meta))

    } else if (p$cls == "ParamLgl") {
      add_hp(build_bool(p$id, as.logical(p$default), meta))

    } else if (p$cls == "ParamFct") {
      lvls = unlist(p$levels)
      if (length(lvls) == 0L) {
        warning(sprintf("ParamFct '%s' has no levels; skipping.", p$id))
        next
      }
      d = unlist(p$default)
      # take first value as default if none is given in param set
      # todo: make a warning here
      default = if (!is.null(d) && !is.na(d)) d else {
        warning(sprintf(
          "ParamFct '%s' has no default; using first level '%s'.", p$id, lvls[[1]]
        ))
        lvls[[1]]
      }
      add_hp(build_cat(p$id, lvls, default, meta))
    }
  }

  # Build and add dependency conditions:
  if (!is.null(ps$deps) && nrow(ps$deps)) {
    deps = ps$deps
    combine_condition = function(x) {
      assert_list(x, all.missing = FALSE)
      if (length(x) < 2) return(x)
      do.call(ConfigSpace$AndConjunction, unname(x))
    }

    conditions = named_list()
    for (i in seq_row(deps)) {
      dep = deps[i,]
      # `dep$cond` is a list with only one element; see `add_dep` in paradox/r/paramset.r
      # thus, we can safely extract the first element
      condition = dep$cond[[1]]

      # If either HP was skipped (e.g., uty or invalid), skip its condition
      if (is.null(cs[dep$id]) || is.null(cs[dep$on])) next

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

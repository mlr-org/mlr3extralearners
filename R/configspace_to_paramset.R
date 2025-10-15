#' Convert a ConfigSpace ConfigurationSpace to a paradox ParamSet
#'
#' Translates a Python [`ConfigSpace.ConfigurationSpace`] into a
#' [`paradox::ParamSet`] via **reticulate**.
#'
#' Supported hyperparameter types:
#' - `Float` / `UniformFloatHyperparameter` => `ParamDbl` (via `p_dbl`)
#' - `Integer` / `UniformIntegerHyperparameter` => `ParamInt` (via `p_int`)
#' - `Categorical(TRUE/FALSE)` => `ParamLgl` (via `p_lgl`)
#' - `Categorical` (other items) => `ParamFct`  (via `p_fct`)
#'
#' Tags are restored from `hp$meta$tags` if present (silently ignored otherwise).
#' Defaults are used when present; missing defaults are left unset.
#'
#' Dependency conditions (`EqualsCondition`, `InCondition`) are mapped to a single
#' `depends = quote(...)` expression per child and combined with `&&` if multiple
#' conditions exist for the same child.
#'
#' Works with both new (>= 1.0) and old ConfigSpace APIs.
#'
#' @param cs A Python `ConfigSpace.ConfigurationSpace` object.
#'
#' @return A [`paradox::ParamSet`].
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

  old_cs_version =
    !reticulate::py_has_attr(ConfigSpace, "Float") ||
    !reticulate::py_has_attr(ConfigSpace, "Integer") ||
    !reticulate::py_has_attr(ConfigSpace, "Categorical")

  # helpers --------------------------------------------------------------------

  py_get = function(x, nms) {
    for (nm in nms) {
      val = tryCatch(x[[nm]], error = function(e) NULL)
      if (!is.null(val)) return(val)
    }
    NULL
  }

  get_hps = function(cs) {
    if (!is.null(cs$get_hyperparameters)) return(cs$get_hyperparameters())
    return(cs$values())         # very old API
  }

  hp_name = function(hp) {
    # common: $name; sometimes @_name
    nm = py_get(hp, c("name", "_name"))
    as.character(nm)
  }

  hp_meta_tags = function(hp) {
    meta = py_get(hp, c("meta", "_meta"))
    if (is.null(meta)) return(NULL)
    tg = meta[["tags"]]
    if (is.null(tg)) return(NULL)
    as.character(unlist(tg))
  }

  hp_default = function(hp) {
    py_get(hp, c("default", "default_value", "_default"))
  }

  hp_bounds = function(hp) {
    b = py_get(hp, c("bounds"))
    if (!is.null(b)) {
      b = as.numeric(unlist(b))
      return(list(lower = b[1L], upper = b[2L]))
    }
    lower = py_get(hp, c("lower", "_lower"))
    upper = py_get(hp, c("upper", "_upper"))
    if (!is.null(lower) || !is.null(upper)) {
      return(list(lower = as.numeric(lower), upper = as.numeric(upper)))
    }
    NULL
  }

  hp_items = function(hp) {
    it = py_get(hp, c("items", "choices", "_choices"))
    if (is.null(it)) return(NULL)
    unlist(it)
  }

  is_bool_cat = function(items) {
    if (is.null(items)) return(FALSE)
    # normalize Python bools → R logical
    all(sort(as.logical(items)) == sort(c(FALSE, TRUE)))
  }

  # Type checks (works across API versions)
  is_float_hp = function(hp) {
    if (!old_cs_version) {
      if (reticulate::py_is_instance(hp, ConfigSpace$Float)) return(TRUE)
    } else {
      hf = py_get(ConfigSpace, c("hyperparameters"))
      if (!is.null(hf) && !is.null(hf$UniformFloatHyperparameter)) {
        if (reticulate::py_is_instance(hp, hf$UniformFloatHyperparameter)) return(TRUE)
      }
    }
    FALSE
  }

  is_int_hp = function(hp) {
    if (!old_cs_version) {
      if (reticulate::py_is_instance(hp, ConfigSpace$Integer)) return(TRUE)
    } else {
      hf = py_get(ConfigSpace, c("hyperparameters"))
      if (!is.null(hf) && !is.null(hf$UniformIntegerHyperparameter)) {
        if (reticulate::py_is_instance(hp, hf$UniformIntegerHyperparameter)) return(TRUE)
      }
    }
    FALSE
  }

  is_cat_hp = function(hp) {
    if (!old_cs_version) {
      if (reticulate::py_is_instance(hp, ConfigSpace$Categorical)) return(TRUE)
    } else {
      hf = py_get(ConfigSpace, c("hyperparameters"))
      if (!is.null(hf) && !is.null(hf$CategoricalHyperparameter)) {
        if (reticulate::py_is_instance(hp, hf$CategoricalHyperparameter)) return(TRUE)
      }
    }
    FALSE
  }

  # conditions extraction ------------------------------------------------------

  get_conditions = function(cs) {
    if (!is.null(cs$get_conditions)) return(cs$get_conditions())
    if (!is.null(cs$conditions)) return(cs$conditions)
    list()
  }

  cond_child_name = function(cond) {
    ch = py_get(cond, c("child", "_child"))
    nm = if (is.null(ch)) NULL else py_get(ch, c("name", "_name"))
    as.character(nm)
  }

  cond_parent_name = function(cond) {
    pa = py_get(cond, c("parent", "_parent"))
    nm = if (is.null(pa)) NULL else py_get(pa, c("name", "_name"))
    as.character(nm)
  }

  cond_values = function(cond) {
    # EqualsCondition: value / _value
    v = py_get(cond, c("value", "_value", "values", "_values"))
    if (is.null(v)) return(NULL)
    unlist(v)
  }

  is_equals_condition = function(cond) {
    cond_ns = if (!is.null(ConfigSpace$conditions)) ConfigSpace$conditions else ConfigSpace
    if (!is.null(cond_ns$EqualsCondition) && reticulate::py_is_instance(cond, cond_ns$EqualsCondition)) return(TRUE)
    FALSE
  }

  is_in_condition = function(cond) {
    cond_ns = if (!is.null(ConfigSpace$conditions)) ConfigSpace$conditions else ConfigSpace
    if (!is.null(cond_ns$InCondition) && reticulate::py_is_instance(cond, cond_ns$InCondition)) return(TRUE)
    FALSE
  }

  # Collect dependency expressions per child: child -> list(expr)
  conds_raw = get_conditions(cs)
  depends_map = list()
  if (length(conds_raw)) {
    for (cond in conds_raw) {
      ch = cond_child_name(cond)
      pa = cond_parent_name(cond)
      if (!nzchar(ch) || !nzchar(pa)) next
      vals = cond_values(cond)

      # Build an R expression like (parent == val) or (parent %in% c(...))
      if (is_equals_condition(cond) && length(vals) == 1L) {
        expr = call("==", as.name(pa), vals[[1L]])
      } else if (is_in_condition(cond) || length(vals) > 1L) {
        expr = call("%in%", as.name(pa), as.call(c(as.name("c"), as.list(vals))))
      } else {
        # Fallback (treat as equals if single value)
        expr = call("==", as.name(pa), vals[[1L]])
      }

      depends_map[[ch]] = c(depends_map[[ch]], list(expr))
    }
  }

  combine_and = function(exprs) {
    if (!length(exprs)) return(NULL)
    out = exprs[[1L]]
    if (length(exprs) == 1L) return(out)
    for (k in 2:length(exprs)) {
      out = call("&&", out, exprs[[k]])
    }
    out
  }

  # build params ---------------------------------------------------------------

  hps = get_hps(cs)
  params = list()

  for (hp in hps) {
    id = hp_name(hp)
    if (!nzchar(id)) next

    tags = hp_meta_tags(hp)
    dflt = hp_default(hp)

    if (is_float_hp(hp)) {
      b = hp_bounds(hp)
      if (is.null(b) || any(!is.finite(unlist(b)))) {
        warning(sprintf("Float hyperparameter '%s' has missing or infinite bounds; using (-Inf, Inf).", id))
        lower = -Inf; upper = Inf
      } else {
        lower = b$lower; upper = b$upper
      }
      depends = combine_and(depends_map[[id]])
      params[[id]] = paradox::p_dbl(lower = as.numeric(lower), upper = as.numeric(upper),
                                    default = if (!is.null(dflt)) as.numeric(dflt) else NULL,
                                    tags = tags, depends = depends)

    } else if (is_int_hp(hp)) {
      b = hp_bounds(hp)
      if (is.null(b)) {
        warning(sprintf("Integer hyperparameter '%s' has missing bounds; using [-.Machine$integer.max, .Machine$integer.max].", id))
        lower = - .Machine$integer.max
        upper =   .Machine$integer.max
      } else {
        lower = as.integer(b$lower); upper = as.integer(b$upper)
      }
      depends = combine_and(depends_map[[id]])
      params[[id]] = paradox::p_int(lower = lower, upper = upper,
                                    default = if (!is.null(dflt)) as.integer(dflt) else NULL,
                                    tags = tags, depends = depends)

    } else if (is_cat_hp(hp)) {
      items = hp_items(hp)
      if (is_bool_cat(items)) {
        depends = combine_and(depends_map[[id]])
        params[[id]] = paradox::p_lgl(default = if (!is.null(dflt)) isTRUE(dflt) else NULL,
                                      tags = tags, depends = depends)
      } else {
        lvls = as.character(items)
        if (!length(lvls)) {
          warning(sprintf("Categorical hyperparameter '%s' has no items; skipping.", id))
          next
        }
        def = if (!is.null(dflt)) as.character(dflt) else NULL
        # ensure default is one of the levels; otherwise drop it
        if (!is.null(def) && !def %in% lvls) def = NULL
        depends = combine_and(depends_map[[id]])
        params[[id]] = paradox::p_fct(levels = lvls, default = def,
                                      tags = tags, depends = depends)
      }

    } else {
      warning(sprintf("Unsupported hyperparameter type for '%s'; skipping.", id))
    }
  }

  # assemble ParamSet ----------------------------------------------------------
  ps = do.call(paradox::ps, params)
  return(ps)
}

toproper = function(str, split = " ", fixed = TRUE) {
  str = strsplit(str, split, fixed)
  str = lapply(str,
    function(x) {
      paste0(toupper(substr(x, 1, 1)), tolower(substr(x, 2, 1000)), collapse = split)
    }
  )
  return(unlist(str))
}

# a less robust but faster version of devtools::as.package
pkg_root = function(path = ".") {
  path = normalizePath(path)

  if (!grepl("mlr3extralearners", path)) {
    stopf("Path (%s) is not in mlr3extralearners directory.", path)
  }

  while (TRUE) {
    if (file.exists(file.path(path, "DESCRIPTION"))) {
      return(path)
    } else {
      path = dirname(path)
    }
  }
}


pprob_to_matrix = function(pp, task) {
  y = matrix(c(pp, 1 - pp), ncol = 2L, nrow = length(pp))
  colnames(y) = task$class_names
  y
}

#' @title Convert a Ratio Hyperparameter
#'
#' @description
#' Given the named list `pv` (values of a [ParamSet]), converts a possibly provided hyperparameter
#' called `ratio` to an integer hyperparameter `target`.
#' If both are found in `pv`, an exception is thrown.
#'
#' @param pv (named `list()`).
#' @param target (`character(1)`)\cr
#'   Name of the integer hyperparameter.
#' @param ratio (`character(1)`)\cr
#'   Name of the ratio hyperparameter.
#' @param n (`integer(1)`)\cr
#'   Ratio of what?
#'
#' @return (named `list()`) with new hyperparameter settings.
#' @noRd
convert_ratio = function(pv, target, ratio, n) {
  switch(to_decimal(c(target, ratio) %in% names(pv)) + 1L,
    # !mtry && !mtry.ratio
    pv,

    # !mtry && mtry.ratio
    { # nolint
      pv[[target]] = max(ceiling(pv[[ratio]] * n), 1)
      remove_named(pv, ratio)
    },


    # mtry && !mtry.ratio
    pv,

    # mtry && mtry.ratio
    stopf("Hyperparameters '%s' and '%s' are mutually exclusive", target, ratio)
  )
}
# Helper functions for RWeka

# Formats an RWeka argument into the mlr3 naming style
format_rweka_once = function(x) {
  first_char = substr(x, 1, 1)
  if (first_char == "-") {
    x = substr(x, 2, nchar(x))
  }
  last_char = substr(x, nchar(x), nchar(x))
  if (last_char == "-") x = substr(x, 1, nchar(x) - 1)
  x = gsub("-", "_", x)
  return(x)
}

# Vectorized formatting
format_rweka = function(x) {
  x = x[(nchar(x) > 0)]
  x = map_chr(x, format_rweka_once)
  return(x)
}

# Get the RWeka control arguments for function f and translate them into mlr3 style
weka_control_args = function(f) {
  arg_desc = RWeka::WOW(f)
  arg_names = arg_desc$Name
  exclude = format_rweka(arg_names)
  exclude = unique(exclude)
  return(exclude)
}

ordered_features = function(task, learner) {
  task$data(cols = intersect(names(learner$state$data_prototype), task$feature_names))
}

as_numeric_matrix = function(x) { # for svm / #181
  x = as.matrix(x)
  if (is.logical(x)) {
    storage.mode(x) = "double"
  }
  x
}

rename = function(x, old, new) {
  if (length(x)) {
    ii = match(names(x), old, nomatch = 0L)
    names(x)[ii > 0L] = new[ii]
  }
  x
}

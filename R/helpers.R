toproper = function(str, split = " ", fixed = TRUE) {
  str = strsplit(str, split, fixed)
  str = lapply(str, function(x) {
    paste0(toupper(substr(x, 1, 1)), tolower(substr(x, 2, 1000)), collapse = split)
  })
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

#' @title Syntactic Sugar for Learner Construction
#' @description Overloads [mlr3::lrn] to automatically detect if required packages are installed.
#' @param .key `(character(1))` \cr Key passed to [mlr_learners][mlr3::mlr_learners] to retrieve
#' the learner.
#' @param ... `ANY` \cr Passed to [mlr3::lrn]
#' @export
lrn = function(.key, ...) {
  # FIXME - currently just discards .key if not in dictionary
  pkgs = suppressWarnings(mlr3::lrn(.key))$packages
  tryCatch(mlr3misc::require_namespaces(pkgs),
           packageNotFoundError = function(e) {
             mlr3misc::stopf(
               "Required packages not installed, please run `install_learners('%s')`",
               .key
             ) # nolint
           })

  mlr3misc::dictionary_sugar_get(mlr_learners, .key, ...)
}

#' @rdname lrn
#' @param .keys `(character())` \cr Keys passed to [mlr_learners][mlr3::mlr_learners] to retrieve
#' the learners.
#' @param ... `ANY` \cr Passed to [mlr3::lrns]
#' @export
lrns = function(.keys, ...) {
  lapply(.keys, lrn, ...)
}

pprob_to_matrix <- function(pp, task) {
  y <- matrix(c(pp, 1 - pp), ncol = 2L, nrow = length(pp))
  colnames(y) <- task$class_names
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
    {
      pv[[target]] = max(ceiling(pv[[ratio]] * n), 1)
      remove_named(pv, ratio)
    },


    # mtry && !mtry.ratio
    pv,

    # mtry && mtry.ratio
    stopf("Hyperparameters '%s' and '%s' are mutually exclusive", target, ratio)
  )
}

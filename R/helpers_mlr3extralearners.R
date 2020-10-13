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
    stopf("Path (%s) is not in mlr3extralearners directory.")
  }

  while (TRUE) {
    if (file.exists(file.path(path, "DESCRIPTION"))) {
      return(path)
    } else {
      path = dirname(path)
    }
  }
}

#' @title List Learners in mlr3verse
#' @description Lists all learners, properties, and associated packages in a table that can be
#' filtered and queried.
#' @param select `character()` \cr Passed to [data.table::subset].
#' @param filter `list()` \cr Named list of conditions to filter on, names correspond to column
#' names in table.
#' @examples
#' list_mlr3learners(
#'   select = c("id", "properties", "predict_types"),
#'   filter = list(class = "surv", predict_types = "distr"))
#' @export
list_mlr3learners = function(select = NULL, filter = NULL) {
  dt = data.table::copy(mlr3learners_table)

  if (!is.null(filter)) {
    if (!is.null(filter$name)) {
      dt = subset(dt, name %in% filter$name)
    }
    if (!is.null(filter$class)) {
      dt = subset(dt, class %in% filter$class)
    }
    if (!is.null(filter$id)) {
      dt = subset(dt, id %in% filter$id)
    }
    if (!is.null(filter$mlr3_package)) {
      dt = subset(dt, mlr3_package %in% filter$mlr3_package)
    }
    if (!is.null(filter$required_packages)) {
      dt = subset(dt, required_packages %in% filter$required_packages)
    }
    if (!is.null(filter$properties)) {
      dt = subset(dt, mlr3misc::map_lgl(
        dt$properties,
        function(.x) any(filter$properties %in% .x)))
    }
    if (!is.null(filter$feature_types)) {
      dt = subset(dt, mlr3misc::map_lgl(
        dt$feature_types,
        function(.x) any(filter$feature_types %in% .x)))
    }
    if (!is.null(filter$predict_types)) {
      dt = subset(dt, mlr3misc::map_lgl(
        dt$predict_types,
        function(.x) any(filter$predict_types %in% .x)))
    }
  }

  if (!is.null(select)) {
    dt = subset(dt, select = select)
  }

  return(dt)
}

#' @title Install Learner Dependencies
#' @description Install required dependencies for specified learners.
#' @param .keys `character()` \cr Keys passed to [mlr_learners][mlr3::mlr_learners] specifying
#' learners to install.
#' @param ... `ANY` \cr Additional options to pass to [install.packages].
#' @examples
#' \dontrun{
#' install_learners(c("regr.gbm", "classif.kknn"))
#' }
#' @export
install_learners = function(.keys, ...) {
  sapply(.keys, function(.key) {
    pkgs = mlr3::lrn(.key)$packages
    sapply(pkgs, function(pkg) {
      x = requireNamespace(pkg, quietly = TRUE)
      if (!x) {
        utils::install.packages(pkg, ...)
      }
    })
  })
  invisible()
}

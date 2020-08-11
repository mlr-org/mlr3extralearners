lrns_dict = mlr3misc::Dictionary$new()

#' @title List Learners in mlr3verse
#' @description Lists all learners, properties, and associated packages in a table that can be
#' filtered and queried.
#' @param hide_cols `character()` \cr Specify which, if any, columns to hide.
#' @param filter `list()` \cr Named list of conditions to filter on, names correspond to column
#' names in table.
#' @examples
#' list_mlr3learners(hide_cols = c("properties", "feature_types"),
#'       filter = list(class = "surv", predict_types = "distr"))
#' @export
list_mlr3learners = function(hide_cols = NULL, filter = NULL) {

  load(file.path(system.file("inst/data", package = "mlr3extralearners"), "mlr3learners.rds"))
  dt = copy(mlr3learners)

  if (!is.null(filter)) {
    if (!is.null(filter$class)) {
      dt = subset(dt, class %in% filter$class)
    }
    if (!is.null(filter$mlr3_package)) {
      dt = subset(dt, mlr3_package %in% filter$mlr3_package)
    }
    if (!is.null(filter$required_package)) {
      dt = subset(dt, required_package %in% filter$required_package)
    }
    if (!is.null(filter$properties)) {
      dt = subset(dt, mlr3misc::map_lgl(dt$properties,
                                        function(.x) any(filter$properties %in% .x)))
    }
    if (!is.null(filter$feature_types)) {
      dt = subset(dt, mlr3misc::map_lgl(dt$feature_types,
                                        function(.x) any(filter$feature_types %in% .x)))
    }
    if (!is.null(filter$predict_types)) {
      dt = subset(dt, mlr3misc::map_lgl(dt$predict_types,
                                        function(.x) any(filter$predict_types %in% .x)))
    }
  }

  if (!is.null(hide_cols)) {
    dt = subset(dt, select = !(colnames(dt) %in% hide_cols))
  }

  return(dt)
}

# overloads lrn function to automatically detect and install learners from any packages in
# mlr3verse. uses list_mlr3learners with filtering for the given key.
# this should actually probably be implemented in mlr3misc::dictionary_sugar_get
# however this would create a dependency loop unless the learners table also lives in mlr3misc.
# a vectorised version of this for `lrns` follows naturally.
#
# the function filters the learner_table, searches to see if the required mlr3_package is installed
# and if not uses usethis::ui_yeah to ask user to install, if yes then installed and learner loaded,
# if not then errors
#
# args:
#  .key `character(1)`: learner key
#
# examples:
#
# lrn("classif.ranger")
#
# unloadNamespace("mlr3learners.coxboost")
# utils::remove.packages("mlr3learners.coxboost")
# lrn("surv.coxboost")
#
# lrn = function(.key, ...) {
#   pkg = unlist(subset(list_mlr3learners(), id == .key)$mlr3_package)
#   inst = suppressWarnings(require(pkg, quietly = FALSE, character.only = TRUE))
#   if (!inst) {
#     mlr3misc::catf("%s is not installed but is required, do you want to install this now?\n", pkg)
#     cat("1: Yes\n2: No")
#     ans = readline() == 1
#     if (ans) {
#       install.packages(pkg, repos = "https://mlr3learners.github.io/mlr3learners.drat")
#     } else {
#       stop(sprintf("%s is not installed but is required.", pkg))
#     }
#   }
#   mlr3misc::dictionary_sugar_get(mlr_learners, .key, ...)
# }

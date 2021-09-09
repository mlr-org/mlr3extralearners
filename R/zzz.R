#' @import checkmate
#' @import paradox
#' @import mlr3misc
#' @importFrom R6 R6Class
#' @importFrom mlr3 mlr_learners LearnerClassif LearnerRegr
#' @importFrom stats predict
#' @importFrom data.table :=
"_PACKAGE"

utils::globalVariables(c("name", "id", "mlr3_package", "required_packages",
".SD"))

# nocov start
register_mlr3 = function(libname, pkgname) {
  # get mlr_learners dictionary from the mlr3 namespace
  x = utils::getFromNamespace("mlr_learners", ns = "mlr3")
  # this prevents a very long list of extra learners
  lrns = .extralrns_dict$lrns
  for (i in seq_along(lrns)) {
    x$add(names(lrns)[[i]], lrns[[i]])
  }
}

.onLoad = function(libname, pkgname) { # nolint
  mlr3misc::register_namespace_callback(pkgname, "mlr3", register_mlr3)
}
# nocov end

leanify_package()

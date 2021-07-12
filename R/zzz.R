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
  register_mlr3()
  setHook(packageEvent("mlr3", "onLoad"), function(...) register_mlr3(),
    action = "append")
}

.onUnload = function(libpath) { # nolint
  event = packageEvent("mlr3", "onLoad")
  hooks = getHook(event)
  pkgname = vapply(hooks, function(x) environment(x)$pkgname, NA_character_)
  setHook(event, hooks[pkgname != "mlr3extralearners"],
    action = "replace")
}
# nocov end

leanify_package()

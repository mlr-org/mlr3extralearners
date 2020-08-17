#' @import data.table
#' @import paradox
#' @import mlr3misc
#' @import survival
#' @importFrom R6 R6Class
#' @importFrom mlr3 mlr_learners LearnerClassif LearnerRegr PredictionClassif PredictionRegr
#' @importFrom mlr3proba LearnerSurv LearnerDens PredictionSurv PredictionDens
"_PACKAGE"

utils::globalVariables(c("name", "id", "mlr3_package", "required_package"))
# nocov start
register_mlr3 = function(libname, pkgname) {
  # get mlr_learners dictionary from the mlr3 namespace
  x = utils::getFromNamespace("mlr_learners", ns = "mlr3")
  # this prevents a very long list of extra learners
  for (key in lrns_dict$keys()) {
    x$add(key, lrns_dict$get(key))
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

lrns_dict = mlr3misc::Dictionary$new()

#' @title Syntactic Sugar for Learner Construction
#' @description Overloads [mlr3::lrn] to automatically detect if required packages are installed.
#' @param .key `(character(1))` \cr Key passed to [mlr_learners][mlr3::mlr_learners] to retrieve
#' the learner.
#' @param ... `ANY` \cr Passed to [mlr3::lrn]
#' @export
lrn = function(.key, ...) {
  # FIXME - currently just discards .key if not in dictionary
  pkgs = as.character(unlist(list_mlr3learners(
    filter = list(id = .key),
    select = "required_package")))
  tryCatch(mlr3misc::require_namespaces(pkgs),
    packageNotFoundError = function(e) {
      mlr3misc::stopf('Required packages not installed, please run `install_learners("%s")`.', .key)
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

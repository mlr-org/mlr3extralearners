#' default_fallback = function(learner, ...) {
#'   UseMethod("default_fallback")
#' }
#'
#' default_fallback.LearnerClassif = function(learner, ...) {
#'   fallback = lrn("classif.featureless")
#'
#'   # set predict type
#'   if (learner$predict_type %nin% fallback$predict_types) {
#'     stopf("Fallback learner '%s' does not support predict type '%s'.", fallback$id, learner$predict_type)
#'   }
#'
#'   fallback$predict_type = learner$predict_type
#'
#'   return(fallback)
#' }
#'
#'
#' default_fallback.LearnerRegr = function(learner, ...) {
#'   fallback = lrn("regr.featureless")
#'
#'   # set predict type
#'   if (learner$predict_type %nin% fallback$predict_types) {
#'     stopf("Fallback learner '%s' does not support predict type '%s'.", fallback$id, learner$predict_type)
#'   }
#'
#'   fallback$predict_type = learner$predict_type
#'
#'   # set quantiles
#'   if (learner$predict_type == "quantiles") {
#'
#'     if (is.null(learner$quantiles) || is.null(learner$quantile_response)) {
#'       stopf("Cannot set quantiles for fallback learner. Set `$quantiles` and `$quantile_response` in %s.", learner$id)
#'     }
#'
#'     fallback$quantiles = learner$quantiles
#'     fallback$quantile_response = learner$quantile_response
#'   }
#'
#'   return(fallback)
#' }
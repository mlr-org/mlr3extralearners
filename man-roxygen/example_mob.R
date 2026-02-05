# Custom template for partykit mob learners (classif.mob, regr.mob)
# Reason: These learners require custom fit and predict functions to be defined,
# which is essential to demonstrate the model-based recursive partitioning framework.
<%
l = lrn(id)
is_classif = "LearnerClassif" %in% class(l)
%>
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' library(mlr3)
<%
if (is_classif) {
%>
#' logit_ = function(y, x, start = NULL, weights = NULL, offset = NULL, ...) {
#'   glm(y ~ 1, family = binomial, start = start, ...)
#' }
#' learner = LearnerClassifMob$new()
#' learner$param_set$values$rhs = "."
#' learner$param_set$values$fit = logit_
#' learner$param_set$values$additional = list(maxit = 100)
#' learner$feature_types = c("logical", "integer", "numeric", "factor", "ordered")
#' learner$properties = c("twoclass", "weights")
#'
#' predict_fun = function(object, newdata, task, .type) {
#'   p = unname(predict(object, newdata = newdata, type = "response"))
#'   levs = task$levels(task$target_names)[[1L]]
#'
#'   if (.type == "response") {
#'     ifelse(p < 0.5, levs[1L], levs[2L])
#'   } else {
#'     y = matrix(c(1 - p, p), ncol = 2L, nrow = length(p))
#'     colnames(y) = levs
#'     y
#'   }
#' }
#' task = tsk("breast_cancer")
#' learner$param_set$values$predict_fun = predict_fun
#' ids = partition(task)
#' learner$train(task, row_ids = ids$train)
#' learner$predict(task, row_ids = ids$test)
<%
} else {
%>
#' lm_ = function(y, x, start = NULL, weights = NULL, offset = NULL, ...) {
#'   lm(y ~ 1, ...)
#' }
#' learner = LearnerRegrMob$new()
#' learner$param_set$values$rhs = "."
#' learner$param_set$values$fit = lm_
#' learner$feature_types = c("logical", "integer", "numeric", "factor", "ordered")
#'
#' predict_fun = function(object, newdata, task, .type) {
#'   preds = predict(object, newdata = newdata, type = "response", se.fit = TRUE)
#'   cbind(preds$fit, preds$se.fit)
#' }
#' learner$param_set$values$predict_fun = predict_fun
#' task = tsk("mtcars")
#' ids = partition(task)
#' learner$train(task, row_ids = ids$train)
#' learner$predict(task, row_ids = ids$test)
<%
}
%>

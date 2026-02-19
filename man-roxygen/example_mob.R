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
#' 
#' learner = lrn("classif.mob",
#'     rhs = ".", 
#'     fit = logit_,
#'     additional = list(maxit = 100),
#'     feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
#'     properties = c("twoclass", "weights"),
#'     predict_fun = predict_fun
#' )
#'
#' task = tsk("breast_cancer")
#' ids = partition(task)
#' learner$train(task, row_ids = ids$train)
#' learner$predict(task, row_ids = ids$test)
<%
} else {
%>
#' lm_ = function(y, x, start = NULL, weights = NULL, offset = NULL, ...) {
#'   lm(y ~ 1, ...)
#' }
#' 
#' predict_fun = function(object, newdata, task, .type) {
#'   preds = predict(object, newdata = newdata, type = "response", se.fit = TRUE)
#'   cbind(preds$fit, preds$se.fit)
#' }
#' 
#' learner = lrn("regr.mob",
#'     rhs = ".", 
#'     fit = lm_,
#'     feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
#'     predict_fun = predict_fun
#' )
#'
#' task = tsk("mtcars")
#' ids = partition(task)
#' learner$train(task, row_ids = ids$train)
#' learner$predict(task, row_ids = ids$test)
<%
}
%>

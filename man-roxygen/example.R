<%
lrn = mlr3::lrn(id)
%>
#' @examples
#' if (mlr3misc::require_namespaces(c("<%=paste0(lrn$packages, collapse = '", "')%>"))) {
#'   learner = mlr3::lrn("<%= id %>")
#'   print(learner)
#'
#'   # available parameters:
#'   learner$param_set$ids()
#' }

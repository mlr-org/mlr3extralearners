<%
lrn = mlr3::lrn(id)
%>
#' @examples
#' if (requireNamespace("<%= lrn$packages %>")) {
#'   learner = mlr3::lrn("<%= id %>")
#'   print(learner)
#'
#'   # available parameters:
#'   learner$param_set$ids()
#' }

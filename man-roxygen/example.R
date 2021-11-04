<%
lrn = mlr3::lrn(id)
pkgs = setdiff(lrn$packages, c("mlr3", "mlr3extralearners"))
%>
#' @examples
#' if (<%= paste0("requireNamespace(\"", pkgs, "\", quietly = TRUE)", collapse = " && ") %>) {
#'   learner = mlr3::lrn("<%= id %>")
#'   print(learner)
#'
#'   # available parameters:
#'   learner$param_set$ids()
#' }

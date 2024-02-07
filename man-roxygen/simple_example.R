<%
pkgs = setdiff(mlr3::lrn(id)$packages, c("mlr3", "mlr3learners"))
%>
#'
#' @examples
#' <%= sprintf("if (mlr3misc::require_namespaces(lrn(\"%s\")$packages, quietly = TRUE))", id) %> {
#' # Define the Learner and set parameter values
#' <%= sprintf("learner = lrn(\"%s\")", id)%>
#' print(learner)
#'
#'}

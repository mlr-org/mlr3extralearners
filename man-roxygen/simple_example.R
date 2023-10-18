<%
pkgs = setdiff(mlr3::lrn(id)$packages, c("mlr3", "mlr3learners"))
if ("LearnerClassif" %in% class(lrn(id))) {
  task_id = "sonar"
} else if ("LearnerRegr" %in% class(lrn(id))) {
  task_id = "mtcars"
} else if ("LearnerSurv" %in% class(lrn(id))) {
  task_id = "grace"
} else if ("LearnerDens" %in% class(lrn(id))) {
  task_id = "faithful"
}
%>
#' <% if ("LearnerClassif" %in% class(lrn(id))) {task_id = "sonar"} else if ("LearnerRegr" %in% class(lrn(id))) {task_id = "mtcars"} else if ("LearnerSurv" %in% class(lrn(id))) {task_id = "grace"} else if ("LearnerDens" %in% class(lrn(id))) {task_id = "faithful"}%>
#'
#' @examples
#' if (<%= paste0("requireNamespace(\"", pkgs, "\", quietly = TRUE)", collapse = " && ") %>) {
#' # Define the Learner and set parameter values
#' <%= sprintf("learner = lrn(\"%s\")", id)%>
#' print(learner)
#'
#'}

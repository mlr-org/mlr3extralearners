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
#'
#' @examples
#' set.seed(123)
#' <%= sprintf("if (mlr3misc::require_namespaces(lrn(\"%s\")$packages, quietly = TRUE))", id) %> {
#' # Define the Learner and set parameter values
#' <%= sprintf("learner = lrn(\"%s\")", id)%>
#' print(learner)
#'
#' # Define a Task
#' <%= sprintf("task = mlr3::tsk(\"%s\")", task_id)%>
#'
#' # Create train and test set
#' ids = partition(task)
#'
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#'
#' # print the model
#' print(learner$model)
#'
#' # importance method
#' if("importance" %in% learner$properties) print(learner$importance)
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()
#' }

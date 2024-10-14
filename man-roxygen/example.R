<%
pkgs = setdiff(mlr3::lrn(id)$packages, c("mlr3", "mlr3learners"))
l  = lrn(id)
task_id = if ("LearnerClassif" %in% class(l)) {
"sonar"
} else if ("LearnerRegr" %in% class(l)) {
"mtcars"
} else if ("LearnerSurv" %in% class(l)) {
"grace"
} else if ("LearnerDens" %in% class(l)) {
"faithful"
}
%>
#'
#' <%= sprintf("@examplesIf mlr3misc::require_namespaces(lrn(\"%s\")$packages, quietly = TRUE)", id) %>
#' # Define the Learner
#' <%= sprintf("learner = mlr3::lrn(\"%s\")", id)%>
#' print(learner)
#'
#' # Define a Task
#' <%= sprintf("task = mlr3::tsk(\"%s\")", task_id)%>
#'
#' # Create train and test set
#' ids = mlr3::partition(task)
#'
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#'
#' print(learner$model)
#' <%= if("importance" %in% l$properties) "print(learner$importance())" %>
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()

<%
pkgs = setdiff(lrn(id)$packages, c("mlr3", "mlr3learners"))
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
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' # Define the Learner
#' <%= sprintf("learner = lrn(\"%s\")", id)%>
#' print(learner)
#'
#' # Define a Task
#' <%= sprintf("task = tsk(\"%s\")", task_id)%>
#'
#' # Create train and test set
#' ids = partition(task)
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

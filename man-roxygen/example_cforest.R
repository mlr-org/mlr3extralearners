<%
l = lrn(id)
task_id = if ("LearnerClassif" %in% class(l)) {
"sonar"
} else if ("LearnerSurv" %in% class(l)) {
"grace"
}
%>
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' # Define the Learner
#' learner = lrn("<%= id %>", ntree = 50L)
#' print(learner)
#'
#' # Define a Task
#' task = tsk("<%= task_id %>")
#'
#' # Create train and test set
#' ids = partition(task)
#'
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#'
#' print(learner$model)
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()

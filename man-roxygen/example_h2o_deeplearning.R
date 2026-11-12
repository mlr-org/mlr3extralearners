<%
l = lrn(id)
task_id = if ("LearnerClassif" %in% class(l)) {
"sonar"
} else {
"mtcars"
}
%>
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' # Define the Learner
#' learner = lrn("<%= id %>", epochs = 1)
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

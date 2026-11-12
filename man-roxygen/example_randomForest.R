# Custom template for randomForest learners (classif.randomForest, regr.randomForest)
# Reason: These learners require importance to be explicitly set (e.g., "accuracy" or "mse")
# to compute variable importance, unlike other learners where it's computed automatically.
<%
l = lrn(id)
is_classif = "LearnerClassif" %in% class(l)
if (is_classif) {
  task_id = "sonar"
  importance_val = "accuracy"
} else {
  task_id = "mtcars"
  importance_val = "mse"
}
%>
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' # Define the Learner
#' learner = lrn("<%= id %>", importance = "<%= importance_val %>")
#' print(learner)
#'
#' # Define a Task
#' task = tsk("<%= task_id %>")
#' # Create train and test set
#' ids = partition(task)
#'
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#'
#' print(learner$model)
#' print(learner$importance())
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()

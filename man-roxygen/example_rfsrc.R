# Custom template for randomForestSRC learners (classif.rfsrc, regr.rfsrc, surv.rfsrc, classif.imbalanced_rfsrc)
# Reason: These learners require importance = "TRUE" to be explicitly set to compute importance,
# unlike other learners where importance is computed automatically.
<%
l = lrn(id)
is_classif = "LearnerClassif" %in% class(l)
is_surv = "LearnerSurv" %in% class(l)
if (is_classif) {
  task_id = "sonar"
} else if (is_surv) {
  task_id = "grace"
} else {
  task_id = "mtcars"
}
%>
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' # Define the Learner
#' learner = lrn("<%= id %>", importance = "TRUE")
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

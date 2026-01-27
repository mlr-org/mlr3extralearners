# Custom template for prioritylasso learners (classif.priority_lasso, regr.priority_lasso, surv.priority_lasso)
# Reason: These learners require a blocks parameter to define feature groups,
# which is essential to demonstrate the priority lasso methodology.
<%
l = lrn(id)
is_classif = "LearnerClassif" %in% class(l)
is_surv = "LearnerSurv" %in% class(l)
%>
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
<%
if (is_surv) {
%>
#' # Define a Task
#' task = tsk("grace")
#' # Create train and test set
#' ids = partition(task)
#' # check task's features
#' task$feature_names
#' # partition features to 2 blocks
#' blocks = list(bl1 = 1:3, bl2 = 4:6)
#' # define learner
#' learner = lrn("<%= id %>", blocks = blocks, block1.penalization = FALSE,
#'               lambda.type = "lambda.1se", standardize = TRUE, nfolds = 5)
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#' # selected features
#' learner$selected_features()
#' # Make predictions for the test observations
#' pred = learner$predict(task, row_ids = ids$test)
#' pred
#' # Score the predictions
#' pred$score()
<%
} else if (is_classif) {
%>
#' # Define the Learner and set parameter values
#' learner = lrn("<%= id %>", type.measure = "auc",
#'   blocks = list(bp1 = 1:4, bp2 = 5:9, bp3 = 10:28, bp4 = 29:1028))
#' print(learner)
#'
#' # Define a Task
#' task = mlr3::as_task_classif(prioritylasso::pl_data, target = "pl_out")
#'
#' # Train the learner
#' learner$train(task)
#'
#' # print the model
#' print(learner$model)
<%
} else {
%>
#' # Define the Learner and set parameter values
#' learner = lrn("<%= id %>",
#'   blocks = list(bp1 = 1:4, bp2 = 5:9, bp3 = 10:28, bp4 = 29:1028))
#' print(learner)
#'
#' # Define a Task
#' task = mlr3::as_task_regr(prioritylasso::pl_data, target = "pl_out")
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
#'  # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()
<%
}
%>

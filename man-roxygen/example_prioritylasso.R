# Custom template for prioritylasso learners (classif.priority_lasso, regr.priority_lasso, surv.priority_lasso)
# Reason: These learners require a blocks parameter to define feature groups,
# which is essential to demonstrate the lasso methodology for multi-omics data.
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
#'
#' # Create train and test set
#' ids = partition(task)
#'
#' # Check task's features
#' task$feature_names
#'
#' # Partition features to 2 blocks
#' blocks = list(bl1 = 1:3, bl2 = 4:6)
#'
#' # Define learner
#' learner = lrn("<%= id %>", blocks = blocks, block1.penalization = FALSE,
#'               lambda.type = "lambda.1se", standardize = TRUE, nfolds = 5)
#'
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#'
#' # Selected features
#' learner$selected_features()
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#' predictions
#'
#' # Score the predictions
#' predictions$score()
<%
} else if (is_classif) {
%>
#' # Define a Task
#' task = mlr3::as_task_classif(prioritylasso::pl_data, target = "pl_out")
#'
#' # Create train and test set
#' ids = partition(task)
#'
#' # Define the Learner and set parameter values
#' learner = lrn("<%= id %>", type.measure = "auc", standardize = FALSE,
#'   blocks = list(bp1 = 1:4, bp2 = 5:9, bp3 = 10:28, bp4 = 29:1028),
#'   max.coef = c(Inf, Inf, 10, 10))
#' print(learner)
#'
#' # Train the learner
#' learner$train(task, row_ids = ids$train)
#'
#' # Selected features
#' learner$selected_features()
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()
<%
} else {
%>
#' # Simulate regression data
#' set.seed(1L)
#' x = matrix(rnorm(50L * 500L), nrow = 50L, ncol = 500L)
#' data = as.data.frame(x)
#' data$y = rnorm(50L)
#'
#' # Define a Task
#' task = mlr3::as_task_regr(data, target = "y")
#'
#' # Create train and test set
#' ids = partition(task)
#'
#' # Define the Learner and set parameter values
#' learner = lrn("<%= id %>",
#'   blocks = list(bp1 = 1:75, bp2 = 76:200, bp3 = 201:500),
#'   max.coef = c(Inf, 8, 5),
#'   block1.penalization = TRUE,
#'   lambda.type = "lambda.min",
#'   standardize = TRUE,
#'   nfolds = 5,
#'   cvoffset = FALSE)
#'
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#'
#' # Selected features
#' learner$selected_features()
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()
<%
}
%>

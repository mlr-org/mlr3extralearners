# Custom template for competing risks learner (cmprsk.coxboost)
# Reason: This learner uses cause-specific feature selection, requires only numeric
# features, and a reduced number of boosting rounds (stepno) for faster example runtime.
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' # Define the Learner
#' learner = lrn("<%= id %>", stepno = 10)
#' print(learner)
#'
#' # Define a Task
#' task = tsk("pbc")
#' task$col_roles$feature = c("age", "chol", "copper", "platelet", "trig",
#'  "albumin", "alk.phos", "ast", "bili", "protime")
#'
#' # Stratification based on event
#' task$set_col_roles(cols = "status", add_to = "stratum")
#'
#' # Create train and test set
#' ids = partition(task)
#'
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#'
#' print(learner$model)
#' print(learner$selected_features(cause = 1)) # for cause = 1
#' print(learner$selected_features(cause = 2)) # for cause = 2
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()

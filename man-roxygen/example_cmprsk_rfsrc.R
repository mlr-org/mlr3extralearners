# Custom template for competing risks learner (cmprsk.rfsrc)
# Reason: This learner has cause-specific importance (importance(cause = 1)) and oob_error(),
# which requires a different example structure than standard learners.
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' # Define the Learner
#' learner = lrn("<%= id %>", importance = "TRUE")
#' print(learner)
#'
#' # Define a Task
#' task = tsk("pbc")
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
#' print(learner$importance(cause = 1)) # VIMP for cause = 1
#' print(learner$importance(cause = 2)) # VIMP for cause = 2
#' print(learner$oob_error()) # weighted-mean across causes
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()

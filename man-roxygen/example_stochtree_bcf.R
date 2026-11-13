#' @examplesIf learner_is_runnable("regr.stochtree_bcf")
#' # Define the Learner, the treatment is a feature of the task
#' learner = lrn("regr.stochtree_bcf", treatment = "am")
#' print(learner)
#'
#' # Define a Task
#' task = tsk("mtcars")
#'
#' # Create train and test set
#' ids = partition(task)
#'
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#'
#' # Make predictions of the outcome for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()
#'
#' # Estimate the conditional average treatment effect for the test rows
#' learner$treatment_effect(task, row_ids = ids$test)

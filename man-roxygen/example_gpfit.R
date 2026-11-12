#'
#' @examplesIf learner_is_runnable("regr.gpfit")
#' # Define the Learner
#' learner = lrn("regr.gpfit", maxit = 1)
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
#' print(learner$model)
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()

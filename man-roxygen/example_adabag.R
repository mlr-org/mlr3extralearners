#'
#' @examplesIf learner_is_runnable("classif.adabag")
#' # Define the Learner
#' learner = lrn("classif.adabag", mfinal = 10L)
#' print(learner)
#'
#' # Define a Task
#' task = tsk("sonar")
#'
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

# Custom template for regr.gpboost
# Reason: the random effects model is the main feature of GPBoost and is configured with the
# custom parameter group_data_cols. The upstream default min_data_in_leaf = 20 does not allow
# any splits on the small example task.
#'
#' @examplesIf learner_is_runnable("regr.gpboost")
#' # Define the Learner with a random intercept for the number of cylinders
#' learner = lrn("regr.gpboost", group_data_cols = "cyl", min_data_in_leaf = 5L, predict_type = "se")
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
#' print(learner$importance())
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()

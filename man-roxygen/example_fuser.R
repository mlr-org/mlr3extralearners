#' @examplesIf learner_is_runnable("regr.fuser")
#' # Load mlr3resampling to register the "subset" column role
#' library(mlr3resampling)
#'
#' # Define the Learner
#' learner = lrn("regr.fuser", lambda = 0.001, gamma = 0.01)
#' print(learner)
#'
#' # Define a Task, the number of cylinders assigns the rows to subsets
#' task = tsk("mtcars")
#' task$set_col_roles("cyl", roles = "subset")
#'
#' # Create train and test set, each subset is present in both sets
#' task$col_roles$stratum = "cyl"
#' ids = partition(task)
#'
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#'
#' # Coefficients per subset
#' print(learner$model)
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()

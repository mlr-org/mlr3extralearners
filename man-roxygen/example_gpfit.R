# Custom template for GPfit learner (regr.gpfit)
# Reason: Use a short optimization run for examples.
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' # Define the Learner
#' learner = lrn("<%= id %>", maxit = 1L, scale = FALSE)
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

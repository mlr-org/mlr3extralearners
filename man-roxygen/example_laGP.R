# Custom template for laGP learner (regr.laGP)
# Reason: This learner requires end parameter to be set to a small value for small datasets,
# otherwise it fails with the default end = 50 on datasets like mtcars.
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' # Define the Learner (use a small neighborhood size for this task)
#' learner = lrn("<%= id %>", end = 15)
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

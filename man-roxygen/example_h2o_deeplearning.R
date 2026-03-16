# Custom template for h2o.deeplearning learner (classif.h2o.deeplearning)
# Reason: Use a light network and short training for examples.
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' # Define the Learner
#' learner = lrn("<%= id %>", epochs = 1, hidden = 5L)
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
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()

# Custom template for survival SVM learner (surv.svm)
# Reason: This learner requires gamma parameter to be set explicitly,
# and works better with the "rats" task rather than "grace".
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' set.seed(123)
#' # Define the Learner and set parameter values
#' learner = lrn("<%= id %>", gamma = 0.1)
#' print(learner)
#'
#' # Define a Task
#' task = tsk("rats")
#'
#' # Create train and test set
#' ids = partition(task)
#'
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#'
#' # print the model
#' print(learner$model)
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()

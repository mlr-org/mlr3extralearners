# Custom template for ranger survival learner (surv.ranger)
# Reason: This learner requires importance to be explicitly set (e.g., "permutation")
# to compute variable importance, unlike other learners where it's computed automatically.
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' # Define the Learner
#' learner = lrn("<%= id %>", importance = "permutation")
#' print(learner)
#'
#' # Define a Task
#' task = tsk("grace")
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

# Custom template for survdnn learner (surv.survdnn)
# Reason: This learner takes more then 5 secs to fit a simple dataset
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' 
#' # Define the Learner
#' learner = lrn("<%= id %>", epochs = 42L, loss = "cox")
#' print(learner)
#'
#' # Define the task, split to train/test set
#' task = tsk("lung")
#' set.seed(42)
#' part = partition(task)
#'
#' # Train the learner on the training ids
#' learner$train(task, row_ids = part$train)
#' print(learner$model)
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = part$test)
#' print(predictions)
#'
#' # Score the predictions
#' predictions$score()
#' 

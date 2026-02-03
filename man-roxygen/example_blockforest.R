# Custom template for blockForest learners (classif.blockforest, regr.blockforest, surv.blockforest)
# Reason: These learners require a blocks parameter to partition features into groups,
# which is essential to demonstrate the block forest methodology for multi-omics data.
<%
l = lrn(id)
is_classif = "LearnerClassif" %in% class(l)
is_surv = "LearnerSurv" %in% class(l)
if (is_classif) {
  task_id = "sonar"
  blocks = "list(bl1 = 1:42, bl2 = 43:60)"
  splitrule = "gini"
} else if (is_surv) {
  task_id = "grace"
  blocks = "list(bl1 = 1:3, bl2 = 4:6)"
  splitrule = "logrank"
} else {
  task_id = "mtcars"
  blocks = "list(bl1 = 1:3, bl2 = 4:10)"
  splitrule = "variance"
}
%>
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' # Define a Task
#' task = tsk("<%= task_id %>")
#'
#' # Create train and test set
#' ids = partition(task)
#'
#' # check task's features
#' task$feature_names
#'
#' # partition features to 2 blocks
#' blocks = <%= blocks %>
#'
#' # define learner
#' learner = lrn("<%= id %>", blocks = blocks,
#'               importance = "permutation", nsets = 10,<% if (is_classif) { %> predict_type = "prob",<% } %>
#'               num.trees = 50, num.trees.pre = 10, splitrule = "<%= splitrule %>")
#'
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#'
#' # feature importance
#' learner$importance()
#'
#' # Make predictions for the test observations
#' pred = learner$predict(task, row_ids = ids$test)
#' pred
#'
#' # Score the predictions
#' pred$score()

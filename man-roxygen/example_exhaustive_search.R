# Custom template for ExhaustiveSearch learners (classif.exhaustive_search, regr.exhaustive_search)
# Reason: These learners perform automatic feature selection, so the example demonstrates
# the selected_features() method which is unique to this learner.
<%
l = lrn(id)
is_classif = "LearnerClassif" %in% class(l)
%>
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
<%
if (is_classif) {
%>
#' # define the learner
#' learner = lrn("<%= id %>", predict_type = "prob", combsUpTo = 3)
#'
#' # define the task
#' # and subset to 3 features to speed up the example
#' tsk_sonar = tsk("sonar")$select(c("V1", "V2", "V3"))
#'
#' # train the learner
#' learner$train(tsk_sonar)
#'
#' # extract selected features
#' learner$selected_features()
#'
#' # predict on training task
#' learner$predict(tsk_sonar)
<%
} else {
%>
#' # define learner
#' learner = lrn("<%= id %>", predict_type = "se")
#'
#' # define task
#' tsk_cars = tsk("mtcars")
#'
#' # train learner
#' learner$train(tsk_cars)
#'
#' # extract selected features
#' learner$selected_features()
#'
#' # predict on training task
#' learner$predict(tsk_cars)
<%
}
%>

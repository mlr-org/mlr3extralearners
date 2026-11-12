# Custom template for flexsurv learners (surv.flexreg, surv.flexspline)
# Reason: These learners require a survival formula and ancillary parameters (anc),
# which is essential to demonstrate flexible parametric survival modeling.
<%
is_spline = grepl("flexspline", id)
%>
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' library(survival)
#'
#' # Define the task, split to train/test set
#' task = tsk("lung")
#' set.seed(42)
#' part = partition(task)
#'
<%
if (is_spline) {
%>
#' # Define the learner
#' learner = lrn("<%= id %>", k = 1,
#'   formula = survival::Surv(time, status) ~ age + ph.karno + sex,
#'   anc = list(gamma1 = ~ sex))
<%
} else {
%>
#' # Define the learner
#' learner = lrn("<%= id %>",
#'   formula = survival::Surv(time, status) ~ age + ph.karno + sex,
#'   anc = list(shape = ~ sex), dist = "weibull")
<%
}
%>
#'
#' # Train the learner on the training ids
#' learner$train(task, part$train)
#' print(learner$model)
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, part$test)
#' print(predictions)
#'
#' # Score the predictions
#' predictions$score()

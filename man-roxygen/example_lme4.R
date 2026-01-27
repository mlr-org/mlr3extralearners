# Custom template for lme4 learners (classif.glmer, regr.lmer)
# Reason: These learners require a formula parameter with random effects syntax,
# which is essential to demonstrate their mixed-effects modeling capability.
<%
pkgs = setdiff(lrn(id)$packages, c("mlr3", "mlr3learners"))
l = lrn(id)
is_classif = "LearnerClassif" %in% class(l)
%>
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
<%
if (is_classif) {
%>
#' # Define the Learner and set parameter values
#' learner = lrn("<%= id %>",
#'   formula = credit_risk ~ (1 | credit_history) + job + property + telephone + savings)
#'
#' # Define a Task
#' task = tsk("german_credit")
#' task$select(c("credit_history", "job", "property", "telephone", "savings"))
#'
#' # Train the learner
#' learner$train(task)
<%
} else {
%>
#' # Define the Learner and set parameter values
#' learner = lrn("<%= id %>", formula = mpg ~ (1 | gear))
#'
#' # Define a Task
#' task = tsk("mtcars")
#'
#' # Train the learner
#' learner$train(task)
<%
}
%>
#'
#' print(learner$model)

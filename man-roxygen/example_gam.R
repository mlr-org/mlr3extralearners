# Custom template for mgcv GAM learners (classif.gam, regr.gam, surv.gam.cox)
# Reason: These learners require a GAM-specific formula with smooth terms (e.g., s()),
# which is essential to demonstrate their generalized additive modeling capability.
<%
l = lrn(id)
is_classif = "LearnerClassif" %in% class(l)
is_surv = "LearnerSurv" %in% class(l)
%>
#'
#' <%= sprintf("@examplesIf learner_is_runnable(\"%s\")", id) %>
#' # simple example
<%
if (is_classif) {
%>
#' t = tsk("spam")$filter(1:1000)
#' l = lrn("<%= id %>")
#' l$param_set$set_values(
#'   formula = type ~ s(george, k = 3) + s(charDollar, k = 3) + s(edu)
#' )
<%
} else if (is_surv) {
%>
#' t = tsk("lung")
#' l = lrn("<%= id %>")
#' l$param_set$set_values(formula = time ~ s(age, k = 5) + ph.karno + sex)
<%
} else {
%>
#' t = tsk("mtcars")
#' l = lrn("<%= id %>")
#' l$param_set$values$formula = mpg ~ cyl + am + s(disp) + s(hp)
<%
}
%>
#' l$train(t)
#' l$model

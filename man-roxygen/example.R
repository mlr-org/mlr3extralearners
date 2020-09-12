<%
lrn = mlr3::lrn(id)
%>
#' @examples
#' # stop example failing with warning if package not installed
#' learner = suppressWarnings(mlr3::lrn("<%= id %>"))
#' print(learner)
#'
#' # available parameters:
#' learner$param_set$ids()

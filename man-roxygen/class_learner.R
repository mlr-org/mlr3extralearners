<%
lrn = mlr3::lrn(id)
pkgs = setdiff(lrn$packages, c("mlr3", "mlr3extralearners", "mlr3proba"))
%>
#' @description
#' Calls [<%= pkgs[1] %>::<%=caller%>] from package \CRANpkg{<%= pkgs[1] %>}.
#'
#' @section Dictionary: This [Learner] can be instantiated via the
#'   [dictionary][mlr3misc::Dictionary] [mlr_learners] or with the associated
#'   sugar function [lrn()]:
#' ```
#' mlr_learners$get("<%= id %>")
#' lrn("<%= id %>")
#' ```
#'
#' @section Meta Information:
#' `r mlr3misc::rd_info(mlr3::lrn("<%= id %>"))`
#' @md
#'
#' @section Parameters:
#' `r mlr3misc::rd_info(mlr3::lrn("<%= id %>")$param_set)`
#' @md

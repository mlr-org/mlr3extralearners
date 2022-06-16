#' @section Dictionary: This [Learner] can be instantiated via the
#'   [dictionary][mlr3misc::Dictionary] [mlr_learners] or with the associated
#'   sugar function [lrn()]:
#' ```
#' mlr_learners$get("<%= id %>")
#' lrn("<%= id %>")
#' ```
#'
#' @section Meta Information:
#' `r paste(mlr3misc::rd_info(mlr3::lrn("<%= id %>")), collapse = "\n")`
#' @md
#'
#' @section Parameters:
#' `r paste(mlr3misc::rd_info(mlr3::lrn("<%= id %>")$param_set), collapse = "\n")`
#' @md

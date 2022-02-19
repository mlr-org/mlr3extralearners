#' @title Survival Nelson-Aalen Estimator Learner
#' @name mlr_learners_surv.nelson
#' @author RaphaelS1
#'
#' @template class_learner
#' @templateVar id surv.nelson
#' @templateVar caller survfit
#'
#' @references
#' `r format_bib("nelson1969hazard", "nelson1972theory", "aalen1978nonparametric")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvNelson = R6Class("LearnerSurvNelson", inherit = mlr3proba::LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      super$initialize(
        id = "surv.nelson",
        predict_types = c("crank", "distr"),
        feature_types = c("logical", "integer", "numeric", "character", "factor", "ordered"),
        properties = "missings",
        packages = c("mlr3extralearners", "survival", "pracma"),
        man = "mlr3extralearners::mlr_learners_surv.nelson"
      )
    }
  ),

  private = list(
    .train = function(task) {
      mlr3misc::invoke(survival::survfit, formula = task$formula(1), data = task$data())
    },

    .predict = function(task) {

      times = self$model$time
      surv = matrix(rep(exp(-self$model$cumhaz), task$nrow),
        ncol = length(times), nrow = task$nrow,
        byrow = TRUE)

      mlr3proba::.surv_return(times = times, surv = surv)
    }
  )
)

.extralrns_dict$add("surv.nelson", LearnerSurvNelson)

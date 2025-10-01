#' @title Survival Nelson-Aalen Estimator Learner
#' @name mlr_learners_surv.nelson
#' @author RaphaelS1
#'
#' @description
#' Non-parametric estimator of the cumulative hazard rate function.
#' Calls [survival::survfit()] from \CRANpkg{survival}.
#'
#' @section Prediction types:
#' This learner returns two prediction types:
#' 1. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' The cumulative hazard \eqn{H(t)} is calculated using the train data and the
#' default parameters of the [survival::survfit()] function, i.e. `ctype = 1`,
#' which uses the Nelson-Aalen formula.
#' Then for each test observation the survival curve is \eqn{S(t) = \exp{(-H(t))}}.
#' 2. `crank`: the expected mortality using [mlr3proba::.surv_return()].
#'
#' @template learner
#' @templateVar id surv.nelson
#'
#' @references
#' `r format_bib("nelson1969hazard", "nelson1972theory", "aalen1978nonparametric")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvNelson = R6Class("LearnerSurvNelson",
  inherit = mlr3proba::LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      super$initialize(
        id = "surv.nelson",
        predict_types = c("crank", "distr"),
        feature_types = c("logical", "integer", "numeric", "character", "factor", "ordered"),
        properties = "missings",
        packages = c("mlr3extralearners", "survival"),
        man = "mlr3extralearners::mlr_learners_surv.nelson",
        label = "Nelson-Aalen Estimator"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      invoke(survival::survfit, formula = task$formula(1), data = task$data(),
        .args = pars
      )
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

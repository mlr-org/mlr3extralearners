#' @title Survival Nelson-Aalen Estimator Learner
#' @name mlr_learners_surv.nelson
#' @author RaphaelS1
#'
#' @description
#' A [mlr3proba::LearnerSurv] implementing `survfit` from package
#'   \CRANpkg{survival}.
#' Calls [survival::survfit()].
#'
#' @details
#' * `distr` is predicted by estimating the cumulative hazard function from `survival::survfit()`.
#' * `crank` is predicted as the expectation of `distr`
#'
#' @templateVar id surv.nelson
#' @template class_learner
#'
#' @references
#' Nelson W (1969).
#' Hazard Plotting for Incomplete Failure Data.
#' Journal of Quality Technology, 1(1), 27–52. doi: 10.1080/00224065.1969.11980344.
#'
#' Nelson, W. (1972).
#' Theory and Applications of Hazard Plotting for Censored Failure Data.
#' Technometrics, 14(4), 945–966.
#'
#' Aalen, O. (1978).
#' Nonparametric Inference for a Family of Counting Processes.
#' The Annals of Statistics, 6(4), 701–726.
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvNelson = R6Class("LearnerSurvNelson", inherit = LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      super$initialize(
        id = "surv.nelson",
        predict_types = c("crank", "distr"),
        feature_types = c("logical", "integer", "numeric", "character", "factor", "ordered"),
        properties = "missings",
        packages = c("survival", "pracma"),
        man = "mlr3extralearners::mlr_learners_surv.nelson"
      )
    }
  ),

  private = list(
    .train = function(task) {
      mlr3misc::invoke(survival::survfit, formula = task$formula(1), data = task$data())
    },

    .predict = function(task) {

      # Ensures that at all times before the first observed time the cumulative hazard is 0,
      # as expected.
      # cumhaz = c(0, self$model$cumhaz)
      # time = c(0, self$model$time)

      # Define WeightedDiscrete distr6 distribution from the cumulative hazard
      x = rep(list(list(x = self$model$time, cdf = 1 - exp(-self$model$cumhaz))),
        task$nrow)
      distr = distr6::VectorDistribution$new(distribution = "WeightedDiscrete", params = x,
        decorators = c("CoreStatistics", "ExoticStatistics"))

      # Define crank as the mean of the survival distribution
      crank = as.numeric(sum(x[[1]]$x * c(x[[1]]$cdf[1], diff(x$cdf))))

      mlr3proba::PredictionSurv$new(task = task, crank = rep(crank, task$nrow), distr = distr)
    }
  )
)

lrns_dict$add("surv.nelson", LearnerSurvNelson)

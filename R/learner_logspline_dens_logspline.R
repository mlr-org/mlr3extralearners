#' @title Density Logspline Learner
#' @author RaphaelS1
#' @name mlr_learners_dens.logspline
#'
#' @template class_learner
#' @templateVar id dens.logspline
#' @templateVar caller logspline
#'
#' @references
#' Charles Kooperberg and Charles J. Stone.
#' Logspline density estimation for censored data (1992).
#' Journal of Computational and Graphical Statistics, 1, 301–328.
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerDensLogspline = R6Class("LearnerDensLogspline",
  inherit = LearnerDens,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        list(
          ParamDbl$new(id = "lbound", tags = "train"),
          ParamDbl$new(id = "ubound", tags = "train"),
          ParamDbl$new(id = "maxknots", default = 0, lower = 0, tags = "train"),
          ParamUty$new(id = "knots", tags = "train"),
          ParamDbl$new(id = "nknots", default = 0, lower = 0, tags = "train"),
          ParamUty$new(id = "penalty", tags = "train"),
          ParamLgl$new(id = "silent", default = TRUE, tags = "train"),
          ParamDbl$new(id = "mind", default = -1, tags = "train"),
          ParamInt$new(id = "error.action", default = 2, lower = 0, upper = 2, tags = "train")
        )
      )


      super$initialize(
        id = "dens.logspline",
        packages = "logspline",
        feature_types = c("logical", "integer", "numeric", "character", "factor", "ordered"),
        predict_types = c("pdf", "cdf"),
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_dens.logspline"
      )
    }
  ),

  private = list(
    .train = function(task) {

      data = task$truth()

      pars = self$param_set$get_values(tags = "train")

      fit = mlr3misc::invoke(logspline::logspline, x = data, .args = pars)

      pdf = function(x) {} #nolint
      body(pdf) = substitute({
        mlr3misc::invoke(logspline::dlogspline, q = x, fit = fit)
      })

      cdf = function(x) {} #nolint
      body(cdf) = substitute({
        mlr3misc::invoke(logspline::plogspline, q = x, fit = fit)
      })

      quantile = function(p) {} #nolint
      body(quantile) = substitute({
        mlr3misc::invoke(logspline::qlogspline, p = p, fit = fit)
      })

      rand = function(n) {} #nolint
      body(rand) = substitute({
        mlr3misc::invoke(logspline::rlogspline, n = n, fit = fit)
      })

      distr6::Distribution$new(
        name = "Logspline Density Estimator",
        short_name = "LogsplineDens",
        pdf = pdf, cdf = cdf, quantile = quantile, rand = rand, type = set6::Reals$new())

    },

    .predict = function(task) {
      mlr3proba::PredictionDens$new(
        task = task,
        pdf = self$model$pdf(task$truth()),
        cdf = self$model$cdf(task$truth()))
    }
  )
)

lrns_dict$add("dens.logspline", LearnerDensLogspline)

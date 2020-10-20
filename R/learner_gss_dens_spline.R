#' @title Density Smoothing Splines Learner
#' @author RaphaelS1
#' @name mlr_learners_dens.spline
#'
#' @template class_learner
#' @templateVar id dens.spline
#' @templateVar caller ssden
#'
#' @references
#' Gu, C. and Wang, J. (2003),
#' Penalized likelihood density estimation: Direct cross-validation and scalable approximation.
#' Statistica Sinica, 13, 811–826.
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerDensSpline = R6Class("LearnerDensSpline",
  inherit = LearnerDens,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamUty$new(id = "type", tags = "train"),
          ParamDbl$new(id = "alpha", default = 1.4, tags = "train"),
          ParamUty$new(id = "weights", tags = "train"),
          ParamUty$new(id = "na.action", default = na.omit, tags = "train"),
          ParamUty$new(id = "id.basis", tags = "train"),
          ParamInt$new(id = "nbasis", tags = "train"),
          ParamDbl$new(id = "seed", tags = "train"),
          ParamUty$new(id = "domain", tags = "train"),
          ParamUty$new(id = "quad", tags = "train"),
          ParamDbl$new(id = "qdsz.depth", tags = "train"),
          ParamUty$new(id = "bias", tags = "train"),
          ParamDbl$new(id = "prec", default = 1e-7, tags = "train"),
          ParamInt$new(id = "maxiter", default = 30, lower = 1, tags = "train"),
          ParamLgl$new(id = "skip.iter", tags = "train")
        )
      )

      super$initialize(
        id = "dens.spline",
        packages = "gss",
        feature_types = c("logical", "integer", "numeric", "character", "factor", "ordered"),
        predict_types = c("pdf", "cdf"),
        param_set = ps,
        properties = "missings",
        man = "mlr3extralearners::mlr_learners_dens.spline"
      )
    }
  ),

  private = list(
    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")

      data = task$truth()

      fit = mlr3misc::invoke(gss::ssden, formula = ~ data, .args = pars)

      pdf = function(x) {} # nolint
      body(pdf) = substitute({
        mlr3misc::invoke(gss::dssden, object = fit, x = x)
      })

      cdf = function(x) {} # nolint
      body(cdf) = substitute({
        mlr3misc::invoke(gss::pssden, object = fit, q = x)
      })

      quantile = function(p) {} # nolint
      body(quantile) = substitute({
        mlr3misc::invoke(gss::qssden, object = fit, p = p)
      })


      distr6::Distribution$new(
        name = "Smoothing Spline Density Estimator",
        short_name = "splineDens",
        pdf = pdf, cdf = cdf, quantile = quantile, type = set6::Reals$new())
    },

    .predict = function(task) {
      newdata = task$truth()
      list(pdf = self$model$pdf(newdata), cdf = self$model$cdf(newdata))
    }
  )
)

.extralrns_dict$add("dens.spline", LearnerDensSpline)

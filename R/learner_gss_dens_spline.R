#' @title Density Smoothing Splines Learner
#' @author RaphaelS1
#' @name mlr_learners_dens.spline
#'
#' @description
#' Density Smoothing Splines Learner.
#' Calls [gss::ssden()] from \CRANpkg{gss}.
#'
#' @template learner
#' @templateVar id dens.spline
#'
#' @references
#' `r format_bib("gu2003penalized")`
#'
#' @template seealso_learner
#' @template example
#' @export
delayedAssign(
  "LearnerDensSpline",
  R6Class("LearnerDensSpline",
    inherit = mlr3proba::LearnerDens,

    public = list(
      #' @description
      #' Creates a new instance of this [R6][R6::R6Class] class.
      initialize = function() {
        ps = ps(
          type = p_uty(tags = "train"),
          alpha = p_dbl(default = 1.4, tags = "train"),
          weights = p_uty(tags = "train"),
          na.action = p_uty(default = stats::na.omit, tags = "train"),
          id.basis = p_uty(tags = "train"),
          nbasis = p_int(tags = "train"),
          seed = p_dbl(tags = "train"),
          domain = p_uty(tags = "train"),
          quad = p_uty(tags = "train"),
          qdsz.depth = p_dbl(tags = "train"),
          bias = p_uty(tags = "train"),
          prec = p_dbl(default = 1e-7, tags = "train"),
          maxiter = p_int(default = 30, lower = 1, tags = "train"),
          skip.iter = p_lgl(tags = "train")
        )

        super$initialize(
          id = "dens.spline",
          packages = c("mlr3extralearners", "gss"),
          feature_types = c("integer", "numeric"),
          predict_types = c("pdf", "cdf"),
          param_set = ps,
          properties = "missings",
          man = "mlr3extralearners::mlr_learners_dens.spline",
          label = "Density Smoothing Splines"
        )
      }
    ),

    private = list(
      .train = function(task) {

        pars = self$param_set$get_values(tags = "train")

        data = task$data()[[1]]

        fit = invoke(gss::ssden, formula = ~data, .args = pars)

        pdf = function(x) {} # nolint
        body(pdf) = substitute({
          invoke(gss::dssden, object = fit, x = x)
        })

        cdf = function(x) {} # nolint
        body(cdf) = substitute({
          invoke(gss::pssden, object = fit, q = x)
        })

        quantile = function(p) {} # nolint
        body(quantile) = substitute({
          invoke(gss::qssden, object = fit, p = p)
        })


        distr6::Distribution$new(
          name = "Smoothing Spline Density Estimator",
          short_name = "splineDens",
          pdf = pdf, cdf = cdf, quantile = quantile, type = set6::Reals$new())
      },

      .predict = function(task) {
        newdata = task$data()[[1]]
        pars = self$param_set$get_values(tags = "predict")
        invoke(list, pdf = self$model$pdf(newdata), cdf = self$model$cdf(newdata), .args = pars)
      }
    )
  )
)

.extralrns_dict$add("dens.spline", function() LearnerDensSpline$new())

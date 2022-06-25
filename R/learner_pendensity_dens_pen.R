#' @title Density Penalized Learner
#' @author RaphaelS1
#' @name mlr_learners_dens.pen
#'
#' @description
#' Density estimation using penalized B-splines with automatic selection of smoothing parameter.
#' Calls [pendensity::pendensity()] from \CRANpkg{pendensity}.
#'
#' @template learner
#' @templateVar id dens.pen
#'
#' @references
#' `r format_bib("schellhase2012density")`
#'
#' @template seealso_learner
#' @template example
#' @export
delayedAssign(
  "LearnerDensPenalized",
  R6Class("LearnerDensPenalized",
    inherit = mlr3proba::LearnerDens,

    public = list(
      #' @description
      #' Creates a new instance of this [R6][R6::R6Class] class.
      initialize = function() {
        ps = ps(
          base = p_fct(default = "bspline",
            levels = c("bspline", "gaussian"), tags = "train"),
          no.base = p_dbl(default = 41, tags = "train"),
          max.iter = p_dbl(default = 20, tags = "train"),
          lambda0 = p_dbl(default = 500, tags = "train"),
          q = p_dbl(default = 3, tags = "train"),
          sort = p_lgl(default = TRUE, tags = "train"),
          with.border = p_uty(tags = "train"),
          m = p_dbl(default = 3, tags = "train"),
          eps = p_dbl(default = 0.01, tags = "train")
        )

        super$initialize(
          id = "dens.pen",
          packages = c("mlr3extralearners", "pendensity"),
          feature_types = c("integer", "numeric"),
          predict_types = c("pdf", "cdf"),
          param_set = ps,
          man = "mlr3extralearners::mlr_learners_dens.pen",
          label = "Penalized Density Estimation"
        )
      }
    ),

    private = list(
      .train = function(task) {

        pars = self$param_set$get_values(tags = "train")
        fit = invoke(pendensity::pendensity,
          form = task$data()[[1]] ~ 1,
          .args = pars)

        pdf = function(x) {} # nolint
        body(pdf) = substitute({
          invoke(pendensity::dpendensity,
            x = fit,
            val = x)
        })

        cdf = function(x) {} # nolint
        body(cdf) = substitute({
          invoke(pendensity::ppendensity,
            x = fit,
            val = x)
        })

        base = if (is.null(pars$base)) {
          "gaussian"
        } else {
          pars$base
        }
        distr6::Distribution$new(
          name = paste("Penalized Density", base),
          short_name = paste0("PenDens_", base),
          pdf = pdf, cdf = cdf, type = set6::Reals$new())
      },

      .predict = function(task) {
        newdata = task$data()[[1]]
        pars = self$param_set$get_values(tags = "predict")
        invoke(list, pdf = self$model$pdf(newdata), cdf = self$model$pdf(newdata), .args = pars)
      }
    )
  )
)

.extralrns_dict$add("dens.pen", function() LearnerDensPenalized$new())

#' @title Polynomial Regression Learner
#' @author imanechadli2003
#' @name mlr_learners_regr.polynomial
#'
#' @description
#' Polynomial regression learner.
#' Calls `stats::lm()` from base package 'stats' with `stats::poly()`.
#'
#' @templateVar id regr.polynomial
#' @template learner
#'
#' @section Initial parameter values:
#' - `degree`
#'   - Actual default: `1`
#'   - Adjusted default: `2`
#'   - Reason for change: Degree 2 allows capturing non-linear relationships.
#'
#' @references
#' `r format_bib("friedman2001elements")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrPolynomial = R6Class("LearnerRegrPolynomial",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        degree = p_int(lower = 1L, upper = Inf, default = 1L, tags = "train"),
        raw    = p_lgl(default = FALSE, tags = "train")
      )

      ps$set_values(degree = 2L)

      super$initialize(
        id            = "regr.polynomial",
        packages      = c("mlr3extralearners", "stats"),
        feature_types = c("integer", "numeric"),
        predict_types = "response",
        param_set     = ps,
        man           = "mlr3extralearners::mlr_learners_regr.polynomial",
        label         = "Polynomial Regression"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      degree = pars$degree
      raw    = pars$raw %||% FALSE

      data    = task$data()
      target  = task$target_names
      features = task$feature_names

      poly_terms = paste(
        sprintf("poly(%s, degree = %d, raw = %s)", features, degree, raw),
        collapse = " + "
      )
      formula = stats::as.formula(paste(target, "~", poly_terms))

      invoke(stats::lm, formula = formula, data = data)
    },

    .predict = function(task) {
      newdata  = ordered_features(task, self)
      response = invoke(stats::predict.lm,
        object  = self$model,
        newdata = newdata)
      list(response = response)
    }
  )
)

.extralrns_dict$add("regr.polynomial", LearnerRegrPolynomial)

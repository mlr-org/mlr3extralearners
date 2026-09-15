#' @title Polynomial Regression Learner
#' @author imanechadli2003
#' @name mlr_learners_regr.polynomial
#'
#' @description
#' Polynomial regression without interactions between features.
#' Calls `stats::lm()` from base package 'stats' on a model formula in which every feature is expanded with
#' `stats::poly()`.
#' For polynomial regression that also includes interaction terms, see
#' [`regr.polyFit`][mlr_learners_regr.polyFit].
#'
#' @section Initial parameter values:
#' - `degree`
#'   - Actual default: `1`
#'   - Adjusted default: `2`
#'   - Reason for change: A degree of `1` is plain linear regression, so the lowest degree that makes this learner
#'     differ from `stats::lm()` is the more useful default.
#'
#' @section Polynomial degree:
#' `stats::poly()` requires the degree of the polynomial to be smaller than the number of distinct values of a
#' feature.
#' To keep the learner usable inside resampling, where individual folds may contain features with few distinct
#' values, the degree is capped per feature at `min(degree, <number of distinct values> - 1)`.
#' Features that are constant in the training data enter the formula untransformed.
#'
#' @templateVar id regr.polynomial
#' @template learner
#'
#' @references
#' `r format_bib("hastie2009elements")`
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
        degree = p_int(lower = 1L, default = 1L, tags = "train"),
        raw = p_lgl(default = FALSE, tags = "train")
      )

      ps$set_values(degree = 2L)

      super$initialize(
        id = "regr.polynomial",
        packages = c("mlr3extralearners", "stats"),
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "se"),
        param_set = ps,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_regr.polynomial",
        label = "Polynomial Regression"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      degree = pars$degree %??% 1L
      raw = pars$raw %??% FALSE

      data = task$data()
      features = task$feature_names

      # `poly()` errors if the degree is not smaller than the number of distinct values of a feature
      degrees = pmin(degree, map_int(features, function(f) length(unique(data[[f]]))) - 1L)
      terms = ifelse(
        degrees < 1L,
        sprintf("`%s`", features),
        sprintf("poly(`%s`, degree = %i, raw = %s)", features, degrees, raw)
      )
      # `env` is needed so that `poly()` can be resolved when the model frame is built
      formula = formulate(task$target_names, terms, env = environment(), quote = "left")

      invoke(stats::lm, formula = formula, data = data, weights = private$.get_weights(task))
    },

    .predict = function(task) {
      newdata = ordered_features(task, self)

      if (self$predict_type == "response") {
        response = invoke(stats::predict.lm, object = self$model, newdata = newdata, se.fit = FALSE)
        list(response = response)
      } else {
        pred = invoke(stats::predict.lm, object = self$model, newdata = newdata, se.fit = TRUE)
        list(response = pred$fit, se = pred$se.fit)
      }
    }
  )
)

.extralrns_dict$add("regr.polynomial", LearnerRegrPolynomial)

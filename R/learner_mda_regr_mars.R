#' @title Regression Mars Learner
#' @author sumny
#' @name mlr_learners_regr.mars
#'
#' @description
#' Multivariate Adaptive Regression Splines.
#' Calls [mda::mars()] from \CRANpkg{mda}.
#'
#' @templateVar id regr.mars
#' @template learner
#'
#' @references
#' `r format_bib("friedman1991multivariate")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrMars = R6Class("LearnerRegrMars",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        degree = p_int(lower = 1L, default = 1L, tags = "train"),
        nk = p_int(lower = 1L, tags = "train"),
        penalty = p_dbl(lower = 0, default = 2, tags = "train"),
        thresh = p_dbl(lower = 0, default = 0.001, tags = "train"),
        prune = p_lgl(default = TRUE, tags = "train"),
        trace.mars = p_lgl(default = FALSE, tags = "train"),
        forward.step = p_lgl(default = FALSE, tags = "train")
      )

      super$initialize(
        id = "regr.mars",
        packages = c("mlr3extralearners", "mda"),
        feature_types = c("integer", "numeric"),
        predict_types = "response",
        param_set = param_set,
        man = "mlr3extralearners::mlr_learners_regr.mars",
        label = "Multivariate Adaptive Regression Splines"
      )
    }
  ),

  private = list(

    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      if ("weights" %in% task$properties) {
        pars = insert_named(pars, list(w = task$weights$weight))
      }

      x = task$data(cols = task$feature_names)
      y = task$data(cols = task$target_names)[[1L]]

      invoke(mda::mars,
        x = x,
        y = y,
        .args = pars)
    },

    .predict = function(task) {
      newdata = ordered_features(task, self)
      pars = self$param_set$get_values(tags = "predict")

      pred = invoke(predict, self$model, newdata = newdata, .args = pars)[, 1L]

      list(response = pred)
    }
  )
)

.extralrns_dict$add("regr.mars", LearnerRegrMars)

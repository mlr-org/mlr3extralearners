#' @title Partial Least Squares Regression
#' @author awinterstetter
#' @name mlr_learners_regr.plsr
#'
#' @description
#' Partial least squares regression.
#' Calls [pls::plsr()] from \CRANpkg{pls}.
#'
#' @templateVar id regr.plsr
#' @template learner
#'
#' @note
#' During prediction, all components `ncomp` used in training are used.
#'
#' @references
#' `r format_bib("mevik_2007")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrPlsr = R6Class("LearnerRegrPlsr",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        ncomp       = p_int(lower = 1L, tags = "train"),
        method      = p_fct(default = "kernelpls", levels = c("kernelpls", "widekernelpls", "simpls", "oscorespls"), tags = "train"),
        scale       = p_lgl(default = TRUE, tags = "train"),
        center      = p_lgl(default = TRUE, tags = "train"),
        validation  = p_fct(default = "none", levels = c("none", "CV", "LOO"), tags = "train"),
        model       = p_lgl(default = TRUE, tags = "train"),
        x           = p_lgl(default = FALSE, tags = "train"),
        y           = p_lgl(default = FALSE, tags = "train")
      )

      super$initialize(
        id = "regr.plsr",
        packages = "pls",
        feature_types = c("numeric", "integer", "factor"),
        predict_types = "response",
        param_set = param_set,
        man = "mlr3extralearners::mlr_learners_regr.plsr",
        label = "Partial Least Squares Regression"
      )
    }
  ),
  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")

      formula = mlr3misc::formulate(
        lhs = task$target_names,
        rhs = task$feature_names,
        quote = c("left", "right"),
        env = environment())

      mlr3misc::invoke(pls::plsr,
        formula = formula,
        data = task$data(),
        .args = pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)

      pred = mlr3misc::invoke(predict, self$model,
        newdata = newdata,
        type = "response",
        .args = pars)

      list(response = pred[, 1L])
    }
  )
)

.extralrns_dict$add("regr.plsr", LearnerRegrPlsr)

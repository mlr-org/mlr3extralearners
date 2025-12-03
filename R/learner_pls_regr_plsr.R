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
      ps = ps(
        ncomp = p_int(lower = 1L, tags = "train"),
        method = p_fct(default = "kernelpls",
          levels = c("kernelpls", "widekernelpls", "simpls", "oscorespls"),
          tags = "train"),
        scale = p_lgl(default = TRUE, tags = "train"),
        center = p_lgl(default = TRUE, tags = "train"),
        validation = p_fct(default = "none", levels = c("none", "CV", "LOO"), tags = "train"),
        model = p_lgl(default = TRUE, tags = "train"),
        x = p_lgl(default = FALSE, tags = "train"),
        y = p_lgl(default = FALSE, tags = "train")
      )

      ps$values = list(scale = TRUE)

      super$initialize(
        id = "regr.plsr",
        packages = "pls",
        feature_types = c("numeric", "integer", "factor"),
        predict_types = "response",
        param_set = ps,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_regr.plsr",
        label = "Partial Least Squares Regression"
      )
    }
  ),
  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      pars$weights = private$.get_weights(task)

      data = task$data(cols = c(task$feature_names, task$target_names))
      # Build a formula that safely quotes non-standard / UTF-8 column names
      formula = mlr3misc::formulate(
        lhs = task$target_names,
        rhs = task$feature_names,
        quote = c("left", "right"),
        env = environment())

      invoke(pls::plsr,
        formula = formula,
        data = data,
        .args = pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)

      pred = invoke(predict, self$model,
        newdata = newdata,
        type = "response",
        comps = seq_len(self$model$ncomp),
        .args = pars)

      list(response = pred[, 1L])
    }
  )
)

.extralrns_dict$add("regr.plsr", LearnerRegrPlsr)

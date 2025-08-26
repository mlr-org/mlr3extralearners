#' @title Classification Logistic Regression Learner
#' @author annanzrv
#' @name mlr_learners_classif.stepPlr
#'
#' @description
#' Logistic regression with a quadratic penalization on the coefficient.
#' Calls [stepPlr::plr()] from \CRANpkg{stepPlr}.
#'
#' @templateVar id classif.stepPlr
#' @template learner
#'
#' @references
#' `r format_bib("park2008plr")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifStepPlr = R6Class("LearnerClassifStepPlr",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        cp                  = p_fct(default = "aic", levels = c("aic", "bic"), tags = "train"),
        lambda              = p_dbl(default = 1e-4, lower = 0, tags = "train"),
        offset.coefficients = p_uty(tags = "train"),
        offset.subset       = p_uty(tags = "train")
      )

      super$initialize(
        id = "classif.stepPlr",
        packages = "stepPlr",
        feature_types = c("logical", "integer", "numeric"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("twoclass", "weights"),
        man = "mlr3extralearners::mlr_learners_classif.stepPlr",
        label = "Logistic Regression with a L2 Penalty"
      )
    }
  ),
  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      data = as.matrix(task$data(cols = task$feature_names))
      y = as.numeric(task$data()[[task$target_names]]) - 1
      pars$weights = private$.get_weights(task)
      invoke(
        stepPlr::plr,
        x = data,
        y = y,
        .args = pars
      )
    },
    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      # Remove target column if present in newdata
      if (
        length(task$target_names) > 0 && task$target_names %in% colnames(newdata)
      ) {
        newx = as.matrix(newdata[, !task$target_names, with = FALSE])
      } else {
        newx = as.matrix(newdata)
      }

      type = if (self$predict_type == "prob") "response" else "class"
      pred = invoke(predict, self$model, newx = newx, type = type, .args = pars)

      if (type == "class") {
        levels = task$class_names
        response = factor(pred, levels = seq_along(levels) - 1, labels = levels)
        list(response = response)
      } else {
        prob = pprob_to_matrix(1 - unname(pred), task)
        list(prob = prob)
      }
    }
  )
)

.extralrns_dict$add("classif.stepPlr", LearnerClassifStepPlr)

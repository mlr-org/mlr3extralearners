#' @title Regression Priority Lasso Learner
#' @author HarutyunyanLiana
#' @author bblodfon
#' @name mlr_learners_regr.priority_lasso
#'
#' @description
#' Patient outcome prediction based on multi-omics data taking practitioners’
#' preferences into account.
#' Calls `prioritylasso::prioritylasso()` from \CRANpkg{prioritylasso}.
#'
#' @section Initial parameter values:
#' - `family` is set to `"gaussian"` and cannot be changed
#' - `type.measure` set to `"mse"` (cross-validation measure)
#'
#' @inheritSection mlr_learners_classif.priority_lasso Scope and supported arguments
#'
#' @templateVar id regr.priority_lasso
#' @template learner
#'
#' @references
#' `r format_bib("klau2018priolasso")`
#'
#' @template seealso_learner
#' @template example_prioritylasso
#' @export
LearnerRegrPriorityLasso = R6Class(
  "LearnerRegrPriorityLasso",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      # fmt: skip
      param_set = ps(
        # prioritylasso::prioritylasso() parameters
        blocks                = p_uty(tags = c("train", "required")),
        max.coef              = p_uty(default = NULL, tags = "train"),
        block1.penalization   = p_lgl(default = TRUE, tags = "train"),
        lambda.type           = p_fct(default = "lambda.min", levels = c("lambda.min", "lambda.1se"), tags = "train"),
        standardize           = p_lgl(default = TRUE, tags = "train"),
        nfolds                = p_int(3L, default = 10L, tags = "train"),
        foldid                = p_uty(default = NULL, tags = "train"),
        cvoffset              = p_lgl(default = FALSE, tags = "train"),
        cvoffsetnfolds        = p_int(1L, default = 10L, tags = "train"),
        return.x              = p_lgl(default = TRUE, tags = "train"),
        # glmnet::cv.glmnet() parameters
        lambda                = p_uty(default = NULL, tags = "train"),
        grouped               = p_lgl(default = TRUE, tags = "train"),
        trace.it              = p_int(0, 1, default = 0, tags = "train"), # alias: itrace
        # glmnet::glmnet() parameters
        type.gaussian = p_fct(c("covariance", "naive"), tags = "train"),
        # prioritylasso:::predict.prioritylasso() parameters
        include.allintercepts = p_lgl(default = FALSE, tags = "predict"),
        use.blocks            = p_uty(default = "all", tags = "predict")
      )

      super$initialize(
        id = "regr.priority_lasso",
        packages = "prioritylasso",
        feature_types = c("logical", "integer", "numeric"),
        predict_types = "response",
        param_set = param_set,
        properties = c("weights", "selected_features"),
        man = "mlr3extralearners::mlr_learners_regr.priority_lasso",
        label = "Priority Lasso"
      )
    },

    #' @description
    #' Selected features when coef is positive
    #' @return `character()`.
    selected_features = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      coefs = self$model$coefficients
      coefs = coefs[coefs != 0]
      names(coefs)
    }
  ),

  private = list(
    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")
      pv$family = "gaussian"
      pv$type.measure = "mse"
      pv$weights = private$.get_weights(task)

      data = as_numeric_matrix(task$data(cols = task$feature_names))
      target = task$truth()
      invoke(prioritylasso::prioritylasso, X = data, Y = target, .args = pv)
    },

    .predict = function(task) {
      newdata = as.matrix(ordered_features(task, self))
      pv = self$param_set$get_values(tags = "predict")

      pred = as.numeric(
        invoke(predict, self$model, newdata = newdata, type = "response", .args = pv)
      )

      list(response = pred)
    }
  )
)

.extralrns_dict$add("regr.priority_lasso", LearnerRegrPriorityLasso)

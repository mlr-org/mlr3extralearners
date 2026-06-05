#' @title Classification Priority Lasso Learner
#' @author HarutyunyanLiana
#' @name mlr_learners_classif.priority_lasso
#'
#' @description
#' Patient outcome prediction based on multi-omics data, taking practitioners' preferences into account.
#' Calls `prioritylasso::prioritylasso()` from \CRANpkg{prioritylasso}.
#'
#' @details
#' This learner intentionally exposes a focused subset of training and prediction arguments.
#' It is designed to work well out of the box, without requiring extensive parameter tuning.
#' Some arguments from `cv.glmnet()`, `glmnet()`, and `predict.prioritylasso()` are not included,
#' because they are not consistently supported or forwarded through the full train/predict path
#' (e.g. handling missing test data or performing relaxed lasso fits).
#'
#' Please open an issue if there is a need for supporting more learner parameters.
#'
#' @section Initial parameter values:
#' - `family` is set to `"binomial"` and cannot be changed
#'
#' @templateVar id classif.priority_lasso
#' @template learner
#'
#' @references
#' `r format_bib("klau2018priolasso")`
#'
#' @template seealso_learner
#' @template example_prioritylasso
#' @export
LearnerClassifPriorityLasso = R6Class(
  "LearnerClassifPriorityLasso",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      # fmt: skip
      param_set = ps(
        # prioritylasso::prioritylasso() parameters
        type.measure          = p_fct(levels = c("class", "auc"), tags = c("train", "required")),
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
        type.logistic         = p_fct(c("Newton", "modified.Newton"), default = "Newton", tags = "train"),
        # prioritylasso:::predict.prioritylasso() parameters
        include.allintercepts = p_lgl(default = FALSE, tags = "predict"),
        use.blocks            = p_uty(default = "all", tags = "predict")
      )

      super$initialize(
        id = "classif.priority_lasso",
        packages = "prioritylasso",
        feature_types = c("logical", "integer", "numeric"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("weights", "selected_features", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.priority_lasso",
        label = "Priority Lasso"
      )
    },

    #' @description
    #' Selected features, i.e. those where the coefficient is non-zero.
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
      pars = self$param_set$get_values(tags = "train")
      pars$family = "binomial"
      pars$weights = private$.get_weights(task)

      data = as_numeric_matrix(task$data(cols = task$feature_names))
      target = task$truth()
      invoke(prioritylasso::prioritylasso, X = data, Y = target, .args = pars)
    },

    .predict = function(task) {
      newdata = as_numeric_matrix(ordered_features(task, self))
      pv = self$param_set$get_values(tags = "predict")

      p = invoke(predict, self$model, newdata = newdata, type = "response", .args = pv)
      p = drop(p)
      classnames = self$model$glmnet.fit[[1L]]$classnames
      if (self$predict_type == "response") {
        response = fifelse(p <= 0.5, classnames[1L], classnames[2L])
        list(response = drop(response))
      } else {
        prob = cbind(1 - p, p)
        colnames(prob) = classnames
        list(prob = prob)
      }
    }
  )
)

.extralrns_dict$add("classif.priority_lasso", LearnerClassifPriorityLasso)

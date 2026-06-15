#' @title Survival Priority Lasso Learner
#' @author HarutyunyanLiana
#' @author bblodfon
#' @name mlr_learners_surv.priority_lasso
#'
#' @description
#' Patient outcome prediction based on multi-omics data taking practitioners’
#' preferences into account.
#' Calls `prioritylasso::prioritylasso()` from \CRANpkg{prioritylasso}.
#'
#' @section Prediction types:
#' This learner returns three prediction types:
#' 1. `lp`: a vector containing the linear predictors (relative risk scores),
#' where each score corresponds to a specific test observation.
#' Calculated using `prioritylasso::predict.prioritylasso()`.
#' 2. `crank`: same as `lp`.
#' 3. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' Calculated using `mlr3proba::breslow()` where the Breslow estimator is used
#' for computing the baseline hazard.
#'
#' @section Initial parameter values:
#' - `family` is set to `"cox"` for the Cox survival objective and cannot be changed
#' - `type.measure` is set to `"deviance"` (cross-validation measure) and cannot be changed
#' - `cox.ties` is initialized to `"breslow"` to keep the tie-handling behavior of earlier glmnet versions,
#' and to silence the glmnet v5.0 warning about the upcoming default change to `"efron"`
#'
#' @inheritSection mlr_learners_classif.priority_lasso Scope and supported arguments
#' @inheritSection mlr_learners_classif.priority_lasso Custom mlr3 parameters
#'
#' @templateVar id surv.priority_lasso
#' @template learner
#'
#' @references
#' `r format_bib("klau2018priolasso")`
#'
#' @template seealso_learner
#' @template example_prioritylasso
#' @export
LearnerSurvPriorityLasso = R6Class(
  "LearnerSurvPriorityLasso",
  inherit = mlr3proba::LearnerSurv,
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
        cox.ties              = p_fct(c("breslow", "efron"), default = "breslow", tags = "train"),
        # prioritylasso:::predict.prioritylasso() parameters
        include.allintercepts = p_lgl(default = FALSE, tags = "predict"),
        use.blocks            = p_uty(default = "all", tags = "predict"),
        # Custom mlr3 parameters
        adaptive.order        = p_lgl(default = FALSE, tags = "train")
      )

      # TODO: Remove `cox.ties` initialization once glmnet >= 5.1 defaults to
      # cox.ties = "efron" without warnings.
      # Setting now explicitly to avoid warnings.
      param_set$set_values(cox.ties = "breslow")

      super$initialize(
        id = "surv.priority_lasso",
        packages = "prioritylasso",
        feature_types = c("logical", "integer", "numeric"),
        predict_types = c("crank", "lp", "distr"),
        param_set = param_set,
        properties = c("weights", "selected_features"),
        man = "mlr3extralearners::mlr_learners_surv.priority_lasso",
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
      pv = self$param_set$get_values(tags = "train")
      pv$family = "cox"
      pv$type.measure = "deviance"
      pv$weights = private$.get_weights(task)

      data = as.matrix(task$data(cols = task$feature_names))
      target = task$truth()

      # If adaptive.order is TRUE, compute block order and penalty factors from the data
      res = NULL
      if (length(pv$blocks) >= 2L && isTRUE(pv$adaptive.order)) {
        res = adaptive_block_order(data, target, pv)
        pv = res$pv
      }

      model = invoke(prioritylasso::prioritylasso, X = data, Y = target, .args = pv)

      # add (time, status) of training data for breslow distr prediction
      model$train_times = task$times()
      model$train_status = task$status()

      # add block penalty factors to the model object
      if (!is.null(res)) {
        model$block.penalty.factors = res$penalty.factors
      }

      model
    },

    .predict = function(task) {
      newdata = as.matrix(ordered_features(task, self))
      # reorder newdata columns according to the block order in the model
      newdata = newdata[, unlist(self$model$blocks), drop = FALSE]
      pv = self$param_set$get_values(tags = "predict")

      # get linear predictor for train data
      lp_train = as.numeric(
        invoke(predict, self$model, type = "link", .args = pv)
      )

      # get linear predictor for test data
      lp_test = as.numeric(
        invoke(predict, self$model, newdata = newdata, type = "link", .args = pv)
      )

      # get survival probability matrix using the Breslow estimator for the baseline hazard
      surv = mlr3proba::breslow(
        times = self$model$train_times,
        status = self$model$train_status,
        lp_train = lp_train,
        lp_test = lp_test
      )

      mlr3proba::surv_return(surv = surv, lp = lp_test)
    }
  )
)

.extralrns_dict$add("surv.priority_lasso", LearnerSurvPriorityLasso)

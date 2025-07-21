#' @title Cross-Validated GLM with Elastic Net Regularization Survival Learner
#' @author be-marc
#' @name mlr_learners_surv.cv_glmnet
#'
#' @description
#' Generalized linear models with elastic net regularization.
#' Calls [glmnet::cv.glmnet()] from package \CRANpkg{glmnet}.
#'
#' @section Initial parameter values:
#' - `family` is set to `"cox"` and cannot be changed.
#'
#' @section Prediction types:
#' This learner returns three prediction types:
#' 1. `lp`: a vector containing the linear predictors (relative risk scores),
#' where each score corresponds to a specific test observation.
#' Calculated using [glmnet::predict.cv.glmnet()].
#' 2. `crank`: same as `lp`.
#' 3. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' Calculated using [glmnet::survfit.cv.glmnet()].
#' Parameters `stype` and `ctype` relate to how `lp` predictions are transformed
#' into survival predictions and are described in [survival::survfit.coxph()].
#' By default the Breslow estimator is used for computing the baseline hazard.
#'
#' @inheritSection mlr_learners_surv.glmnet Offset
#'
#' @templateVar id surv.cv_glmnet
#' @template learner
#'
#' @references
#' `r format_bib("friedman_2010")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerSurvCVGlmnet = R6Class("LearnerSurvCVGlmnet",
  inherit = mlr3proba::LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        alignment            = p_fct(c("lambda", "fraction"), default = "lambda", tags = "train"),
        alpha                = p_dbl(0, 1, default = 1, tags = "train"),
        big                  = p_dbl(default = 9.9e35, tags = "train"),
        devmax               = p_dbl(0, 1, default = 0.999, tags = "train"),
        dfmax                = p_int(0L, tags = "train"),
        eps                  = p_dbl(0, 1, default = 1.0e-6, tags = "train"),
        epsnr                = p_dbl(0, 1, default = 1.0e-8, tags = "train"),
        exclude              = p_uty(tags = "train"),
        exmx                 = p_dbl(default = 250.0, tags = "train"),
        fdev                 = p_dbl(0, 1, default = 1.0e-5, tags = "train"),
        foldid               = p_uty(default = NULL, tags = "train"),
        gamma                = p_uty(tags = "train"),
        grouped              = p_lgl(default = TRUE, tags = "train"),
        intercept            = p_lgl(default = TRUE, tags = "train"),
        keep                 = p_lgl(default = FALSE, tags = "train"),
        lambda               = p_uty(tags = "train"),
        lambda.min.ratio     = p_dbl(0, 1, tags = "train"),
        lower.limits         = p_uty(default = -Inf, tags = "train"),
        maxit                = p_int(1L, default = 100000L, tags = "train"),
        mnlam                = p_int(1L, default = 5L, tags = "train"),
        mxit                 = p_int(1L, default = 100L, tags = "train"),
        mxitnr               = p_int(1L, default = 25L, tags = "train"),
        nfolds               = p_int(3L, default = 10L, tags = "train"),
        nlambda              = p_int(1L, default = 100L, tags = "train"),
        use_pred_offset      = p_lgl(default = TRUE, tags = "predict"),
        parallel             = p_lgl(default = FALSE, tags = "train"),
        penalty.factor       = p_uty(tags = "train"),
        pmax                 = p_int(0L, tags = "train"),
        pmin                 = p_dbl(0, 1, default = 1.0e-9, tags = "train"),
        prec                 = p_dbl(default = 1e-10, tags = "train"),
        predict.gamma        = p_dbl(default = "gamma.1se", special_vals = list("gamma.1se", "gamma.min"), tags = "predict"),
        relax                = p_lgl(default = FALSE, tags = "train"),
        s                    = p_dbl(0, special_vals = list("lambda.1se", "lambda.min"), default = "lambda.1se", tags = "predict"), #nolint
        standardize          = p_lgl(default = TRUE, tags = "train"),
        standardize.response = p_lgl(default = FALSE, tags = "train"),
        thresh               = p_dbl(0, default = 1e-07, tags = "train"),
        trace.it             = p_int(0, 1, default = 0, tags = "train"),
        type.gaussian        = p_fct(c("covariance", "naive"), tags = "train"),
        type.logistic        = p_fct(c("Newton", "modified.Newton"), default = "Newton", tags = "train"),
        type.measure         = p_fct(c("deviance", "C"), default = "deviance", tags = "train"),
        type.multinomial     = p_fct(c("ungrouped", "grouped"), default = "ungrouped", tags = "train"),
        upper.limits         = p_uty(default = Inf, tags = "train"),
        stype                = p_int(default = 2L, lower = 1L, upper = 2L, tags = "predict"), # default: Breslow
        ctype                = p_int(lower = 1L, upper = 2L, tags = "predict") # how to handle ties
      )

      ps$set_values(use_pred_offset = TRUE)

      super$initialize(
        id = "surv.cv_glmnet",
        param_set = ps,
        feature_types = c("logical", "integer", "numeric"),
        predict_types = c("crank", "lp", "distr"),
        properties = c("weights", "selected_features", "offset"),
        packages = c("mlr3extralearners", "glmnet"),
        man = "mlr3extralearners::mlr_learners_surv.cv_glmnet",
        label = "Regularized Generalized Linear Model"
      )
    },

    #' @description
    #' Returns the set of selected features as reported by [glmnet::predict.glmnet()]
    #' with `type` set to `"nonzero"`.
    #'
    #' @param lambda (`numeric(1)`)\cr
    #' Custom `lambda`, defaults to the active lambda depending on parameter set.
    #'
    #' @return (`character()`) of feature names.
    selected_features = function(lambda = NULL) {
      glmnet_selected_features(self, lambda)
    }
  ),

  private = list(
    .train = function(task) {
      data = as.matrix(task$data(cols = task$feature_names))
      target = task$truth()
      pv = self$param_set$get_values(tags = "train")
      pv$family = "cox"
      pv$weights = private$.get_weights(task)
      pv = glmnet_set_offset(task, "train", pv)

      list(
        model = glmnet_invoke(data, target, pv, cv = TRUE),
        # need these for distr prediction (survfit)
        x = data,
        y = target,
        weights = pv$weights,
        offset = pv$offset
      )
    },

    .predict = function(task) {
      newdata = as.matrix(ordered_features(task, self))
      pv = self$param_set$get_values(tags = "predict")
      pv = rename(pv, "predict.gamma", "gamma")
      pv = glmnet_set_offset(task, "predict", pv)

      # get survival matrix
      fit = invoke(survival::survfit,
                   formula = self$model$model,
                   x = self$model$x,
                   y = self$model$y,
                   weights = self$model$weights,
                   offset = self$model$offset,
                   newx = newdata,
                   se.fit = FALSE,
                   .args = pv)

      # get linear predictor
      lp = as.numeric(
        invoke(predict, self$model$model, newx = newdata, type = "link", .args = pv)
      )

      mlr3proba::.surv_return(times = fit$time, surv = t(fit$surv), lp = lp)
    }
  )
)

.extralrns_dict$add("surv.cv_glmnet", LearnerSurvCVGlmnet)

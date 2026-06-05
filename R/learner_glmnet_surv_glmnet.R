#' @title GLM with Elastic Net Regularization Survival Learner
#' @name mlr_learners_surv.glmnet
#' @author be-marc
#' @author bblodfon
#'
#' @description
#' Generalized linear models with elastic net regularization.
#' Calls `glmnet::glmnet()` from package \CRANpkg{glmnet}.
#'
#' @section Initial parameter values:
#' - `family` is set to `"cox"` and cannot be changed.
#'
#' @section Prediction types:
#' This learner returns three prediction types:
#' 1. `lp`: a vector containing the linear predictors (relative risk scores),
#' where each score corresponds to a specific test observation.
#' Calculated using `glmnet::predict.glmnet()`.
#' 2. `crank`: same as `lp`.
#' 3. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' Calculated using `glmnet:::survfit.coxnet()`.
#' Parameters `stype` and `ctype` relate to how `lp` predictions are transformed
#' into survival predictions and are described in `survival::survfit.coxph()`.
#' By default the Breslow estimator is used for computing the baseline hazard.
#'
#' **Caution**: This learner is different to learners calling `glmnet::cv.glmnet()`
#' in that it does not use the internal optimization of parameter `lambda`.
#' Instead, `lambda` needs to be tuned by the user (e.g., via \CRANpkg{mlr3tuning}).
#' When `lambda` is tuned, the `glmnet` will be trained for each tuning iteration.
#' While fitting the whole path of `lambda`s would be more efficient, as is done
#' by default in `glmnet::glmnet()`, tuning/selecting the parameter at prediction time
#' (using parameter `s`) is currently not supported in \CRANpkg{mlr3}
#' (at least not in efficient manner).
#' Tuning the `s` parameter is, therefore, currently discouraged.
#'
#' When the data are i.i.d. and efficiency is key, we recommend using the respective
#' auto-tuning counterpart in [mlr_learners_surv.cv_glmnet()].
#' However, in some situations this is not applicable, usually when data are
#' imbalanced or not i.i.d. (longitudinal, time-series) and tuning requires
#' custom resampling strategies (blocked design, stratification).
#'
#' @section Offset:
#' If a `Task` contains a column with the `offset` role, it is automatically
#' incorporated during training via the `offset` argument in `glmnet::glmnet()`.
#' During prediction, the offset column from the test set is used only if
#' `use_pred_offset = TRUE` (default), passed via the `newoffset` argument in `glmnet::predict.glmnet()`.
#' Otherwise, if the user sets `use_pred_offset = FALSE`, a zero offset is applied,
#' effectively disabling the offset adjustment during prediction.
#'
#' @templateVar id surv.glmnet
#' @template learner
#'
#' @references
#' `r format_bib("friedman_2010")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerSurvGlmnet = R6Class(
  "LearnerSurvGlmnet",
  inherit = mlr3proba::LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      # fmt: skip
      ps = ps(
        # glmnet::glmnet() parameters
        alpha            = p_dbl(0, 1, default = 1, tags = "train"),
        nlambda          = p_int(1L, default = 100L, tags = "train"),
        lambda.min.ratio = p_dbl(0, 1, tags = "train"),
        lambda           = p_uty(default = NULL, tags = "train"),
        standardize      = p_lgl(default = TRUE, tags = "train"),
        intercept        = p_lgl(default = TRUE, tags = "train"),
        exclude          = p_uty(tags = "train"),
        penalty.factor   = p_uty(tags = "train"),
        lower.limits     = p_uty(default = -Inf, tags = "train"),
        upper.limits     = p_uty(default = Inf, tags = "train"),
        relax            = p_lgl(default = FALSE, tags = "train"),
        trace.it         = p_int(0, 1, default = 0, tags = "train"), # alias: itrace
        cox.ties         = p_fct(c("breslow", "efron"), default = "efron", tags = "train"),
        # glmnet::relax.glmnet() parameters
        maxp             = p_int(1L, tags = "train"),
        path             = p_lgl(default = FALSE, tags = "train"),
        # glmnet::glmnet.control() parameters
        fdev             = p_dbl(0, 1, default = 1.0e-5, tags = "train"),
        devmax           = p_dbl(0, 1, default = 0.999, tags = "train"),
        eps              = p_dbl(0, 1, default = 1.0e-6, tags = "train"),
        big              = p_dbl(default = 9.9e+35, tags = "train"),
        mnlam            = p_int(default = 5L, tags = "train"),
        pmin             = p_dbl(0, 1, default = 1.0e-9, tags = "train"),
        exmx             = p_dbl(default = 250L, tags = "train"),
        prec             = p_dbl(default = 1e-10, tags = "train"),
        mxit             = p_int(1L, default = 100L, tags = "train"),
        epsnr            = p_dbl(0, 1, default = 1.0e-6, tags = "train"),
        mxitnr           = p_int(1L, default = 25L, tags = "train"),
        thresh           = p_dbl(0, default = 1e-07, tags = "train"),
        maxit            = p_int(1L, default = 1e+05, tags = "train"),
        dfmax            = p_int(default = NULL, special_vals = list(NULL), tags = "train"),
        pmax             = p_int(default = NULL, special_vals = list(NULL), tags = "train"),
        # glmnet::predict.glmnet() parameters
        exact            = p_lgl(default = FALSE, tags = "predict"),
        s                = p_dbl(0, default = 0.01, tags = "predict"),
        # glmnet::predict.relaxed() parameters
        gamma            = p_dbl(0, 1, default = 1L, tags = "predict"),
        # glmnet:::survfit.coxnet() parameters => survfit.coxph() parameters for distr prediction
        stype            = p_int(default = 2L, lower = 1L, upper = 2L, tags = "predict"), # default: Breslow
        ctype            = p_int(lower = 1L, upper = 2L, tags = "predict"), # how to handle ties
        # for using the offset during prediction
        use_pred_offset  = p_lgl(default = TRUE, tags = "predict")
      )

      # TODO: Remove `cox.ties` initialization once glmnet >= 5.1 defaults to
      # cox.ties = "efron" without warnings.
      # Setting now explicitly to avoid warnings.
      ps$set_values(use_pred_offset = TRUE, cox.ties = "breslow")

      super$initialize(
        id = "surv.glmnet",
        param_set = ps,
        feature_types = c("logical", "integer", "numeric"),
        predict_types = c("crank", "lp", "distr"),
        properties = c("weights", "selected_features", "offset"),
        packages = c("mlr3extralearners", "glmnet"),
        man = "mlr3extralearners::mlr_learners_surv.glmnet",
        label = "Regularized Generalized Linear Model"
      )
    },

    #' @description
    #' Returns the set of selected features as reported by `glmnet::predict.glmnet()`
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

  active = list(
    #' @field native_model (`coxnet`)\cr
    #' The fitted model.
    native_model = function() {
      self$model$model
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
        model = glmnet_invoke(data, target, pv),
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
      pv$s = glmnet_get_lambda(self, pv)
      pv = glmnet_set_offset(task, "predict", pv)

      # get survival matrix
      fit = invoke(
        survival::survfit,
        formula = self$native_model,
        x = self$model$x,
        y = self$model$y,
        weights = self$model$weights,
        offset = self$model$offset,
        newx = newdata,
        se.fit = FALSE,
        .args = pv
      )

      # get linear predictor
      lp = as.numeric(
        invoke(predict, self$native_model, newx = newdata, type = "link", .args = pv)
      )

      mlr3proba::surv_return(times = fit$time, surv = t(fit$surv), lp = lp)
    }
  )
)

.extralrns_dict$add("surv.glmnet", LearnerSurvGlmnet)

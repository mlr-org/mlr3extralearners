#' @title Boosted Generalized Linear Survival Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.glmboost
#'
#' @description
#' Fits a generalized linear survival model using a boosting algorithm.
#' Calls [mboost::glmboost()] from \CRANpkg{mboost}.
#'
#' @template learner
#' @templateVar id surv.glmboost
#'
#' @section Prediction types:
#' This learner returns two to three prediction types:
#' 1. `lp`: a vector containing the linear predictors (relative risk scores),
#' where each score corresponds to a specific test observation.
#' Calculated using [mboost::predict.glmboost()].
#' If the `family` parameter is not `"coxph"`, `-lp` is returned, since non-coxph
#' families represent AFT-style distributions where lower `lp` values indicate higher risk.
#' 2. `crank`: same as `lp`.
#' 3. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' Calculated using [mboost::survFit()].
#' This prediction type is present only when the `family` distribution parameter
#' is equal to `"coxph"` (default).
#' By default the Breslow estimator is used for computing the baseline hazard.
#'
#' @inheritSection mlr_learners_regr.glmboost Offset
#'
#' @references
#' `r format_bib("buhlmann2003boosting")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerSurvGLMBoost = R6Class("LearnerSurvGLMBoost",
  inherit = mlr3proba::LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        family = p_fct(default = "coxph",
          levels = c(
            "coxph", "weibull", "loglog", "lognormal", "gehan", "cindex",
            "custom"), tags = "train"),
        custom.family = p_uty(tags = "train"),
        nuirange = p_uty(default = c(0, 100), tags = "train"),
        center = p_lgl(default = TRUE, tags = "train"),
        mstop = p_int(default = 100L, lower = 0L, tags = "train"),
        nu = p_dbl(default = 0.1, lower = 0, upper = 1, tags = "train"),
        risk = p_fct(default = "inbag",
          levels = c("inbag", "oobag", "none"), tags = "train"),
        oobweights = p_uty(default = NULL, tags = "train"),
        stopintern = p_lgl(default = FALSE, tags = "train"),
        trace = p_lgl(default = FALSE, tags = "train"),
        sigma = p_dbl(default = 0.1, lower = 0, upper = 1,
          tags = "train"),
        ipcw = p_uty(default = 1, tags = "train"),
        na.action = p_uty(default = stats::na.omit, tags = "train"),
        contrasts.arg = p_uty(tags = "train")
      )

      ps$values = list(family = "coxph")
      ps$add_dep("sigma", "family", CondEqual$new("cindex"))
      ps$add_dep("ipcw", "family", CondEqual$new("cindex"))
      ps$add_dep("oobweights", "risk", CondEqual$new("oobag"))

      super$initialize(
        id = "surv.glmboost",
        param_set = ps,
        feature_types = c("integer", "numeric", "factor", "logical"),
        predict_types = c("crank", "lp", "distr"),
        properties = c("weights", "selected_features", "importance", "offset"),
        packages = c("mlr3extralearners", "mboost"),
        man = "mlr3extralearners::mlr_learners_surv.glmboost",
        label = "Boosted Generalized Linear Model"
      )
    },

    #' @description
    #' Importance scores are extracted with the function [mboost::varimp()] and
    #' represent a feature's individual contribution to the risk reduction per
    #' boosting step of the fitted model.
    #' The higher the risk reduction, the larger the feature importance.
    #'
    #' **Note**: Importance is supported only for datasets with `numeric`
    #' features, as the presence of factors with multiple levels makes it
    #' difficult to get the original feature names.
    #'
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }

      if (self$model$task_has_factors) {
        stopf("Can't return importance scores as trained task had factor variables
              and original feature names cannot be retrieved")
      }

      var_imp = mboost::varimp(self$model)

      # remove intercept if it is present
      var_imp = var_imp[names(var_imp) != "(Intercept)"]

      sort(var_imp, decreasing = TRUE)
    },

    #' @description
    #' Selected features are extracted with the function [mboost::coef.glmboost()]
    #' which by default returns features with non-zero coefficients and for the
    #' final number of boosting iterations.
    #'
    #' **Note**: Selected features can be retrieved only for datasets with
    #' `numeric` features, as the presence of factors with multiple levels makes
    #' it difficult to get the original feature names.
    #'
    #' @return `character()`.
    selected_features = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }

      if (self$model$task_has_factors) {
        stopf("Can't return selected features as trained task had factor variables
              and original feature names cannot be retrieved")
      }

      # Per default, only coefficients of selected variables are returned by coef()
      features = names(self$model$coef())

      # remove intercept if it is present
      features[features != "(Intercept)"]
    }
  ),

  private = list(
    .train = function(task) {
      # parameter custom.family takes precedence over family
      if (!is.null(self$param_set$values$custom.family)) {
        self$param_set$values$family = "custom"
      }

      pars = self$param_set$get_values(tags = "train")

      saved_ctrl = mboost::boost_control()
      # center is deprecated but still returned
      saved_ctrl$center = NULL
      on.exit(invoke(mboost::boost_control, .args = saved_ctrl))
      is_ctrl_pars = (names(pars) %in% names(saved_ctrl))

      # ensure only relevant pars passed to fitted model
      if (any(is_ctrl_pars)) {
        pars$control = do.call(mboost::boost_control, pars[is_ctrl_pars])
        pars = pars[!is_ctrl_pars]
      }

      pars$weights = private$.get_weights(task)

      if ("offset" %in% task$properties) {
        pars$offset = task$offset$offset
      }

      family = switch(pars$family,
        coxph = mboost::CoxPH(),
        weibull = invoke(mboost::Weibull,
          .args = pars[names(pars) %in% formalArgs(mboost::Weibull)]),
        loglog = invoke(mboost::Loglog,
          .args = pars[names(pars) %in% formalArgs(mboost::Loglog)]),
        lognormal = invoke(mboost::Lognormal,
          .args = pars[names(pars) %in% formalArgs(mboost::Lognormal)]),
        gehan = mboost::Gehan(),
        cindex = invoke(mboost::Cindex,
          .args = pars[names(pars) %in% formalArgs(mboost::Cindex)]),
        custom = pars$custom.family
      )

      # FIXME - until issue closes
      pars = pars[!(names(pars) %in% formalArgs(mboost::Weibull))]
      pars = pars[!(names(pars) %in% formalArgs(mboost::Cindex))]
      pars = pars[!(names(pars) %in% c("family", "custom.family"))]

      # use formula interface if any factor feature
      if (any(task$feature_types$type == "factor")) {
        model = invoke(mboost::glmboost,
                       task$formula(task$feature_names),
                       data = task$data(),
                       family = family,
                       .args = pars)
        model$task_has_factors = TRUE
      } else {
        # use matrix interface if only numeric, integer or logical features
        # throws warning with center = TRUE about no intercept but it's okay
        model = invoke(mboost::glmboost,
                       as.matrix(task$data(cols = task$feature_names)),
                       y = task$truth(),
                       family = family,
                       .args = pars)
        model$task_has_factors = FALSE
      }

      model
    },

    .predict = function(task) {
      if (self$model$task_has_factors) {
        # data.frame if formula interface was used
        newdata = ordered_features(task, self)
      } else {
        # matrix otherwise
        newdata = as.matrix(ordered_features(task, self))
      }

      # predict linear predictor
      pars = self$param_set$get_values(tags = "predict")
      lp = as.numeric(
        invoke(predict,
               self$model,
               newdata = newdata,
               type = "link",
               .args = pars)
      )

      # predict survival
      if (is.null(self$param_set$values$family) || self$param_set$values$family == "coxph") {
        # uses Breslow estimator internally
        survfit = invoke(mboost::survFit, self$model, newdata = newdata)
        mlr3proba::.surv_return(times = survfit$time, surv = t(survfit$surv), lp = lp)
      } else {
        mlr3proba::.surv_return(lp = -lp)
      }
    }
  )
)

.extralrns_dict$add("surv.glmboost", LearnerSurvGLMBoost)

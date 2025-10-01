#' @title Boosted Generalized Additive Survival Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.gamboost
#'
#' @description
#' Fits a generalized additive survival model using a boosting algorithm.
#' Calls [mboost::gamboost()] from \CRANpkg{mboost}.
#'
#' @template learner
#' @templateVar id surv.gamboost
#'
#' @section Prediction types:
#' This learner returns two to three prediction types:
#' 1. `lp`: a vector containing the linear predictors (relative risk scores),
#' where each score corresponds to a specific test observation.
#' Calculated using [mboost::predict.gamboost()].
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
#' @template simple_example
LearnerSurvGAMBoost = R6Class("LearnerSurvGAMBoost",
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
        stopintern = p_uty(default = FALSE, tags = "train"),
        trace = p_lgl(default = FALSE, tags = "train"),
        oobweights = p_uty(default = NULL, tags = "train"),
        baselearner = p_fct(default = "bbs",
          levels = c("bbs", "bols", "btree"), tags = "train"),
        dfbase = p_int(default = 4L, lower = 0L, tags = "train"),
        sigma = p_dbl(default = 0.1, lower = 0, upper = 1,
          tags = "train"),
        ipcw = p_uty(default = 1, tags = "train"),
        na.action = p_uty(default = stats::na.omit, tags = "train")
      )

      ps$values = list(family = "coxph")
      ps$add_dep("sigma", "family", CondEqual$new("cindex"))
      ps$add_dep("ipcw", "family", CondEqual$new("cindex"))

      super$initialize(
        id = "surv.gamboost",
        param_set = ps,
        feature_types = c("integer", "numeric", "factor", "logical"),
        predict_types = c("crank", "lp", "distr"),
        properties = c("weights", "importance", "selected_features", "offset"),
        packages = c("mlr3extralearners", "mboost"),
        man = "mlr3extralearners::mlr_learners_surv.gamboost",
        label = "Boosted Generalized Additive Model"
      )
    },

    #' @description
    #' The importance scores are extracted with the function [mboost::varimp()]
    #' with the default arguments.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }

      vimp = as.numeric(mboost::varimp(self$model))
      names(vimp) = unname(stats::variable.names(self$model))

      sort(vimp, decreasing = TRUE)
    },

    #' @description
    #' Selected features are extracted with the function
    #' [mboost::variable.names.mboost()], with
    #' `used.only = TRUE`.
    #' @return `character()`.
    selected_features = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }

      unname(stats::variable.names(self$model, usedonly = TRUE))
    }
  ),

  private = list(
    .train = function(task) {

      # parameter custom.family takes precedence over family
      if (!is.null(self$param_set$values$custom.family)) {
        self$param_set$values$family = "custom"
      }

      pars = self$param_set$get_values(tags = "train")
      pars$weights = private$.get_weights(task)

      if ("offset" %in% task$properties) {
        pars$offset = task$offset$offset
      }

      # Save control settings and return on exit
      saved_ctrl = mboost::boost_control()
      on.exit(invoke(mboost::boost_control, .args = saved_ctrl))
      is_ctrl_pars = (names(pars) %in% names(saved_ctrl))

      # ensure only relevant pars passed to fitted model
      if (any(is_ctrl_pars)) {
        pars$control = do.call(mboost::boost_control, pars[is_ctrl_pars])
        pars = pars[!is_ctrl_pars]
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

      with_package("mboost", {
        invoke(mboost::gamboost,
          formula = task$formula(task$feature_names),
          data = task$data(), family = family, .args = pars)
      })
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      # predict linear predictor
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

.extralrns_dict$add("surv.gamboost", LearnerSurvGAMBoost)

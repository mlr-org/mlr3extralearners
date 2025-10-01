#' @title Gradient Boosting with Regression Trees Survival Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.blackboost
#'
#' @description
#' Gradient boosting with regression trees for survival analysis.
#' Calls [mboost::blackboost()] from \CRANpkg{mboost}.
#'
#' @section Prediction types:
#' This learner returns two to three prediction types:
#' 1. `lp`: a vector containing the linear predictors (relative risk scores),
#' where each score corresponds to a specific test observation.
#' Calculated using [mboost::predict.blackboost()].
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
#' @template learner
#' @templateVar id surv.blackboost
#'
#' @inheritSection mlr_learners_regr.glmboost Offset
#'
#' @details
#' `distr` prediction made by [mboost::survFit()].
#'
#' @references
#' `r format_bib("buhlmann2003boosting")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerSurvBlackBoost = R6Class("LearnerSurvBlackBoost",
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
        risk = p_fct(levels = c("inbag", "oobag", "none"), tags = "train"),
        stopintern = p_lgl(default = FALSE, tags = "train"),
        trace = p_lgl(default = FALSE, tags = "train"),
        oobweights = p_uty(tags = "train"),
        teststat = p_fct(
          default = "quadratic", levels = c("quadratic", "maximum"),
          tags = "train"),
        splitstat = p_fct(
          default = "quadratic", levels = c("quadratic", "maximum"),
          tags = "train"),
        splittest = p_lgl(default = FALSE, tags = "train"),
        testtype = p_fct(
          default = "Bonferroni",
          levels = c("Bonferroni", "MonteCarlo", "Univariate", "Teststatistic"), tags = "train"),
        maxpts = p_int(default = 25000L, lower = 1L, tags = "train"),
        abseps = p_dbl(default = 0.001, tags = "train"),
        releps = p_dbl(default = 0, tags = "train"),
        nmax = p_uty(tags = "train"),
        alpha = p_dbl(default = 0.05, lower = 0, upper = 1, tags = "train"),
        mincriterion = p_dbl(default = 0.95, lower = 0, upper = 1, tags = "train"),
        logmincriterion = p_dbl(default = log(0.95), upper = 0, tags = "train"),
        minsplit = p_int(default = 20L, lower = 0L, tags = "train"),
        minbucket = p_int(default = 7L, lower = 0L, tags = "train"),
        minprob = p_dbl(default = 0.01, lower = 0, upper = 1, tags = "train"),
        stump = p_lgl(default = FALSE, tags = "train"),
        lookahead = p_lgl(default = FALSE, tags = "train"),
        MIA = p_lgl(default = FALSE, tags = "train"),
        nresample = p_int(default = 9999L, lower = 1L, tags = "train"),
        tol = p_dbl(default = sqrt(.Machine$double.eps), lower = 0, tags = "train"),
        maxsurrogate = p_int(default = 0L, lower = 0L, tags = "train"),
        mtry = p_int(lower = 0L, tags = "train"),
        maxdepth = p_int(lower = 0L, tags = "train"),
        multiway = p_lgl(default = FALSE, tags = "train"),
        splittry = p_int(default = 2L, lower = 1L, tags = "train"),
        intersplit = p_lgl(default = FALSE, tags = "train"),
        majority = p_lgl(default = FALSE, tags = "train"),
        caseweights = p_lgl(default = TRUE, tags = "train"),
        sigma = p_dbl(default = 0.1, lower = 0, upper = 1,
          tags = "train"),
        ipcw = p_uty(default = 1, tags = "train"),
        na.action = p_uty(default = stats::na.omit, tags = "train")
      )

      ps$values = list(family = "coxph")
      ps$add_dep("sigma", "family", CondEqual$new("cindex"))
      ps$add_dep("ipcw", "family", CondEqual$new("cindex"))

      super$initialize(
        id = "surv.blackboost",
        param_set = ps,
        feature_types = c("integer", "numeric", "factor"),
        predict_types = c("crank", "lp", "distr"),
        properties = c("weights", "offset"),
        packages = c("mlr3extralearners", "mboost"),
        man = "mlr3extralearners::mlr_learners_surv.blackboost",
        label = "Gradient Boosting"
      )
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

      # mboost control
      # Save control settings and return on exit
      saved_ctrl = mboost::boost_control()
      is_ctrl_pars = (names(pars) %in% names(saved_ctrl))
      # ensure only relevant pars passed to fitted model
      if (any(is_ctrl_pars)) {
        pars$control = do.call(mboost::boost_control, pars[is_ctrl_pars])
        pars = pars[!is_ctrl_pars]
      }

      # GenzBretz control
      # Save control settings and return on exit
      saved_ctrl = mvtnorm::GenzBretz()
      is_ctrl_pars = (names(pars) %in% names(saved_ctrl))
      # ensure only relevant pars passed to fitted model
      if (any(is_ctrl_pars)) {
        pars$pargs = do.call(mvtnorm::GenzBretz, pars[is_ctrl_pars])
        pars = pars[!is_ctrl_pars]
      }

      # ctree control
      # Save control settings and return on exit
      saved_ctrl = partykit::ctree_control()
      is_ctrl_pars = (names(pars) %in% names(saved_ctrl))
      # ensure only relevant pars passed to fitted model
      if (any(is_ctrl_pars)) {
        pars$tree_controls = do.call(partykit::ctree_control, pars[is_ctrl_pars])
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

      invoke(mboost::blackboost,
        formula = task$formula(task$feature_names),
        data = task$data(), family = family, .args = pars)
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

.extralrns_dict$add("surv.blackboost", LearnerSurvBlackBoost)

#' @title Boosted Generalized Linear Survival Learner
#' @author RaphaelS1
#'
#' @name mlr_learners_surv.glmboost
#'
#' @template class_learner
#' @templateVar id surv.glmboost
#' @templateVar caller glmboost
#'
#' @details
#' `distr` prediction made by [mboost::survFit()].
#'
#' @references
#' Bühlmann P, Yu B (2003).
#' “Boosting With the L2 Loss.”
#' Journal of the American Statistical Association, 98(462), 324–339.
#' \doi{10.1198/016214503000125}
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerSurvGLMBoost = R6Class("LearnerSurvGLMBoost",
  inherit = LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamDbl$new(
            id = "offset", default = NULL, special_vals = list(NULL),
            tags = "train"),
          ParamFct$new(
            id = "family", default = "coxph",
            levels = c(
              "coxph", "weibull", "loglog", "lognormal", "gehan", "cindex",
              "custom"), tags = "train"),
          ParamUty$new(id = "custom.family", tags = "train"),
          ParamUty$new(id = "nuirange", default = c(0, 100), tags = "train"),
          ParamLgl$new(id = "center", default = TRUE, tags = "train"),
          ParamInt$new(id = "mstop", default = 100L, lower = 0L, tags = "train"),
          ParamDbl$new(id = "nu", default = 0.1, lower = 0, upper = 1,
                       tags = "train"),
          ParamFct$new(id = "risk", levels = c("inbag", "oobag", "none"),
                       tags = "train"),
          ParamUty$new(id = "oobweights", default = NULL, tags = "train"),
          ParamLgl$new(id = "stopintern", default = FALSE, tags = "train"),
          ParamLgl$new(id = "trace", default = FALSE, tags = "train"),
          ParamDbl$new(
            id = "sigma", default = 0.1, lower = 0, upper = 1,
            tags = "train"),
          ParamUty$new(id = "ipcw", default = 1, tags = "train"),
          ParamUty$new(id = "na.action", default = stats::na.omit, tags = "train"),
          ParamUty$new(id = "contrasts.arg", tags = "train")
        )
      )

      ps$values = list(family = "coxph")
      ps$add_dep("sigma", "family", CondEqual$new("cindex"))
      ps$add_dep("ipcw", "family", CondEqual$new("cindex"))
      ps$add_dep("oobweights", "risk", CondEqual$new("oobag"))

      super$initialize(
        id = "surv.glmboost",
        param_set = ps,
        feature_types = c("integer", "numeric", "factor", "logical"),
        predict_types = c("distr", "crank", "lp"),
        properties = "weights",
        packages = c("mboost", "pracma"),
        man = "mlr3extralearners::mlr_learners_surv.glmboost"
      )
    }

    #' Importance is supported but fails tests as internally data
    #' is coerced to model
    #' matrix and original names can't be recovered.
    #'
    # importance = function() {
    #   if (is.null(self$model)) {
    #     stopf("No model stored")
    #   }
    #
    #   sort(mboost::varimp(self$model)[-1], decreasing = TRUE)
    # },

    #' Importance is supported but fails tests as internally data
    #' is coerced to model
    #' matrix and original names can't be recovered.
    #'
    #' description
    #' Selected features are extracted with the function
    #' [mboost::variable.names.mboost()], with
    #' `used.only = TRUE`.
    #' return `character()`.
    # selected_features = function() {
    #   if (is.null(self$model)) {
    #     stopf("No model stored")
    #   }
    #
    #   sel = unique(names(self$model$model.frame())[self$model$xselect()])
    #   sel = sel[!(sel %in% "(Intercept)")]
    #
    #   return(sel)
    # }
  ),

  private = list(
    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")

      saved_ctrl = mboost::boost_control()
      on.exit(mlr3misc::invoke(mboost::boost_control, .args = saved_ctrl))
      is_ctrl_pars = (names(pars) %in% names(saved_ctrl))

      # ensure only relevant pars passed to fitted model
      if (any(is_ctrl_pars)) {
        pars$control = do.call(mboost::boost_control, pars[is_ctrl_pars])
        pars = pars[!is_ctrl_pars]
      }

      if ("weights" %in% task$properties) {
        pars$weights = task$weights$weight
      }

      family = switch(pars$family,
        coxph = mboost::CoxPH(),
        weibull = mlr3misc::invoke(mboost::Weibull,
          .args = pars[names(pars) %in% methods::formalArgs(mboost::Weibull)]),
        loglog = mlr3misc::invoke(mboost::Loglog,
          .args = pars[names(pars) %in% methods::formalArgs(mboost::Loglog)]),
        lognormal = mlr3misc::invoke(mboost::Lognormal,
          .args = pars[names(pars) %in% methods::formalArgs(mboost::Lognormal)]),
        gehan = mboost::Gehan(),
        cindex = mlr3misc::invoke(mboost::Cindex,
          .args = pars[names(pars) %in% methods::formalArgs(mboost::Cindex)]),
        custom = pars$custom.family
      )

      # FIXME - until issue closes
      pars = pars[!(names(pars) %in% methods::formalArgs(mboost::Weibull))]
      pars = pars[!(names(pars) %in% methods::formalArgs(mboost::Cindex))]
      pars = pars[!(names(pars) %in% c("family", "custom.family"))]

      mlr3misc::invoke(mboost::glmboost, task$formula(task$feature_names),
        data = task$data(), family = family, .args = pars)
    },

    .predict = function(task) {

      newdata = task$data(cols = task$feature_names)

      # predict linear predictor
      lp = as.numeric(mlr3misc::invoke(predict, self$model,
        newdata = newdata, type = "link"))

      # predict survival
      surv = mlr3misc::invoke(mboost::survFit, self$model, newdata = newdata)
      surv$cdf = 1 - surv$surv

      # define WeightedDiscrete distr6 object from predicted survival function
      x = rep(list(data = data.frame(x = surv$time, cdf = 0)), task$nrow)
      for (i in 1:task$nrow) {
        x[[i]]$cdf = surv$cdf[, i]
      }

      distr = distr6::VectorDistribution$new(
        distribution = "WeightedDiscrete", params = x,
        decorators = c("CoreStatistics", "ExoticStatistics"))

      # FIXME - RE-ADD ONCE INTERPRETATION IS CLEAR
      # response = NULL
      # if (!is.null(self$param_set$values$family)) {
      #   if (self$param_set$values$family %in% c("weibull", "loglog", "lognormal", "gehan")) {
      #     response = exp(lp)
      #   }
      # }

      list(crank = -distr$mean(), distr = distr, lp = lp)
    }
  )
)

.extralrns_dict$add("surv.glmboost", LearnerSurvGLMBoost)

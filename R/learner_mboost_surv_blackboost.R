#' @title Gradient Boosting with Regression Trees Survival Learner
#' @author RaphaelS1
#'
#' @name mlr_learners_surv.blackboost
#'
#' @template class_learner
#' @templateVar id surv.blackboost
#' @templateVar caller blackboost
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
LearnerSurvBlackBoost = R6Class("LearnerSurvBlackBoost",
  inherit = LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamFct$new(
            id = "family", default = "coxph",
            levels = c(
              "coxph", "weibull", "loglog", "lognormal", "gehan", "cindex",
              "custom"), tags = "train"),
          ParamUty$new(id = "custom.family", tags = "train"),
          ParamUty$new(id = "nuirange", default = c(0, 100), tags = "train"),
          ParamUty$new(id = "offset", tags = "train"),
          ParamLgl$new(id = "center", default = TRUE, tags = "train"),
          ParamInt$new(id = "mstop", default = 100L, lower = 0L, tags = "train"),
          ParamDbl$new(id = "nu", default = 0.1, lower = 0, upper = 1, tags = "train"),
          ParamFct$new(id = "risk", levels = c("inbag", "oobag", "none"), tags = "train"),
          ParamLgl$new(id = "stopintern", default = FALSE, tags = "train"),
          ParamLgl$new(id = "trace", default = FALSE, tags = "train"),
          ParamUty$new(id = "oobweights", tags = "train"),
          ParamFct$new(
            id = "teststat", default = "quadratic", levels = c("quadratic", "maximum"),
            tags = "train"),
          ParamFct$new(
            id = "splitstat", default = "quadratic", levels = c("quadratic", "maximum"),
            tags = "train"),
          ParamLgl$new(id = "splittest", default = FALSE, tags = "train"),
          ParamFct$new(
            id = "testtype", default = "Bonferroni",
            levels = c("Bonferroni", "MonteCarlo", "Univariate", "Teststatistic"), tags = "train"),
          ParamInt$new(id = "maxpts", default = 25000L, lower = 1L, tags = "train"),
          ParamDbl$new(id = "abseps", default = 0.001, tags = "train"),
          ParamDbl$new(id = "releps", default = 0, tags = "train"),
          ParamUty$new(id = "nmax", tags = "train"),
          ParamDbl$new(id = "alpha", default = 0.05, lower = 0, upper = 1, tags = "train"),
          ParamDbl$new(id = "mincriterion", default = 0.95, lower = 0, upper = 1, tags = "train"),
          ParamDbl$new(id = "logmincriterion", default = log(0.95), upper = 0, tags = "train"),
          ParamInt$new(id = "minsplit", default = 20L, lower = 0L, tags = "train"),
          ParamInt$new(id = "minbucket", default = 7L, lower = 0L, tags = "train"),
          ParamDbl$new(id = "minprob", default = 0.01, lower = 0, upper = 1, tags = "train"),
          ParamLgl$new(id = "stump", default = FALSE, tags = "train"),
          ParamLgl$new(id = "lookahead", default = FALSE, tags = "train"),
          ParamLgl$new(id = "MIA", default = FALSE, tags = "train"),
          ParamInt$new(id = "nresample", default = 9999L, lower = 1L, tags = "train"),
          ParamDbl$new(id = "tol", default = sqrt(.Machine$double.eps), lower = 0, tags = "train"),
          ParamInt$new(id = "maxsurrogate", default = 0L, lower = 0L, tags = "train"),
          ParamInt$new(id = "mtry", lower = 0L, tags = "train"),
          ParamInt$new(id = "maxdepth", lower = 0L, tags = "train"),
          ParamLgl$new(id = "multiway", default = FALSE, tags = "train"),
          ParamInt$new(id = "splittry", default = 2L, lower = 1L, tags = "train"),
          ParamLgl$new(id = "intersplit", default = FALSE, tags = "train"),
          ParamLgl$new(id = "majority", default = FALSE, tags = "train"),
          ParamLgl$new(id = "caseweights", default = TRUE, tags = "train"),
          ParamDbl$new(
            id = "sigma", default = 0.1, lower = 0, upper = 1,
            tags = "train"),
          ParamUty$new(id = "ipcw", default = 1, tags = "train"),
          ParamUty$new(id = "na.action", default = na.omit, tags = "train")
        )
      )

      ps$values = list(family = "coxph")
      ps$add_dep("sigma", "family", CondEqual$new("cindex"))
      ps$add_dep("ipcw", "family", CondEqual$new("cindex"))

      super$initialize(
        id = "surv.blackboost",
        param_set = ps,
        feature_types = c("integer", "numeric", "factor"),
        predict_types = c("distr", "crank", "lp", "response"),
        properties = "weights",
        packages = c("mboost", "pracma"),
        man = "mlr3extralearners::mlr_learners_surv.blackboost"
      )
    }
  ),

  private = list(
    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")

      if ("weights" %in% task$properties) {
        pars$weights = task$weights$weight
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

      # if ("weights" %in% task$properties)
      #   pars$weights = task$weights$weight

      family = switch(pars$family,
        coxph = mboost::CoxPH(),
        weibull = mlr3misc::invoke(mboost::Weibull,
          .args = pars[names(pars) %in% formalArgs(mboost::Weibull)]),
        loglog = mlr3misc::invoke(mboost::Loglog,
          .args = pars[names(pars) %in% formalArgs(mboost::Loglog)]),
        lognormal = mlr3misc::invoke(mboost::Lognormal,
          .args = pars[names(pars) %in% formalArgs(mboost::Lognormal)]),
        gehan = mboost::Gehan(),
        cindex = mlr3misc::invoke(mboost::Cindex,
          .args = pars[names(pars) %in% formalArgs(mboost::Cindex)]),
        custom = pars$custom.family
      )

      # FIXME - until issue closes
      pars = pars[!(names(pars) %in% formalArgs(mboost::Weibull))]
      pars = pars[!(names(pars) %in% formalArgs(mboost::Cindex))]
      pars = pars[!(names(pars) %in% c("family", "custom.family"))]

      mlr3misc::invoke(mboost::blackboost,
        formula = task$formula(task$feature_names),
        data = task$data(), family = family, .args = pars)
    },

    .predict = function(task) {

      newdata = task$data(cols = task$feature_names)
      # predict linear predictor
      lp = as.numeric(mlr3misc::invoke(predict, self$model, newdata = newdata, type = "link"))

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

      response = NULL
      if (!is.null(self$param_set$values$family)) {
        if (self$param_set$values$family %in% c("weibull", "loglog", "lognormal", "gehan")) {
          response = exp(lp)
        }
      }

      list(crank = lp, distr = distr, lp = lp, response = response)
    }
  )
)

.extralrns_dict$add("surv.blackboost", LearnerSurvBlackBoost)

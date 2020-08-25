#' @title Survival Cox Model with Cross-Validation Likelihood Based Boosting Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.cv_coxboost
#'
#' @template class_learner
#' @templateVar id surv.cv_coxboost
#' @templateVar caller cv.CoxBoost
#'
#' @details
#' Use [LearnerSurvCoxboost] and [LearnerSurvCVCoxboost] for Cox boosting without and with internal
#' cross-validation of boosting step number, respectively. Tuning using the internal optimizer in
#' [LearnerSurvCVCoxboost] may be more efficient when tuning `stepno` only. However, for tuning
#' multiple hyperparameters, \CRANpkg{mlr3tuning} and [LearnerSurvCoxboost] will likely give better
#' results.
#'
#' If `penalty == "optimCoxBoostPenalty"` then [CoxBoost::optimCoxBoostPenalty] is used to determine
#' the penalty value to be used in [CoxBoost::cv.CoxBoost].
#'
#' @references
#' Binder, H., Allignol, A., Schumacher, M., and Beyersmann, J. (2009).
#' Boosting for high-dimensional time-to-event data with competing risks.
#' Bioinformatics, 25:890-896.
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvCVCoxboost = R6Class("LearnerSurvCVCoxboost",
  inherit = LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamInt$new(
            id = "maxstepno", default = 100, lower = 0,
            tags = c("train", "cvpars")),
          ParamInt$new(id = "K", default = 10, lower = 2, tags = c("train", "cvpars")),
          ParamFct$new(
            id = "type", default = "verweij", levels = c("verweij", "naive"),
            tags = c("train", "cvpars")),
          ParamUty$new(id = "folds", default = NULL, tags = c("train", "cvpars")),
          ParamInt$new(
            id = "minstepno", default = 50, lower = 0,
            tags = c("train", "optimPenalty")),
          ParamDbl$new(id = "start.penalty", tags = c("train", "optimPenalty")),
          ParamInt$new(id = "iter.max", default = 10, lower = 1, tags = c("train", "optimPenalty")),
          ParamDbl$new(
            id = "upper.margin", default = 0.05, lower = 0, upper = 1,
            tags = c("train", "optimPenalty")),
          ParamUty$new(id = "unpen.index", tags = "train"),
          ParamLgl$new(id = "standardize", default = TRUE, tags = "train"),
          ParamDbl$new(
            id = "penalty", special_vals = list("optimCoxBoostPenalty"),
            tags = c("train", "optimPenalty")),
          ParamFct$new(
            id = "criterion", default = "pscore",
            levels = c("pscore", "score", "hpscore", "hscore"), tags = "train"),
          ParamDbl$new(id = "stepsize.factor", default = 1, tags = "train"),
          ParamFct$new(
            id = "sf.scheme", default = "sigmoid", levels = c("sigmoid", "linear"),
            tags = "train"),
          ParamUty$new(id = "pendistmat", tags = "train"),
          ParamUty$new(id = "connected.index", tags = "train"),
          ParamLgl$new(id = "x.is.01", default = FALSE, tags = "train"),
          ParamLgl$new(id = "return.score", default = TRUE, tags = "train"),
          ParamLgl$new(id = "trace", default = FALSE, tags = "train"),
          ParamUty$new(id = "at.step", tags = "predict")
        )
      )

      super$initialize(
        # see the mlr3book for a description: https://mlr3book.mlr-org.com/extending-mlr3.html
        id = "surv.cv_coxboost",
        packages = c("CoxBoost", "pracma"),
        feature_types = c("integer", "numeric", "factor", "logical"),
        predict_types = c("distr", "crank", "lp"),
        param_set = ps,
        properties = "weights",
        # the help file name is the one used as @name in the roxygen2 block
        man = "mlr3extralearners::mlr_learners_surv.cv_coxboost"
      )
    }
  ),

  private = list(
    .train = function(task) {

      opt_pars = self$param_set$get_values(tags = "optimPenalty")
      cv_pars = self$param_set$get_values(tags = "cvpars")
      cox_pars = setdiff(
        self$param_set$get_values(tags = "train"),
        c(opt_pars, cv_pars))

      if ("weights" %in% task$properties) {
        cox_pars$weights = as.numeric(task$weights$weight)
      }

      pen_optim = FALSE
      if (!is.null(opt_pars$penalty)) {
        if (opt_pars$penalty == "optimCoxBoostPenalty") {
          pen_optim = TRUE
          opt_pars$penalty = NULL
        }
      }

      with_package("CoxBoost", {
        if (pen_optim) {
          optim = mlr3misc::invoke(
            CoxBoost::optimCoxBoostPenalty,
            time = task$truth()[, 1],
            status = task$truth()[, 2],
            x = model.matrix(
              ~.,
              as.data.frame(task$data(cols = task$feature_names)))[, -1,
              drop = FALSE],
            .args = c(opt_pars, cv_pars)
          )

          return(mlr3misc::invoke(
            CoxBoost::CoxBoost,
            time = task$truth()[, 1],
            status = task$truth()[, 2],
            x = model.matrix(
              ~.,
              as.data.frame(task$data(cols = task$feature_names)))[, -1,
              drop = FALSE],
            stepno = optim$cv.res$optimal.step,
            penalty = optim$penalty,
            .args = cox_pars
          ))
        } else {
          optimal_step = mlr3misc::invoke(
            CoxBoost::cv.CoxBoost,
            time = task$truth()[, 1],
            status = task$truth()[, 2],
            x = model.matrix(
              ~.,
              as.data.frame(task$data(cols = task$feature_names)))[, -1,
              drop = FALSE],
            .args = c(cv_pars, cox_pars)
          )$optimal.step

          return(mlr3misc::invoke(
            CoxBoost::CoxBoost,
            time = task$truth()[, 1],
            status = task$truth()[, 2],
            x = model.matrix(
              ~.,
              as.data.frame(task$data(cols = task$feature_names)))[, -1,
              drop = FALSE],
            stepno = optimal_step,
            .args = cox_pars
          ))
        }
      })
    },

    .predict = function(task) {

      pars = self$param_set$get_values(tags = "predict")

      lp = as.numeric(mlr3misc::invoke(predict,
        self$model,
        newdata = model.matrix(
          ~.,
          as.data.frame(task$data(cols = task$feature_names)))[, -1,
          drop = FALSE],
        .args = pars,
        type = "lp"))

      cdf = mlr3misc::invoke(predict,
        self$model,
        newdata = model.matrix(
          ~.,
          as.data.frame(task$data(cols = task$feature_names)))[, -1,
          drop = FALSE],
        .args = pars,
        type = "CIF",
        times = sort(unique(self$model$time)))

      # define WeightedDiscrete distr6 object from predicted survival function
      x = rep(list(list(x = sort(unique(self$model$time)), cdf = 0)), task$nrow)
      for (i in 1:task$nrow) {
        x[[i]]$cdf = cdf[i, ]
      }

      distr = distr6::VectorDistribution$new(
        distribution = "WeightedDiscrete", params = x,
        decorators = c("CoreStatistics", "ExoticStatistics"))

      mlr3proba::PredictionSurv$new(task = task, crank = lp, distr = distr, lp = lp)
    }
  )
)

lrns_dict$add("surv.cv_coxboost", LearnerSurvCVCoxboost)

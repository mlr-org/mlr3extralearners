#' @title Survival Cox Model with Cross-Validation Likelihood Based Boosting Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.cv_coxboost
#'
#' @description
#' Fits a survival Cox model using likelihood based boosting and internal cross-validation for the
#' number of steps.
#' Calls [CoxBoost::CoxBoost()] or [CoxBoost::cv.CoxBoost()] from package 'CoxBoost'.
#'
#' @inheritSection mlr_learners_surv.coxboost Prediction types
#' @template learner
#' @templateVar id surv.cv_coxboost
#'
#' @template install_coxboost
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
#' `r format_bib("binder2009boosting")`
#'
#' @template seealso_learner
#' @export
#' @examplesIf learner_is_runnable("surv.cv_coxboost")
#' task = tsk("rats")
#' task$col_roles$feature = c("litter", "rx")
#' learner = lrn("surv.cv_coxboost", maxstepno = 20)
#' splits = partition(task)
#' learner$train(task, splits$train)
#' pred = learner$predict(task, splits$test)
LearnerSurvCVCoxboost = R6Class("LearnerSurvCVCoxboost",
  inherit = mlr3proba::LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        maxstepno = p_int(default = 100, lower = 0, tags = "train"),
        K = p_int(default = 10, lower = 2, tags = "train"),
        type = p_fct(default = "verweij", levels = c("verweij", "naive"), tags = "train"),
        folds = p_uty(default = NULL, tags = "train"),
        minstepno = p_int(default = 50, lower = 0, tags = "train"),
        start.penalty = p_dbl(tags = "train"),
        iter.max = p_int(default = 10, lower = 1, tags = "train"),
        upper.margin = p_dbl(default = 0.05, lower = 0, upper = 1, tags = "train"),
        unpen.index = p_uty(tags = "train"),
        standardize = p_lgl(default = TRUE, tags = "train"),
        penalty = p_dbl(special_vals = list("optimCoxBoostPenalty"), tags = "train"),
        criterion = p_fct(default = "pscore", levels = c("pscore", "score", "hpscore", "hscore"), tags = "train"),
        stepsize.factor = p_dbl(default = 1, tags = "train"),
        sf.scheme = p_fct(default = "sigmoid", levels = c("sigmoid", "linear"), tags = "train"),
        pendistmat = p_uty(tags = "train"),
        connected.index = p_uty(tags = "train"),
        x.is.01 = p_lgl(default = FALSE, tags = "train"),
        return.score = p_lgl(default = TRUE, tags = "train"),
        trace = p_lgl(default = FALSE, tags = "train"),
        at.step = p_uty(tags = "predict")
      )

      super$initialize(
        id = "surv.cv_coxboost",
        packages = c("mlr3extralearners", "CoxBoost"),
        feature_types = c("integer", "numeric"),
        predict_types = c("crank", "lp", "distr"),
        param_set = ps,
        properties = c("weights", "selected_features"),
        man = "mlr3extralearners::mlr_learners_surv.cv_coxboost",
        label = "Likelihood-based Boosting"
      )
    },

    #' @description
    #' Returns the set of selected features which have non-zero coefficients.
    #' Calls the internal `coef.CoxBoost()` function.
    #'
    #' @param at_step (`integer(1)`)\cr
    #' Which boosting step to get the coefficients for. If no step is given
    #' (default), the final boosting step is used.
    #'
    #' @return (`character()`) vector of feature names.
    selected_features = function(at_step = NULL) {
      if (is.null(self$model)) {
        stopf("No model stored")
      }

      coefs = invoke(stats::coef, self$model, at.step = at_step)
      coefs = coefs[coefs != 0]
      names(coefs)
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")

      optim_args = c("minstepno", "start.penalty", "iter.max", "upper.margin", "penalty")
      cv_args = c("maxstepno", "K", "type", "folds")

      opt_pars = pars[names(pars) %in% optim_args]
      cv_pars = pars[names(pars) %in% cv_args]
      cox_pars = pars[names(pars) %nin% c(names(opt_pars), names(cv_pars))]

      cox_pars$weights = private$.get_weights(task)

      data = task$data()
      tn = task$target_names
      time = data[[tn[1L]]]
      status = data[[tn[2L]]]
      data = as.matrix(data[, !tn, with = FALSE])

      pen_optim = FALSE
      if (!is.null(opt_pars$penalty)) {
        if (opt_pars$penalty == "optimCoxBoostPenalty") {
          pen_optim = TRUE
          opt_pars$penalty = NULL
        }
      } else {
        cv_pars = insert_named(cv_pars, list(penalty = NULL))
      }

      with_package("CoxBoost", {
        if (pen_optim) {
          optim = invoke(
            CoxBoost::optimCoxBoostPenalty,
            time = time,
            status = status,
            x = data,
            .args = c(opt_pars, cv_pars)
          )

          return(invoke(
            CoxBoost::CoxBoost,
            time = time,
            status = status,
            x = data,
            stepno = optim$cv.res$optimal.step,
            penalty = optim$penalty,
            .args = cox_pars
          ))
        } else {
          optimal_step = invoke(
            CoxBoost::cv.CoxBoost,
            time = time,
            status = status,
            x = data,
            .args = c(cv_pars, cox_pars)
          )$optimal.step

          return(invoke(
            CoxBoost::CoxBoost,
            time = time,
            status = status,
            x = data,
            stepno = optimal_step,
            .args = cox_pars
          ))
        }
      })
    },

    .predict = function(task) {

      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = as.matrix(ordered_features(task, self))

      lp = as.numeric(invoke(predict,
        self$model,
        newdata = newdata,
        .args = pars,
        type = "lp"))

      # all the unique training time points
      times = sort(unique(self$model$time))
      surv = invoke(predict,
        self$model,
        newdata = newdata,
        .args = pars,
        type = "risk",
        times = times)

      mlr3proba::.surv_return(times = times, surv = surv, lp = lp)
    }
  )
)

.extralrns_dict$add("surv.cv_coxboost", LearnerSurvCVCoxboost)

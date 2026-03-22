#' @title Competing Risks Cox Learner with Likelihood Based Boosting
#' @author bblodfon
#' @name mlr_learners_cmprsk.coxboost
#'
#' @description
#' Fits a competing risks Cox model using likelihood based boosting.
#' Calls `CoxBoost::CoxBoost()` or `CoxBoost::cv.CoxBoost()` from package
#' \CRANpkg{CoxBoost}.
#' Predicts cumulative incidence functions (one CIF matrix per cause, rows = observations,
#' columns = times).
#' If `times` are not provided for prediction, the unique event times (across causes)
#' from the training set are used by default.
#'
#' @template learner
#' @templateVar id cmprsk.coxboost
#'
#' @section Custom mlr3 parameters:
#' - `cv`: If `TRUE`, uses cross-validation with `CoxBoost::cv.CoxBoost()` to
#' select the optimal number of boosting steps, then refits the final model using
#' `CoxBoost::CoxBoost()` with this value. Initialized to `FALSE` by default.
#' - `penalty`: If set to `"optimCoxBoostPenalty"`, uses `CoxBoost::optimCoxBoostPenalty()`
#' to determine the optimal penalty value and number of steps (via
#' `CoxBoost::cv.CoxBoost()`) for the final model.
#'
#' @section Initial parameter values:
#' - `cmprsk`: Type of competing risks analysis. Initialized to `"csh"`
#' (**cause-specific hazards**) which models each cause separately, treating other
#' causes as censored. `"ccsh"` (**combined cause-specific hazards**) is another
#' option which combines information across causes for variable selection using
#' a joint criterion.
#'
#' @references
#' `r format_bib("binder2009")`
#'
#' @template seealso_learner
#' @template example_cmprsk_coxboost
#' @export
LearnerCompRisksCoxboost = R6Class("LearnerCompRisksCoxboost",
  inherit = mlr3cmprsk::LearnerCompRisks,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        # mlr3-specific parameter
        cv               = p_lgl(init = FALSE, tags = "train"),
        # cv.CoxBoost parameters
        maxstepno        = p_int(default = 100L, lower = 0L, tags = "train"),
        K                = p_int(default = 10L, lower = 2L, tags = "train"),
        type             = p_fct(default = "verweij", levels = c("verweij", "naive"), tags = "train"),
        folds            = p_uty(default = NULL, tags = "train"),
        # optimCoxBoostPenalty parameters
        minstepno        = p_int(default = 50L, lower = 0L, tags = "train"),
        start.penalty    = p_dbl(tags = "train"),
        iter.max         = p_int(default = 10L, lower = 1L, tags = "train"),
        upper.margin     = p_dbl(default = 0.05, lower = 0, upper = 1, tags = "train"),
        # CoxBoost parameters
        unpen.index      = p_uty(tags = "train"),
        standardize      = p_lgl(default = TRUE, tags = "train"),
        stepno           = p_int(default = 100L, lower = 0L, tags = "train"),
        penalty          = p_dbl(special_vals = list("optimCoxBoostPenalty"), tags = "train"),
        criterion        = p_fct(default = "pscore", levels = c("pscore", "score", "hpscore", "hscore"), tags = "train"),
        stepsize.factor  = p_dbl(default = 1, tags = "train"),
        sf.scheme        = p_fct(default = "sigmoid", levels = c("sigmoid", "linear"), tags = "train"),
        pendistmat       = p_uty(tags = "train"),
        connected.index  = p_uty(tags = "train"),
        x.is.01          = p_lgl(default = FALSE, tags = "train"),
        return.score     = p_lgl(default = TRUE, tags = "train"),
        trace            = p_lgl(default = FALSE, tags = "train"),
        cmprsk           = p_fct(init = "csh", levels = c("csh", "ccsh"), tags = "train"),
        coupled.strata   = p_lgl(default = TRUE, tags = "train"),
        at.step          = p_uty(tags = "predict"),
        times            = p_uty(tags = "predict")
      )

      super$initialize(
        id = "cmprsk.coxboost",
        packages = c("mlr3extralearners", "CoxBoost"),
        feature_types = c("integer", "numeric"),
        predict_types = "cif",
        param_set = param_set,
        properties = c("weights", "selected_features"),
        man = "mlr3extralearners::mlr_learners_cmprsk.coxboost",
        label = "Likelihood-based Boosting for Competing Risks"
      )
    },

    #' @description
    #' Returns the set of cause-specific selected features which have non-zero coefficients.
    #' Calls the internal `coef.CoxBoost()` function.
    #'
    #' @param at_step (`integer(1)`)\cr
    #'  Which boosting step to get the coefficients for. If no step is given
    #'  (default), the final boosting step is used.
    #' @param cause (`integer(1)`)\cr
    #'  Integer value indicating the event of interest.
    #'
    #' @return (`character()`) vector of feature names.
    selected_features = function(at_step = NULL, cause = 1) {
      if (is.null(self$model)) {
        stopf("No model stored")
      }

      causes = as.numeric(self$model$causes)
      # check if cause is valid
      if (cause %nin% causes) {
        stopf("Invalid cause. Use one of: %s", paste(causes, collapse = ", "))
      }

      coefs = coef_list = invoke(stats::coef, self$model, at.step = at_step)[[cause]]
      coefs = coefs[coefs != 0]
      names(coefs)
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      use_cv = isTRUE(pars$cv)
      pars$cv = NULL

      optim_args = c("minstepno", "start.penalty", "iter.max", "upper.margin", "penalty")
      cv_args = c("maxstepno", "K", "type", "folds")

      opt_pars = pars[names(pars) %in% optim_args]
      cv_pars = pars[names(pars) %in% cv_args]
      cox_pars = pars[names(pars) %nin% c(names(opt_pars), names(cv_pars))]
      cox_pars$weights = private$.get_weights(task)

      # penalty can be in both opt_pars and cox_pars, so handle accordingly
      if (!is.null(opt_pars$penalty) && !identical(opt_pars$penalty, "optimCoxBoostPenalty")) {
        cox_pars$penalty = opt_pars$penalty
      }

      data = task$data()
      tn = task$target_names
      time = data[[tn[1L]]]
      status = data[[tn[2L]]]
      data = as.matrix(data[, !tn, with = FALSE])

      with_package("CoxBoost", {
        if (!use_cv) {
          if (!is.null(opt_pars$penalty) && identical(opt_pars$penalty, "optimCoxBoostPenalty")) {
            stopf("'optimCoxBoostPenalty' requires `cv = TRUE`.")
          }

          return(invoke(
            CoxBoost::CoxBoost,
            time = time,
            status = status,
            x = data,
            .args = cox_pars
          ))
        }

        pen_optim = identical(opt_pars$penalty, "optimCoxBoostPenalty")
        if (pen_optim) {
          opt_pars$penalty = NULL
        } else if (is.null(opt_pars$penalty)) {
          cv_pars = insert_named(cv_pars, list(penalty = NULL))
        }

        if (pen_optim) {
          # find optimal penalty and step using optimCoxBoostPenalty
          optim = invoke(
            CoxBoost::optimCoxBoostPenalty,
            time = time,
            status = status,
            x = data,
            .args = c(opt_pars, cv_pars, cox_pars[names(cox_pars) != "stepno"])
          )

          return(invoke(
            CoxBoost::CoxBoost,
            time = time,
            status = status,
            x = data,
            stepno = optim$cv.res$optimal.step,
            penalty = optim$penalty,
            .args = cox_pars[names(cox_pars) != "stepno"]
          ))
        }

        # find optimal step using cv.CoxBoost
        optimal_step = invoke(
          CoxBoost::cv.CoxBoost,
          time = time,
          status = status,
          x = data,
          .args = c(cv_pars, cox_pars[names(cox_pars) != "stepno"])
        )$optimal.step

        invoke(
          CoxBoost::CoxBoost,
          time = time,
          status = status,
          x = data,
          stepno = optimal_step,
          .args = cox_pars[names(cox_pars) != "stepno"]
        )
      })
    },

    .predict = function(task) {
      pv = self$param_set$get_values(tags = "predict")
      # default to unique training times if not provided
      pv$times = pv$times %||% self$model$event.times
      newdata = as.matrix(ordered_features(task, self))

      cif_list = invoke(
        predict,
        self$model,
        newdata = newdata,
        type = "CIF",
        .args = pv
      )

      # set column names for each matrix in the list to be the time points
      cif_list = lapply(cif_list, function(mat) {
        colnames(mat) = pv$times
        mat
      })

      list(cif = cif_list)
    }
  )
)

.extralrns_dict$add("cmprsk.coxboost", LearnerCompRisksCoxboost)

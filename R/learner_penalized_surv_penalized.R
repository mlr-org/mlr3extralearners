#' @title Survival L1 and L2 Penalized Cox Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.penalized
#'
#' @description
#' Penalized (L1 and L2) Cox Proportional Hazards model.
#' Calls [penalized::penalized()] from \CRANpkg{penalized}.
#'
#' @section Prediction types:
#' This learner returns two prediction types:
#' 1. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' Calculated using the internal [penalized::predict()] function.
#' By default the Breslow estimator [penalized::breslow()] is used for computing
#' the baseline hazard.
#' 2. `crank`: the expected mortality using [mlr3proba::.surv_return()].
#'
#' @section Initial parameter values:
#' - `trace` is set to `"FALSE"` to disable printing output during model training.
#'
#' @template learner
#' @templateVar id surv.penalized
#'
#' @details
#' The `penalized` and `unpenalized` arguments in the learner are implemented slightly
#' differently than in [penalized::penalized()]. Here, there is no parameter for `penalized` but
#' instead it is assumed that every variable is penalized unless stated in the `unpenalized`
#' parameter.
#'
#' @references
#' `r format_bib("goeman2010l1")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvPenalized = R6Class("LearnerSurvPenalized",
  inherit = mlr3proba::LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        unpenalized = p_uty(tags = c("train", "predict")),
        lambda1 = p_uty(default = 0, tags = "train"),
        lambda2 = p_uty(default = 0, tags = "train"),
        positive = p_lgl(default = FALSE, tags = "train"),
        fusedl = p_lgl(default = FALSE, tags = "train"),
        startbeta = p_dbl(tags = "train"),
        startgamma = p_dbl(tags = "train"),
        steps = p_int(lower = 1L, default = 1L, tags = "train"),
        epsilon = p_dbl(default = 1.0e-10, lower = 0, upper = 1, tags = "train"),
        maxiter = p_int(lower = 1, tags = "train"),
        standardize = p_lgl(default = FALSE, tags = "train"),
        trace = p_lgl(default = TRUE, tags = "train")
      )

      ps$values = list(trace = FALSE)

      super$initialize(
        id = "surv.penalized",
        packages = c("mlr3extralearners", "penalized"),
        feature_types = c("integer", "numeric", "factor", "logical"),
        predict_types = c("crank", "distr"),
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_surv.penalized",
        label = "Penalized Regression"
      )
    },

    #' @description
    #' Selected features are extracted with the method `coef()` of the S4 model
    #' object, see [penalized::penfit()].
    #' By default it returns features with non-zero coefficients.
    #'
    #' **Note**: Selected features can be retrieved only for datasets with
    #' `numeric` features, as the presence of factors with multiple levels makes
    #' it difficult to get the original feature names.
    #'
    #' @return `character()`.
    selected_features = function() {
      if (is.null(self$model$model)) {
        stopf("No model stored")
      }

      if (self$model$task_has_factors) {
        stopf("Can't return selected features as trained task had factor variables
              and original feature names cannot be retrieved")
      }

      # Per default, only coefficients of selected variables are returned by coef()
      names(penalized::coef(self$model$model))
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      if (length(pars$unpenalized) == 0) {
        # if no "unpenalized" features, penalize all (no need to set `pars$unpenalized`)
        penalized = formulate(rhs = task$feature_names)
      } else {
        if (any(pars$unpenalized %nin% task$feature_names)) {
          stopf("Parameter 'unpenalized' contains values not present in task")
        }
        # if some "unpenalized" features exist, penalize the rest
        penalized = formulate(rhs = task$feature_names[task$feature_names %nin% pars$unpenalized])
        pars$unpenalized = formulate(rhs = pars$unpenalized)
      }

      # if we don't attach the penalized package here, the code fails
      # because it does not find the "contr.none" function
      # also there is a bug in withr, which does not clean up Depends, therefore
      # we need the double with_package
      # https://github.com/r-lib/withr/issues/261
      model = with_package("survival", {
        with_package("penalized", {
          invoke(penalized::penalized,
            response = task$truth(), penalized = penalized,
            data = task$data(cols = task$feature_names), model = "cox", .args = pars)
        })
      })

      list(
        model = model,
        task_has_factors = any(task$feature_types$type == "factor")
      )
    },

    .predict = function(task) {
      # Again the penalized and unpenalized covariates are automatically converted to the
      # correct formula
      pars = self$param_set$get_values(tags = "predict")
      if (length(pars$unpenalized) == 0) {
        penalized = formulate(rhs = task$feature_names)
      } else {
        penalized = formulate(rhs = task$feature_names[task$feature_names %nin% pars$unpenalized])
        pars$unpenalized = formulate(rhs = pars$unpenalized)
      }

      surv = with_package("penalized", {
        invoke(penalized::predict,
               self$model$model,
               penalized = penalized,
               data = ordered_features(task, self),
               .args = pars)
      })

      mlr3proba::.surv_return(times = surv@time, surv = surv@curves)
    }
  )
)

.extralrns_dict$add("surv.penalized", LearnerSurvPenalized)

#' @title Cross-Validated MCP- or SCAD-penalized Survival Learner
#' @author bblodfon
#' @name mlr_learners_surv.cv_ncvsurv
#'
#' @description
#' MCP- or SCAD-penalized regression survival model with k-fold cross validation
#' for choosing the regularization parameter lambda.
#' Calls [ncvreg::cv.ncvsurv()] from package \CRANpkg{ncvreg}.
#' Covariates are internally standardized by `ncvreg` prior to model fitting.
#'
#' @section Prediction types:
#' This learner returns three prediction types (by default the `lambda`
#' corresponding to the minimum cross-validation error is used):
#' 1. `lp`: a vector containing the linear predictors (relative risk scores),
#' where each score corresponds to a specific test observation.
#' Calculated using [ncvreg::predict.cv.ncvsurv()] with `type = "link"`.
#' 2. `crank`: identical to `lp`.
#' 3. `distr`: a survival probability matrix with dimensions
#' `n_obs × n_times`, where rows correspond to observations and
#' columns correspond to time points.
#' Calculated using [ncvreg::predict.cv.ncvsurv()] with `type = "survival"`.
#' By default the Kalbfleisch-Prentice estimator is used for the survival function
#' and the time grid is defined by the unique time points in the training data.
#'
#' @templateVar id surv.cv_ncvsurv
#' @template learner
#'
#' @references
#' `r format_bib("breheny_2011")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerSurvNCVsurv = R6Class("LearnerSurvNCVsurv",
  inherit = mlr3proba::LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        ## --- core model (ncvsurv) ---
        penalty        = p_fct(levels  = c("MCP", "SCAD", "lasso"), default = "MCP", tags = "train"),
        gamma          = p_dbl(lower = 0L, tags = "train"),
        alpha          = p_dbl(lower = 0L, upper = 1L, default = 1L, tags = "train"),
        lambda.min     = p_dbl(lower = 0L, tags = "train"),
        nlambda        = p_int(lower = 1L, default = 100L, tags = "train"),
        lambda         = p_uty(tags = "train"), # lambda path
        ## --- optimization / convergence ---
        eps            = p_dbl(default = 1e-4, tags = "train"),
        max.iter       = p_int(lower = 1L, default = 10000L, tags = "train"),
        convex         = p_lgl(default = TRUE, tags = "train"),
        dfmax          = p_int(lower = 0L, tags = "train"),
        penalty.factor = p_uty(tags = "train"),
        warn           = p_lgl(default = TRUE, tags = "train"),
        returnX        = p_lgl(default = TRUE, tags = "train"),
        ## --- CV-specific (cv.ncvsurv) ---
        cluster        = p_uty(tags = "train"),
        nfolds         = p_int(default = 10L, tags = "train"),
        fold           = p_uty(tags = "train"),
        se             = p_fct(levels  = c("quick", "bootstrap"), default = "quick", tags = "train"),
        returnY        = p_lgl(default = FALSE, tags = "train"),
        trace          = p_lgl(default = FALSE, tags = "train"),
        ## --- prediction ---
        # had to rename, as `lambda` is used as training parameter as well
        pred_lambda    = p_dbl(tags = "predict")
      )

      super$initialize(
        id = "surv.cv_ncvsurv",
        param_set = param_set,
        feature_types = c("integer", "numeric"),
        predict_types = c("crank", "lp", "distr"),
        properties = "selected_features",
        packages = c("mlr3extralearners", "ncvreg"),
        man = "mlr3extralearners::mlr_learners_surv.cv_ncvsurv",
        label = "MCP- or SCAD-penalized Survival Model"
      )
    },

    #' @description
    #' Returns the set of selected features which have non-zero coefficients.
    #' Calls the internal `coef.cv.ncvreg()` function.
    #'
    #' @param lambda (`numeric(1)`)\cr
    #' Custom `lambda`, defaults to the lambda with the minimum CV error.
    #'
    #' @return (`character()`) vector of feature names.
    selected_features = function(lambda = NULL) {
      if (is.null(self$model)) {
        stopf("No model stored")
      }

      lambda = lambda %??% self$model$lambda.min

      coefs = invoke(stats::coef, self$model, lambda = lambda)
      coefs = coefs[coefs != 0]
      names(coefs)
    }
  ),

  private = list(
    .train = function(task) {
      data = as.matrix(task$data(cols = task$feature_names))
      y = task$truth()
      pv = self$param_set$get_values(tags = "train")

      invoke(ncvreg::cv.ncvsurv, X = data, y = y, .args = pv)
    },

    .predict = function(task) {
      newdata = as.matrix(ordered_features(task, self))
      pv = self$param_set$get_values(tags = "predict")

      # rename `pred_lambda` to `lambda`
      if (!is.null(pv$pred_lambda)) {
        pv$lambda = pv$pred_lambda
        pv$pred_lambda = NULL
      }

      # best lambda by default is used
      lp = invoke(predict, self$model, X = newdata, type = "link", .args = pv)

      # get survival matrix
      surv = invoke(predict, self$model, X = newdata, type = "survival", .args = pv)

      if (!inherits(surv, "list")) {
        # edge case: 1 observation, need to convert to a list
        utimes = unique(attr(surv, "time"))
        surv_mat = matrix(surv(utimes), nrow = 1)
      } else {
        utimes = unique(attr(surv, "time")) # unique time points from the train set
        surv_mat = do.call(
          rbind,
          lapply(surv, function(S) S(utimes))
        )
      }

      mlr3proba::surv_return(times = utimes, surv = surv_mat, lp = lp)
    }
  )
)

.extralrns_dict$add("surv.cv_ncvsurv", LearnerSurvNCVsurv)

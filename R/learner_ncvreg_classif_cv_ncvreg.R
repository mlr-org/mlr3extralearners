#' @title Cross-Validated MCP- or SCAD-penalized Classification Learner
#' @author bblodfon
#' @name mlr_learners_classif.cv_ncvreg
#'
#' @description
#' MCP- or SCAD-penalized binary classification model with k-fold cross validation
#' for choosing the regularization parameter lambda.
#' Calls [ncvreg::cv.ncvreg()] from package \CRANpkg{ncvreg} with `family` set to
#' `"binomial"`.
#' Covariates are internally standardized by `ncvreg` prior to model fitting.
#'
#' @templateVar id classif.cv_ncvreg
#' @template learner
#'
#' @references
#' `r format_bib("breheny_2011")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerClassifNCVreg = R6Class("LearnerClassifNCVreg",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        ## --- core model (ncvreg) ---
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
        ## --- CV-specific (cv.ncvreg) ---
        cluster        = p_uty(tags = "train"),
        nfolds         = p_int(default = 10L, tags = "train"),
        fold           = p_uty(tags = "train"),
        returnY        = p_lgl(default = FALSE, tags = "train"),
        trace          = p_lgl(default = FALSE, tags = "train"),
        ## --- prediction ---
        # had to rename, as `lambda` is used as training parameter as well
        pred_lambda    = p_dbl(tags = "predict")
      )

      super$initialize(
        id = "classif.cv_ncvreg",
        param_set = param_set,
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "prob"),
        properties = c("selected_features", "twoclass"),
        packages = c("mlr3extralearners", "ncvreg"),
        man = "mlr3extralearners::mlr_learners_classif.cv_ncvreg",
        label = "MCP- or SCAD-penalized Classification Model"
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

      names(coefs[-1]) # remove "(Intercept)" that is always included by default first
    }
  ),

  private = list(
    .train = function(task) {
      data = as.matrix(task$data(cols = task$feature_names))
      # y ∈ {0,1}, 1 = positive class
      y = as.integer(task$truth() == task$positive)

      pv = self$param_set$get_values(tags = "train")
      pv$family = "binomial"

      invoke(ncvreg::cv.ncvreg, X = data, y = y, .args = pv)
    },

    .predict = function(task) {
      newdata = as.matrix(ordered_features(task, self))
      lvls = task$class_names # lvls[1] is the positive class (equal to 1) for ncvreg
      pv = self$param_set$get_values(tags = "predict")

      # rename `pred_lambda` to `lambda`
      if (!is.null(pv$pred_lambda)) {
        pv$lambda = pv$pred_lambda
        pv$pred_lambda = NULL
      }

      if (self$predict_type == "response") {
        # binomial outcome with the highest probability
        y01 = invoke(predict, self$model, X = newdata, type = "class", .args = pv)
        response = factor(
          ifelse(y01 == 1L, lvls[1], lvls[2]),
          levels = lvls
        )

        list(response = response)
      } else {
        # prob of positive class => P[Y = 1]
        p = as.numeric(invoke(predict, self$model, X = newdata, type = "response", .args = pv))
        prob = cbind(p, 1 - p)
        colnames(prob) = lvls

        list(prob = prob)
      }
    }
  )
)

.extralrns_dict$add("classif.cv_ncvreg", LearnerClassifNCVreg)

#' @title Survival Priority Lasso Learner
#' @author HarutyunyanLiana
#' @name mlr_learners_surv.priority_lasso
#'
#' @description
#' Patient outcome prediction based on multi-omics data taking practitioners’ preferences into account.
#' Calls [prioritylasso::prioritylasso()] from \CRANpkg{prioritylasso}.
#'
#' @templateVar id surv.priority_lasso
#' @template learner
#'
#' @references
#' `r format_bib("klau2018priolasso")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvPriorityLasso = R6Class("LearnerSurvPriorityLasso",
  inherit = mlr3proba::LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        blocks               = p_uty(default = NULL, tags = c("train", "required")),
        max.coef             = p_uty(default = NULL, tags = "train"),
        block1.penalization  = p_lgl(default = TRUE, tags = "train"),
        lambda.type          = p_fct(default = "lambda.min", levels = c("lambda.min", "lambda.1se"), tags = c("train", "predict")), #nolint
        standardize          = p_lgl(default = TRUE, tags = "train"),
        nfolds               = p_int(default = 5L, lower = 1L, tags = "train"),
        foldid               = p_uty(default = NULL, tags = "train"),
        cvoffset             = p_lgl(default = FALSE, tags = "train"),
        cvoffsetnfolds       = p_int(default = 10, lower = 1L, tags = "train"),

        # params from cv.glmnet
        alignment            = p_fct(c("lambda", "fraction"), default = "lambda", tags = "train"),
        alpha                = p_dbl(0, 1, default = 1, tags = "train"),
        big                  = p_dbl(default = 9.9e35, tags = "train"),
        devmax               = p_dbl(0, 1, default = 0.999, tags = "train"),
        dfmax                = p_int(0L, tags = "train"),
        eps                  = p_dbl(0, 1, default = 1.0e-6, tags = "train"),
        epsnr                = p_dbl(0, 1, default = 1.0e-8, tags = "train"),
        exclude              = p_uty(tags = "train"),
        exmx                 = p_dbl(default = 250.0, tags = "train"),
        fdev                 = p_dbl(0, 1, default = 1.0e-5, tags = "train"),
        gamma                = p_uty(tags = "train"),
        grouped              = p_lgl(default = TRUE, tags = "train"),
        intercept            = p_lgl(default = TRUE, tags = "train"),
        keep                 = p_lgl(default = FALSE, tags = "train"),
        lambda               = p_uty(tags = "train"),
        lambda.min.ratio     = p_dbl(0, 1, tags = "train"),
        lower.limits         = p_uty(default = -Inf, tags = "train"),
        maxit                = p_int(1L, default = 100000L, tags = "train"),
        mnlam                = p_int(1L, default = 5L, tags = "train"),
        mxit                 = p_int(1L, default = 100L, tags = "train"),
        mxitnr               = p_int(1L, default = 25L, tags = "train"),
        nlambda              = p_int(1L, default = 100L, tags = "train"),
        offset               = p_uty(default = NULL, tags = "train"),
        parallel             = p_lgl(default = FALSE, tags = "train"),
        penalty.factor       = p_uty(tags = "train"),
        pmax                 = p_int(0L, tags = "train"),
        pmin                 = p_dbl(0, 1, default = 1.0e-9, tags = "train"),
        prec                 = p_dbl(default = 1e-10, tags = "train"),
        predict.gamma        = p_dbl(default = "gamma.1se", special_vals = list("gamma.1se", "gamma.min"), tags = "predict"), #nolint
        relax                = p_lgl(default = FALSE, tags = "train"),
        s                    = p_dbl(0, 1, special_vals = list("lambda.1se", "lambda.min"), default = "lambda.1se", tags = "predict"), #nolint
        standardize.response = p_lgl(default = FALSE, tags = "train"),
        thresh               = p_dbl(0, default = 1e-07, tags = "train"),
        trace.it             = p_int(0, 1, default = 0, tags = "train"),
        type.gaussian        = p_fct(c("covariance", "naive"), tags = "train"),
        type.logistic        = p_fct(c("Newton", "modified.Newton"), default = "Newton", tags = "train"),
        type.multinomial     = p_fct(c("ungrouped", "grouped"), default = "ungrouped", tags = "train"),
        upper.limits         = p_uty(default = Inf, tags = "train")
      )

      super$initialize(
        id = "surv.priority_lasso",
        packages = "prioritylasso",
        feature_types = c("logical", "integer", "numeric"),
        predict_types = c("response", "lp"),
        param_set = param_set,
        properties = c("weights", "selected_features"),
        man = "mlr3extralearners::mlr_learners_surv.priority_lasso",
        label = "Priority Lasso"
      )
    },

    #' @description
    #' Selected features, i.e. those where the coefficient is positive.
    #' @return `character()`.
    selected_features = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      coefs = self$model$coefficients
      coefs = coefs[coefs != 0]
      names(coefs)
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")
      pars$family = "cox"
      pars$type.measure = "deviance"

      if ("weights" %in% task$properties) {
        pars$weights = as.numeric(task$weights$weight)
      }
      data = as.matrix(task$data(cols = task$feature_names))
      target = task$truth()
      invoke(prioritylasso::prioritylasso,
             X = data, Y = target,
             .args = pars)
    },
    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")
      pars = rename(pars, "predict.gamma", "gamma")

      # get newdata and ensure same ordering in train and predict
      newdata = as.matrix(ordered_features(task, self))

      # Calculate predictions for the selected predict type.
      type = self$predict_type
      if (type == "lp") {
        type = "link"
      }

      pred = invoke(predict, self$model, newdata = newdata, type = type, .args = pars)

      if (type == "response") {
        list(response = pred, crank = pred)
      } else {
        list(lp = pred, crank = pred)
      }
    }
  )
)

.extralrns_dict$add("surv.priority_lasso", LearnerSurvPriorityLasso)

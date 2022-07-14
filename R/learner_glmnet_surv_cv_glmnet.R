#' @title Cross-Validated  GLM with Elastic Net Regularization Survival Learner
#' @author be-marc
#' @name mlr_learners_surv.cv_glmnet
#'
#' @description
#' Generalized linear models with elastic net regularization.
#' Calls [glmnet::cv.glmnet()] from package \CRANpkg{glmnet}.
#'
#' @section Custom mlr3 defaults:
#' - `family` The default is set to `"cox"`.
#'
#' @templateVar id surv.cv_glmnet
#' @template learner
#'
#' @references
#' `r format_bib("friedman_2010")`
#'
#' @export
#' @template seealso_learner
#' @template example
delayedAssign(
  "LearnerSurvCVGlmnet",
  R6Class("LearnerSurvCVGlmnet",
    inherit = mlr3proba::LearnerSurv,

    public = list(

      #' @description
      #' Creates a new instance of this [R6][R6::R6Class] class.
      initialize = function() {
        ps = ps(
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
          foldid               = p_uty(default = NULL, tags = "train"),
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
          nfolds               = p_int(3L, default = 10L, tags = "train"),
          nlambda              = p_int(1L, default = 100L, tags = "train"),
          offset               = p_uty(default = NULL, tags = "train"),
          parallel             = p_lgl(default = FALSE, tags = "train"),
          penalty.factor       = p_uty(tags = "train"),
          pmax                 = p_int(0L, tags = "train"),
          pmin                 = p_dbl(0, 1, default = 1.0e-9, tags = "train"),
          prec                 = p_dbl(default = 1e-10, tags = "train"),
          predict.gamma        = p_dbl(default = "gamma.1se", special_vals = list("gamma.1se", "gamma.min"), tags = "predict"),
          relax                = p_lgl(default = FALSE, tags = "train"),
          s                    = p_dbl(0, 1, special_vals = list("lambda.1se", "lambda.min"), default = "lambda.1se", tags = "predict"),
          standardize          = p_lgl(default = TRUE, tags = "train"),
          standardize.response = p_lgl(default = FALSE, tags = "train"),
          thresh               = p_dbl(0, default = 1e-07, tags = "train"),
          trace.it             = p_int(0, 1, default = 0, tags = "train"),
          type.gaussian        = p_fct(c("covariance", "naive"), tags = "train"),
          type.logistic        = p_fct(c("Newton", "modified.Newton"), default = "Newton", tags = "train"),
          type.measure         = p_fct(c("deviance", "C"), default = "deviance", tags = "train"),
          type.multinomial     = p_fct(c("ungrouped", "grouped"), default = "ungrouped", tags = "train"),
          upper.limits         = p_uty(default = Inf, tags = "train")
        )

        super$initialize(
          id = "surv.cv_glmnet",
          param_set = ps,
          feature_types = c("logical", "integer", "numeric"),
          predict_types = c("crank", "lp"),
          properties = c("weights", "selected_features"),
          packages = c("mlr3extralearners", "glmnet"),
          man = "mlr3extralearners::mlr_learners_surv.cv_glmnet",
          label = "Regularized Generalized Linear Model"
        )
      },

      #' @description
      #' Returns the set of selected features as reported by [glmnet::predict.glmnet()]
      #' with `type` set to `"nonzero"`.
      #'
      #' @param lambda (`numeric(1)`)\cr
      #' Custom `lambda`, defaults to the active lambda depending on parameter set.
      #'
      #' @return (`character()`) of feature names.
      selected_features = function(lambda = NULL) {
        glmnet_selected_features(self, lambda)
      }
    ),

    private = list(
      .train = function(task) {
        data = as.matrix(task$data(cols = task$feature_names))
        target = task$truth()
        pv = self$param_set$get_values(tags = "train")
        pv$family = "cox"
        if ("weights" %in% task$properties) {
          pv$weights = task$weights$weight
        }

        glmnet_invoke(data, target, pv, cv = TRUE)
      },

      .predict = function(task) {
        newdata = as.matrix(ordered_features(task, self))
        pv = self$param_set$get_values(tags = "predict")
        pv = rename(pv, "predict.gamma", "gamma")

        lp = as.numeric(invoke(predict, self$model, newx = newdata, type = "link", .args = pv))
        list(lp = lp, crank = lp)
      }
    )
  )
)

.extralrns_dict$add("surv.cv_glmnet", function() LearnerSurvCVGlmnet$new())

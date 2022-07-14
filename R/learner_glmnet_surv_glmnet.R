#' @title GLM with Elastic Net Regularization Survival Learner
#' @name mlr_learners_surv.glmnet
#' @author be-marc
#'
#' @description
#' Generalized linear models with elastic net regularization.
#' Calls [glmnet::glmnet()] from package \CRANpkg{glmnet}.
#'
#' @section Custom mlr3 defaults:
#' - `family` The default is set to `"cox"`.
#'
#' @details
#' Caution: This learner is different to learners calling [glmnet::cv.glmnet()]
#' in that it does not use the internal optimization of parameter `lambda`.
#' Instead, `lambda` needs to be tuned by the user (e.g., via \CRANpkg{mlr3tuning}).
#' When `lambda` is tuned, the `glmnet` will be trained for each tuning iteration.
#' While fitting the whole path of `lambda`s would be more efficient, as is done
#' by default in [glmnet::glmnet()], tuning/selecting the parameter at prediction time
#' (using parameter `s`) is currently not supported in \CRANpkg{mlr3}
#' (at least not in efficient manner).
#' Tuning the `s` parameter is, therefore, currently discouraged.
#'
#' When the data are i.i.d. and efficiency is key, we recommend using the respective
#' auto-tuning counterpart in [mlr_learners_surv.cv_glmnet()].
#' However, in some situations this is not applicable, usually when data are
#' imbalanced or not i.i.d. (longitudinal, time-series) and tuning requires
#' custom resampling strategies (blocked design, stratification).
#'
#' @templateVar id surv.glmnet
#' @template learner
#'
#' @references
#' `r format_bib("friedman_2010")`
#'
#' @export
#' @template seealso_learner
#' @template example
delayedAssign(
  "LearnerSurvGlmnet",
  R6Class("LearnerSurvGlmnet",
    inherit = mlr3proba::LearnerSurv,

    public = list(

      #' @description
      #' Creates a new instance of this [R6][R6::R6Class] class.
      initialize = function() {
        ps = ps(
          alignment        = p_fct(c("lambda", "fraction"), default = "lambda", tags = "train"),
          alpha            = p_dbl(0, 1, default = 1, tags = "train"),
          big              = p_dbl(default = 9.9e35, tags = "train"),
          devmax           = p_dbl(0, 1, default = 0.999, tags = "train"),
          dfmax            = p_int(0L, tags = "train"),
          eps              = p_dbl(0, 1, default = 1.0e-6, tags = "train"),
          epsnr            = p_dbl(0, 1, default = 1.0e-8, tags = "train"),
          exact            = p_lgl(default = FALSE, tags = "predict"),
          exclude          = p_uty(tags = "train"),
          exmx             = p_dbl(default = 250.0, tags = "train"),
          fdev             = p_dbl(0, 1, default = 1.0e-5, tags = "train"),
          gamma            = p_uty(tags = "train"),
          grouped          = p_lgl(default = TRUE, tags = "train"),
          intercept        = p_lgl(default = TRUE, tags = "train"),
          keep             = p_lgl(default = FALSE, tags = "train"),
          lambda           = p_uty(tags = "train"),
          lambda.min.ratio = p_dbl(0, 1, tags = "train"),
          lower.limits     = p_uty(default = -Inf, tags = "train"),
          maxit            = p_int(1L, default = 100000L, tags = "train"),
          mnlam            = p_int(1L, default = 5L, tags = "train"),
          mxit             = p_int(1L, default = 100L, tags = "train"),
          mxitnr           = p_int(1L, default = 25L, tags = "train"),
          newoffset        = p_uty(tags = "predict"),
          nlambda          = p_int(1L, default = 100L, tags = "train"),
          offset           = p_uty(default = NULL, tags = "train"),
          parallel         = p_lgl(default = FALSE, tags = "train"),
          penalty.factor   = p_uty(tags = "train"),
          pmax             = p_int(0L, tags = "train"),
          pmin             = p_dbl(0, 1, default = 1.0e-9, tags = "train"),
          prec             = p_dbl(default = 1e-10, tags = "train"),
          predict.gamma    = p_dbl(default = "gamma.1se", special_vals = list("gamma.1se", "gamma.min"), tags = "predict"),
          relax            = p_lgl(default = FALSE, tags = "train"),
          s                = p_dbl(0, default = 0.01, tags = "predict"),
          standardize      = p_lgl(default = TRUE, tags = "train"),
          thresh           = p_dbl(0, default = 1e-07, tags = "train"),
          trace.it         = p_int(0, 1, default = 0, tags = "train"),
          type.logistic    = p_fct(c("Newton", "modified.Newton"), default = "Newton", tags = "train"),
          type.multinomial = p_fct(c("ungrouped", "grouped"), default = "ungrouped", tags = "train"),
          upper.limits     = p_uty(default = Inf, tags = "train")
        )

        super$initialize(
          id = "surv.glmnet",
          param_set = ps,
          feature_types = c("logical", "integer", "numeric"),
          predict_types = c("crank", "lp"),
          properties = c("weights", "selected_features"),
          packages = c("mlr3extralearners", "glmnet"),
          man = "mlr3extralearners::mlr_learners_surv.glmnet",
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

        glmnet_invoke(data, target, pv)
      },

      .predict = function(task) {
        newdata = as.matrix(ordered_features(task, self))
        pv = self$param_set$get_values(tags = "predict")
        pv = rename(pv, "predict.gamma", "gamma")
        pv$s = glmnet_get_lambda(self, pv)

        lp = invoke(predict, self$model, newx = newdata, type = "link", .args = pv)

        list(crank = lp, lp = lp)
      }
    )
  )
)

.extralrns_dict$add("surv.glmnet", function() LearnerSurvGlmnet$new())

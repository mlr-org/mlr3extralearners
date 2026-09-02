#' @title Regression Fast Generalized Additive Model Learner
#' @author Tino-Rg
#' @name mlr_learners_regr.bam
#'
#' @description
#' Fast generalized additive models for large datasets.
#' Calls `mgcv::bam()` from package \CRANpkg{mgcv}.
#' For smaller datasets, use [`regr.gam`][mlr_learners_regr.gam] instead.
#'
#' @section Formula:
#' A gam formula specific to the task at hand is required for the `formula`
#' parameter (see example and `?mgcv::formula.gam`). Beware, if no formula is provided, a fallback formula is
#' used that will make the model behave like a glm (this behavior is required
#' for the unit tests). Only features specified in the formula will be used,
#' superseding columns with col_roles "feature" in the task.
#'
#' @section Offset:
#' If a `Task` contains a column with the `offset` role, it is automatically
#' incorporated during training via the `offset` argument in `mgcv::bam()`.
#' No offset is applied during prediction for this learner.
#'
#' @section Custom mlr3 parameters:
#' - `control` is passed to `mgcv::gam.control()` as a list.
#'   Unlike [`regr.gam`][mlr_learners_regr.gam], the individual control options are not exposed as
#'   hyperparameters, because `nthreads` is both a control option and an argument of `mgcv::bam()`.
#' - `discrete` is a parameter of both `mgcv::bam()` and `mgcv::predict.bam()`, with different defaults.
#'   Only the training parameter is exposed, and prediction uses the default of `mgcv::predict.bam()`.
#' - Only the training parameter `nthreads` is tagged with `"threads"`, so [mlr3::set_threads()] does not
#'   change the prediction parameter `n.threads`.
#'
#' @template learner
#' @templateVar id regr.bam
#'
#' @references
#' `r format_bib("hastie2017generalized", "wood2012mgcv")`
#'
#' @template seealso_learner
#' @template example_gam
#' @export
LearnerRegrBam = R6Class("LearnerRegrBam",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        formula = p_uty(tags = "train"),
        family = p_fct(default = "gaussian", levels = c("gaussian", "poisson"), tags = "train"),
        method = p_fct(
          levels = c("fREML", "GCV.Cp", "GACV.Cp", "REML", "P-REML", "ML", "P-ML"),
          default = "fREML",
          tags = "train"
        ),
        control = p_uty(default = list(), tags = "train"),
        select = p_lgl(default = FALSE, tags = "train"),
        scale = p_dbl(default = 0, tags = "train"),
        gamma = p_dbl(lower = 1, default = 1, tags = "train"),
        knots = p_uty(default = NULL, tags = "train"),
        sp = p_uty(default = NULL, tags = "train"),
        min.sp = p_uty(default = NULL, tags = "train"),
        paraPen = p_uty(default = NULL, tags = "train"),
        chunk.size = p_int(lower = 1L, default = 10000L, tags = "train"),
        rho = p_dbl(default = 0, tags = "train"),
        AR.start = p_uty(default = NULL, tags = "train"),
        discrete = p_lgl(default = FALSE, tags = "train"),
        nthreads = p_int(lower = 1L, default = 1L, tags = c("train", "threads")),
        use.chol = p_lgl(default = FALSE, tags = "train"),
        samfrac = p_dbl(lower = 0, upper = 1, default = 1, tags = "train"),
        coef = p_uty(default = NULL, tags = "train"),
        drop.unused.levels = p_lgl(default = TRUE, tags = "train"),
        G = p_uty(default = NULL, tags = "train"),
        drop.intercept = p_lgl(default = NULL, special_vals = list(NULL), tags = "train"),
        in.out = p_uty(default = NULL, tags = "train"),
        nei = p_uty(default = NULL, tags = "train"),
        cluster = p_uty(default = NULL, tags = c("train", "predict")),
        gc.level = p_int(lower = 0L, default = 0L, tags = c("train", "predict")),
        # from mgcv::predict.bam()
        terms = p_uty(default = NULL, tags = "predict"),
        exclude = p_uty(default = NULL, tags = "predict"),
        block.size = p_int(default = 50000L, tags = "predict"),
        n.threads = p_int(lower = 1L, default = 1L, tags = "predict")
      )

      super$initialize(
        id = "regr.bam",
        packages = c("mlr3extralearners", "mgcv"),
        feature_types = c("logical", "integer", "numeric", "factor"),
        predict_types = c("response", "se"),
        param_set = param_set,
        properties = c("weights", "offset"),
        man = "mlr3extralearners::mlr_learners_regr.bam",
        label = "Fast Generalized Additive Regression Model"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")

      data = task$data(cols = c(task$feature_names, task$target_names))
      pars$weights = private$.get_weights(task)

      if ("offset" %in% task$properties) {
        pars$offset = task$offset$offset
      }

      if (is.null(pars$formula)) {
        # GLM-like formula, no smooth terms
        pars$formula = stats::as.formula(paste(
          task$target_names,
          "~",
          paste(task$feature_names, collapse = " + ")
        ))
      }

      invoke(mgcv::bam, data = data, .args = pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      include_se = (self$predict_type == "se")

      preds = invoke(
        predict,
        self$model,
        newdata = newdata,
        type = "response",
        newdata.guaranteed = TRUE,
        se.fit = include_se,
        .args = pars
      )

      if (include_se) {
        list(response = unname(preds$fit), se = unname(preds$se.fit))
      } else {
        list(response = unname(preds))
      }
    }
  )
)

.extralrns_dict$add("regr.bam", LearnerRegrBam)

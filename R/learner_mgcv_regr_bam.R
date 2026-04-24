
#' @title Regression Fast Generalized Additive Model Learner
#' @author Tino-Rg
#' @name mlr_learners_regr.bam
#'
#' @description
#' Fast generalized additive models for large datasets (BAM).
#' Calls `mgcv::bam()` from package \CRANpkg{mgcv}.
#'
#' @section Formula:
#' A gam formula specific to the task at hand is required for the `formula`
#' parameter (see example and `mgcv::formula.gam`). Beware, if no formula is provided, a fallback formula is
#' used that will make the model behave like a glm (this behavior is required
#' for the unit tests). Only features specified in the formula will be used,
#' superseding columns with col_roles "feature" in the task.
#'
#' @template learner
#' @templateVar id regr.bam
#'
#' @references
#' `r format_bib("hastie2017generalized", "wood2012mgcv")`
#'
#' @export
#'
#' @import R6
#' @import mlr3
#' @import mgcv
#' @import paradox
#' @import mlr3extralearners
#' @importFrom mlr3misc invoke
#'
#' @examples
#' if (requireNamespace("mgcv", quietly = TRUE)) {
#'   task = mlr3::tsk("mtcars")
#'
#'   learner = LearnerRegrBam$new()
#'
#'   learner$param_set$set_values(
#'     formula = mpg ~ s(disp, k = 3) + s(hp, k = 4) + cyl,
#'     method = "fREML"
#'   )
#'
#'   learner$train(task)
#'   print(learner$model)
#'
#'   pred = learner$predict(task)
#'   print(pred)
#' }
LearnerRegrBam <- R6::R6Class(
  "LearnerRegrBam",
  inherit = mlr3::LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = paradox::ps(
        formula = paradox::p_uty(tags = "train"),
        family = paradox::p_fct(
          levels = c("gaussian", "poisson"), default = "gaussian",
          tags = "train"
        ),
        method = paradox::p_fct(
          levels = c("fREML", "REML", "GCV.Cp"), default = "fREML",
          tags = "train"
        ),
        discrete = paradox::p_lgl(default = TRUE, tags = "train"),
        nthreads = paradox::p_int(lower = 1L, default = 1L, tags = c("train", "threads")),
        chunk.size = paradox::p_int(lower = 1L, default = 10000L, tags = "train"),
        sparse = paradox::p_lgl(default = FALSE, tags = "train"),
        samfrac = paradox::p_dbl(lower = 0, upper = 1, default = 1, tags = "train"),
        select = paradox::p_lgl(default = FALSE, tags = "train"),
        gamma = paradox::p_dbl(lower = 1, default = 1, tags = "train"),
        knots = paradox::p_uty(default = NULL, tags = "train"),
        sp = paradox::p_uty(default = NULL, tags = "train"),
        min.sp = paradox::p_uty(default = NULL, tags = "train"),
        scale = paradox::p_dbl(default = 0, tags = "train"),
        paraPen = paradox::p_uty(default = NULL, tags = "train"),
        G = paradox::p_uty(default = NULL, tags = "train"),
        in.out = paradox::p_uty(default = NULL, tags = "train"),
        drop.unused.levels = paradox::p_lgl(default = TRUE, tags = "train"),
        drop.intercept = paradox::p_lgl(default = FALSE, tags = "train"),
        block.size = paradox::p_int(default = 50000L, tags = "predict")
      )

      super$initialize(
        id = "regr.bam",
        packages = c("mgcv"),
        feature_types = c("logical", "integer", "numeric", "factor"),
        predict_types = c("response", "se"),
        param_set = ps,
        properties = c("weights", "offset"),
        label = "Fast Generalized Additive Model (BAM) Regression",
        man = "mlr3extralearners::mlr_learners_regr.bam"
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
        formula_str = paste(
          task$target_names,
          "~",
          paste(task$feature_names, collapse = " + ")
        )
        pars$formula = stats::as.formula(formula_str)
      }

      mlr3misc::invoke(mgcv::bam, data = data, .args = pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")

      newdata = mlr3extralearners:::ordered_features(task, self)
      include_se = (self$predict_type == "se")

      preds = mlr3misc::invoke(
        predict, self$model, newdata = newdata, type = "response",
        se.fit = include_se, .args = pars
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

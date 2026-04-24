
#' @title Classification Fast Generalized Additive Model Learner
#' @author Tino-Rg
#' @name mlr_learners_classif.bam
#'
#' @description
#' Fast generalized additive models for large datasets (BAM).
#' Calls `mgcv::bam()` from package \CRANpkg{mgcv} with `family` set to `binomial`.
#'
#' @inheritSection mlr_learners_regr.bam Formula
#'
#' @template learner
#' @templateVar id classif.bam
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
#'   task = mlr3::tsk("sonar")
#'
#'   learner = LearnerClassifBam$new()
#'
#'   learner$param_set$set_values(
#'     formula = Class ~ s(V1, k = 5) + s(V2, k = 4) + V3,
#'     method = "fREML"
#'   )
#'
#'   learner$train(task)
#'   print(learner$model)
#'
#'   pred = learner$predict(task)
#'   print(pred)
#' }
LearnerClassifBam <- R6::R6Class(
  "LearnerClassifBam",
  inherit = mlr3::LearnerClassif,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = paradox::ps(
        formula = paradox::p_uty(tags = "train"),
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
        id = "classif.bam",
        packages = c("mgcv"),
        feature_types = c("logical", "integer", "numeric", "factor"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("twoclass", "weights", "offset"),
        label = "Fast Generalized Additive Model (BAM) Classification",
        man = "mlr3extralearners::mlr_learners_classif.bam"
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

      pars$family = "binomial"

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

      model_pred = mlr3misc::invoke(
        predict, self$model, newdata = newdata, type = "response", .args = pars
      )

      model_pred = as.numeric(model_pred)
      model_pred = matrix(c(1 - model_pred, model_pred), ncol = 2)
      colnames(model_pred) = task$class_names

      if (self$predict_type == "response") {
        class_indices = max.col(model_pred, ties.method = "random")
        response = colnames(model_pred)[class_indices]
        list(response = unname(response))
      } else {
        list(prob = model_pred)
      }
    }
  )
)

.extralrns_dict$add("classif.bam", LearnerClassifBam)

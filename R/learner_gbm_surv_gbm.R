#' @title Survival Gradient Boosting Machine Learner
#' @author RaphaelS1
#'
#' @name mlr_learners_surv.gbm
#'
#' @description
#' Regression gradient boosting machine models.
#' Calls [gbm::gbm()] from package \CRANpkg{gbm}.
#'
#' @section Custom mlr3 defaults:
#'  - `distribution`:
#'   - Actual default: "bernoulli"
#'   - Adjusted default: "coxph"
#'   - Reason for change: This is the only distribution available for survival.
#' - `keep_data`:
#'   - Actual default: TRUE
#'   - Adjusted default: FALSE
#'   - Reason for change: `keep_data = FALSE` saves memory during model fitting.
#' - `n.cores`:
#'   - Actual default: NULL
#'   - Adjusted default: 1
#'   - Reason for change: Suppressing the automatic internal parallelization if
#'     `cv.folds` > 0.
#' @templateVar id surv.gbm
#' @template class_learner
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerSurvGBM = R6Class("LearnerSurvGBM",
  inherit = LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamFct$new(
            id = "distribution", levels = c("coxph"),
            default = "coxph", tags = "train"),
          ParamInt$new(
            id = "n.trees", default = 100L, lower = 1L,
            tags = c("train", "predict")),
          ParamInt$new(
            id = "cv.folds", default = 0L, lower = 0L,
            tags = "train"),
          ParamInt$new(
            id = "interaction.depth", default = 1L, lower = 1L,
            tags = "train"),
          ParamInt$new(
            id = "n.minobsinnode", default = 10L, lower = 1L,
            tags = "train"),
          ParamDbl$new(
            id = "shrinkage", default = 0.001, lower = 0,
            tags = "train"),
          ParamDbl$new(
            id = "bag.fraction", default = 0.5, lower = 0,
            upper = 1, tags = "train"),
          ParamDbl$new(
            id = "train.fraction", default = 1, lower = 0,
            upper = 1, tags = "train"),
          ParamLgl$new(id = "keep.data", default = TRUE, tags = "train"),
          ParamLgl$new(id = "verbose", default = FALSE, tags = "train"),
          ParamUty$new(id = "var.monotone", tags = "train"),
          ParamInt$new(id = "n.cores", default = 1, tags = "train"),
          ParamLgl$new(id = "single.tree", default = FALSE, tags = "predict")
        )
      )
      ps$values = insert_named(ps$values, list(
        distribution = "coxph",
        keep.data = FALSE,
        n.cores = 1))

      super$initialize(
        id = "surv.gbm",
        param_set = ps,
        predict_types = c("crank", "lp"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        properties = c("missings", "weights", "importance"),
        man = "mlr3extralearners::mlr_learners_surv.gbm",
        packages = "gbm"
      )
    },

    #' @description
    #' The importance scores are extracted from the model slot `variable.importance`.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      sum = summary(self$model, plotit = FALSE)
      relinf = sum$rel.inf
      names(relinf) = sum$var

      relinf
    }
  ),

  private = list(
    .train = function(task) {

      # hacky formula construction as gbm fails when "type" argument specified in Surv()

      tn = task$target_names
      lhs = sprintf("Surv(%s, %s)", tn[1L], tn[2L])
      f = formulate(lhs, task$feature_names, env = getNamespace("survival"))

      # collect arguments for predict
      pars = self$param_set$get_values(tags = "train")
      pars = c(pars, list(weights = task$weights$weight))

      invoke(
        gbm::gbm,
        formula = f,
        data = task$data(),
        .args = pars
      )
    },

    .predict = function(task) {
      pv = self$param_set$get_values(tags = "predict")
      newdata = task$data()

      # predict linear predictor
      lp = mlr3misc::invoke(predict, self$model, newdata = newdata, .args = pv)

      mlr3proba::PredictionSurv$new(task = task, crank = lp, lp = lp)
    }
  )
)

lrns_dict$add("surv.gbm", LearnerSurvGBM)

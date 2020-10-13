#' @title Classification Gradient Boosting Machine Learner
#'
#' @name mlr_learners_classif.gbm
#' @author be-marc
#'
#' @template class_learner
#' @templateVar id classif.gbm
#' @templateVar caller gbm
#'
#' @section Custom mlr3 defaults:
#' - `keep_data`:
#'   - Actual default: TRUE
#'   - Adjusted default: FALSE
#'   - Reason for change: `keep_data = FALSE` saves memory during model fitting.
#' - `n.cores`:
#'   - Actual default: NULL
#'   - Adjusted default: 1
#'   - Reason for change: Suppressing the automatic internal parallelization if
#'     `cv.folds` > 0.
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerClassifGBM = R6Class("LearnerClassifGBM",
  inherit = LearnerClassif,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamFct$new(
            id = "distribution", default = "bernoulli",
            levels = c("bernoulli", "adaboost", "huberized", "multinomial"),
            tags = "train"),
          ParamInt$new(
            id = "n.trees", default = 100L, lower = 1L,
            tags = c("train", "predict", "importance")),
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
            id = "bag.fraction", default = 0.5, lower = 0, upper = 1,
            tags = "train"),
          ParamDbl$new(
            id = "train.fraction", default = 1, lower = 0, upper = 1,
            tags = "train"),
          ParamInt$new(id = "cv.folds", default = 0L, tags = "train"),
          # Set to FALSE to reduce memory requirements
          ParamLgl$new(id = "keep.data", default = FALSE, tags = "train"),
          ParamLgl$new(id = "verbose", default = FALSE, tags = "train"),
          # Set to 1 to suppress parallelization by the package
          ParamInt$new(id = "n.cores", default = 1, tags = "train"),
          ParamUty$new(id = "var.monotone", tags = "train")
        )
      )
      ps$values = list(keep.data = FALSE, n.cores = 1)

      super$initialize(
        id = "classif.gbm",
        packages = "gbm",
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c(
          "weights", "twoclass", "multiclass", "importance", "missings"),
        man = "mlr3extralearners::mlr_learners_regr.gbm"
      )
    },

    #' @description
    #' The importance scores are extracted by `gbm::relative.influence()` from
    #' the model.
    #'
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stop("No model stored")
      }
      pars = self$param_set$get_values(tags = "importance")
      # n.trees is required for prediction. If not set by the user, we take the
      # default (100)
      if (is.null(self$param_set$values$n.trees)) {
        pars$n.trees = self$param_set$default$n.trees # nolint
      }

      imp = invoke(gbm::relative.influence, self$model, .args = pars)
      sort(imp, decreasing = TRUE)
    }
  ),

  private = list(
    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")
      f = task$formula()
      data = task$data()

      if ("weights" %in% task$properties) {
        pars = insert_named(pars, list(weights = task$weights$weight))
      }

      if (task$properties %in% "twoclass") {
        data[[task$target_names]] =
          as.numeric(data[[task$target_names]] == task$positive)
      }

      mlr3misc::invoke(gbm::gbm, formula = f, data = data, .args = pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      # n.trees is required for prediction. If not set by the user, we take the
      # default (100)
      if (is.null(self$param_set$values$n.trees)) {
        pars$n.trees = self$param_set$default$n.trees # nolint
      }
      newdata = task$data(cols = task$feature_names)

      p = mlr3misc::invoke(predict, self$model,
        newdata = newdata,
        type = "response", .args = pars)

      if (self$predict_type == "response") {
        if (task$properties %in% "twoclass") {
          p = as.factor(ifelse(p > 0.5, task$positive, task$negative))
          list(response = p)
        } else {
          ind = apply(p, 1, which.max)
          cns = colnames(p)
          list(response = factor(cns[ind], levels = cns))
        }
      } else {
        if (task$properties %in% "twoclass") {
          p = matrix(c(p, 1 - p), ncol = 2L, nrow = length(p))
          colnames(p) = task$class_names
          list(prob = p)
        } else {
          # previously we had `p[, , 1L]`. This results in a numeric when nrow
          # == 1 and triggers an assertion error later. The following always
          # return a matrix see also
          # https://stackoverflow.com/questions/58702027/
          # r-convert-array-to-matrix-with-one-row
          p = array(c(p), dim(p)[-3], dimnames = dimnames(p)[1:2])
          list(prob = p)
        }
      }
    }
  )
)

lrns_dict$add("classif.gbm", LearnerClassifGBM)

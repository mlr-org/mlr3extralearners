#' @title Regression Random Forest Learner
#' @author pat-s
#' @name mlr_learners_regr.randomForest
#'
#' @template class_learner
#' @templateVar id regr.randomForest
#' @templateVar caller randomForest
#'
#' @references
#' Breiman, L. (2001).
#' Random Forests
#' Machine Learning
#' \url{https://doi.org/10.1023/A:1010933404324}
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerRegrRandomForest = R6Class("LearnerRegrRandomForest",
  inherit = LearnerRegr,

  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamInt$new(
            id = "ntree", default = 500L, lower = 1L,
            tags = c("train", "predict")),
          ParamInt$new(id = "mtry", lower = 1L, tags = "train"),
          ParamLgl$new(id = "replace", default = TRUE, tags = "train"),
          ParamUty$new(id = "strata", tags = "train"),
          ParamUty$new(id = "sampsize", tags = "train"), # lower = 1L
          ParamInt$new(id = "nodesize", default = 5L, lower = 1L, tags = "train"),
          ParamInt$new(id = "maxnodes", lower = 1L, tags = "train"),
          ParamFct$new(
            id = "importance", default = FALSE,
            levels = c("mse", "nudepurity", "none", FALSE),
            special_vals = list(FALSE),
            tag = "train"),
          ParamLgl$new(id = "localImp", default = FALSE, tags = "train"),
          ParamLgl$new(id = "proximity", default = FALSE, tags = c("train", "predict")),
          ParamLgl$new(id = "oob.prox", tags = "train"),
          ParamLgl$new(id = "norm.votes", default = TRUE, tags = "train"),
          ParamLgl$new(id = "do.trace", default = FALSE, tags = "train"),
          ParamLgl$new(id = "keep.forest", default = TRUE, tags = "train"),
          ParamLgl$new(id = "keep.inbag", default = FALSE, tags = "train"),
          ParamLgl$new(id = "predict.all", default = FALSE, tags = "predict"),
          ParamLgl$new(id = "nodes", default = FALSE, tags = "predict")
        )
      )

      super$initialize(
        id = "regr.randomForest",
        packages = "randomForest",
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("response"),
        param_set = ps,
        properties = c("weights", "importance", "oob_error"),
        man = "mlr3extralearners::mlr_learners_regr.randomForest"
      )
    },

    #' @description
    #' The importance scores are extracted from the slot `importance`.
    #' Parameter 'importance' must be set to either `"mse"` or `"nodepurity"`.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      imp = data.frame(self$model$importance)
      colnames(imp)[colnames(imp) == "X.IncMSE"] = "%IncMSE"
      ## correct for language error on special characters
      pars = self$param_set$get_values()

      scores = switch(pars[["importance"]],
        "mse" = imp[["%IncMSE"]],
        "nodepurity" = imp[["IncNodePurity"]],
        stop("No importance available. Try setting 'importance' to 'mse' or 'nodepurity'.")
      )

      sort(setNames(scores, rownames(imp)), decreasing = TRUE)
    },

    #' @description
    #' OOB errors are extracted from the model slot `mse`.
    #' @return `numeric(1)`.
    oob_error = function() {
      mean(self$model$mse)
    }
  ),

  private = list(
    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")
      formula = task$formula()
      data = task$data()

      # randomForest() only accepts TRUE and FALSE during fitting and the
      # specific importance methods are honored post-fitting only
      if (!is.null(pars$importance)) {
        pars$importance = TRUE
      }

      mlr3misc::invoke(randomForest::randomForest,
        formula = formula,
        data = data, .args = pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = task$data(cols = task$feature_names)
      type = self$predict_type

      pred = mlr3misc::invoke(predict, self$model,
        newdata = newdata,
        type = type, .args = pars)

      PredictionRegr$new(task = task, response = pred)
    }
  )
)

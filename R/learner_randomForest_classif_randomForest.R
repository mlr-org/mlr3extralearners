#' @title Classification Random Forest Learner
#' @author pat-s
#' @name mlr_learners_classif.randomForest
#'
#' @template class_learner
#' @templateVar id classif.randomForest
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
LearnerClassifRandomForest = R6Class("LearnerClassifRandomForest",
  inherit = LearnerClassif,

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
          ParamUty$new(id = "classwt", default = NULL, tags = "train"),
          ParamUty$new(id = "cutoff", tags = "train"),
          ParamUty$new(id = "strata", tags = "train"),
          ParamUty$new(id = "sampsize", tags = "train"),
          ParamInt$new(
            id = "nodesize", default = 1L, lower = 1L,
            tags = "train"),
          ParamInt$new(id = "maxnodes", lower = 1L, tags = "train"),
          ParamFct$new(
            id = "importance", default = FALSE,
            levels = c("accuracy", "gini", "none", FALSE),
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
        id = "classif.randomForest",
        packages = "randomForest",
        feature_types = c("numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("weights", "twoclass", "multiclass", "importance", "oob_error"),
        man = "mlr3extralearners::mlr_learners_classif.randomForest"
      )
    },


    #' @description
    #' The importance scores are extracted from the slot `importance`.
    #' Parameter 'importance' must be set to either `"accuracy"` or `"gini"`.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      imp = data.frame(self$model$importance)
      pars = self$param_set$get_values()

      scores = switch(pars[["importance"]],
        "accuracy" = imp[["MeanDecreaseAccuracy"]],
        "gini"     = imp[["MeanDecreaseGini"]],
        stop("No importance available. Try setting 'importance' to 'accuracy' or 'gini'.")
      )

      sort(stats::setNames(scores, rownames(imp)), decreasing = TRUE)
    },

    #' @description
    #' OOB errors are extracted from the model slot `err.rate`.
    #' @return `numeric(1)`.
    oob_error = function() {
      mean(self$model$err.rate[, 1L])
    }
  ),

  private = list(
    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")

      formula = task$formula()
      data = task$data()
      levs = levels(data[[task$target_names]])
      n_levels = length(levs)

      # randomForest() only accepts TRUE and FALSE during fitting and the
      # specific importance methods are honored post-fitting only
      if (!is.null(pars$importance)) {
        pars$importance = TRUE
      }

      if (!"cutoff" %in% names(pars)) {
        cutoff = rep(1 / n_levels, n_levels)
      }
      if ("classwt" %in% names(pars)) {
        classwt = pars[["classwt"]]
        if (is.numeric(classwt) && length(classwt) == n_levels &&
          is.null(names(classwt))) {
          names(classwt) = levs
        }
      } else {
        classwt = NULL
      }
      if (is.numeric(cutoff) && length(cutoff) == n_levels &&
        is.null(names(cutoff))) {
        names(cutoff) = levs
      }
      mlr3misc::invoke(randomForest::randomForest,
        formula = formula,
        data = data, classwt = classwt, cutoff = cutoff, .args = pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = task$data(cols = task$feature_names)
      type = ifelse(self$predict_type == "response", "response", "prob")

      pred = mlr3misc::invoke(predict, self$model,
        newdata = newdata,
        type = type, .args = pars)

      if (self$predict_type == "response") {
        list(response = pred)
      } else {
        list(prob = pred)
      }
    }
  )
)

.extralrns_dict$add("classif.randomForest", LearnerClassifRandomForest)

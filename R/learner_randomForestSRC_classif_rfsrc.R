#' @title Classification Random Forest SRC Learner
#' @author RaphaelS1
#' @name mlr_learners_classif.rfsrc
#'
#' @template class_learner
#' @templateVar id classif.rfsrc
#' @templateVar caller rfsrc
#'
#' @references
#' Breiman L (2001). “Random Forests.”
#' Machine Learning, 45(1), 5–32. ISSN 1573-0565, doi: 10.1023/A:1010933404324.
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifRandomForestSRC = R6Class("LearnerClassifRandomForestSRC",
  inherit = LearnerClassif,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamInt$new(id = "ntree", default = 1000, lower = 1L, tags = c("train", "predict")),
          ParamInt$new(id = "mtry", lower = 1L, tags = "train"),
          ParamInt$new(id = "nodesize", default = 15L, lower = 1L, tags = "train"),
          ParamInt$new(id = "nodedepth", lower = 1L, tags = "train"),
          ParamFct$new(
            id = "splitrule", levels = c("gini", "auc", "entropy"),
            default = "gini", tags = "train"),
          ParamInt$new(id = "nsplit", lower = 0, default = 10, tags = "train"),
          ParamFct$new(
            id = "importance", default = "FALSE",
            levels = c("FALSE", "TRUE", "none", "permute", "random", "anti"),
            tags = c("train", "predict")),
          ParamInt$new(id = "block.size", default = 10L, lower = 1L, tags = c("train", "predict")),
          ParamFct$new(
            id = "ensemble", default = "all", levels = c("all", "oob", "inbag"),
            tags = c("train", "predict")),
          ParamFct$new(
            id = "bootstrap", default = "by.root",
            levels = c("by.root", "by.node", "none", "by.user"), tags = "train"),
          ParamFct$new(
            id = "samptype", default = "swor", levels = c("swor", "swr"),
            tags = "train"),
          ParamUty$new(id = "samp", tags = "train"),
          ParamLgl$new(id = "membership", default = FALSE, tags = c("train", "predict")),
          ParamUty$new(id = "sampsize", tags = "train"),
          ParamFct$new(
            id = "na.action", default = "na.omit", levels = c("na.omit", "na.impute"),
            tags = c("train", "predict")),
          ParamInt$new(id = "nimpute", default = 1L, lower = 1L, tags = "train"),
          ParamInt$new(id = "ntime", lower = 1L, tags = "train"),
          ParamInt$new(id = "cause", lower = 1L, tags = "train"),
          ParamFct$new(
            id = "proximity", default = "FALSE",
            levels = c("FALSE", "TRUE", "inbag", "oob", "all"),
            tags = c("train", "predict")),
          ParamFct$new(
            id = "distance", default = "FALSE",
            levels = c("FALSE", "TRUE", "inbag", "oob", "all"),
            tags = c("train", "predict")),
          ParamFct$new(
            id = "forest.wt", default = "FALSE",
            levels = c("FALSE", "TRUE", "inbag", "oob", "all"),
            tags = c("train", "predict")),
          ParamUty$new(id = "xvar.wt", tags = "train"),
          ParamUty$new(id = "split.wt", tags = "train"),
          ParamLgl$new(id = "forest", default = TRUE, tags = "train"),
          ParamFct$new(
            id = "var.used", default = "FALSE",
            levels = c("FALSE", "all.trees", "by.tree"), tags = c("train", "predict")),
          ParamFct$new(
            id = "split.depth", default = "FALSE",
            levels = c("FALSE", "all.trees", "by.tree"), tags = c("train", "predict")),
          ParamInt$new(id = "seed", upper = -1L, tags = c("train", "predict")),
          ParamLgl$new(id = "do.trace", default = FALSE, tags = c("train", "predict")),
          ParamLgl$new(id = "statistics", default = FALSE, tags = c("train", "predict")),
          ParamUty$new(id = "get.tree", tags = "predict"),
          ParamFct$new(
            id = "outcome", default = "train", levels = c("train", "test"),
            tags = "predict"),
          ParamInt$new(id = "ptn.count", default = 0L, lower = 0L, tags = "predict")
        )
      )

      super$initialize(
        id = "classif.rfsrc",
        packages = "randomForestSRC",
        feature_types = c("logical", "integer", "numeric", "factor"),
        predict_types = c("response", "prob"),
        param_set = ps,
        # selected features is possible but there's a bug somewhere in rfsrc so that the model
        # can be trained but not predicted. so public method retained but property not included
        properties = c(
          "weights", "missings", "importance", "oob_error",
          "twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.rfsrc"
      )
    },


    #' @description
    #' The importance scores are extracted from the model slot `importance`, returned for
    #' 'all'.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model$importance) & !is.null(self$model)) {
        mlr3misc::stopf("Set 'importance' to one of: {'TRUE', 'permute', 'random', 'anti'}.")
      }

      sort(self$model$importance[, 1], decreasing = TRUE)
    },

    #' @description
    #' Selected features are extracted from the model slot `var.used`.
    #' @return `character()`.
    selected_features = function() {
      if (is.null(self$model$var.used) & !is.null(self$model)) {
        mlr3misc::stopf("Set 'var.used' to one of: {'all.trees', 'by.tree'}.")
      }

      names(self$model$var.used)
    },

    #' @description
    #' OOB error extracted from the model slot `err.rate`.
    #' @return `numeric()`.
    oob_error = function() {
      as.numeric(self$model$err.rate[self$model$ntree, 1])
    }
  ),

  private = list(
    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")

      if ("weights" %in% task$properties) {
        pv$case.wt = as.numeric(task$weights$weight) # nolint
      }

      mlr3misc::invoke(randomForestSRC::rfsrc,
        formula = task$formula(), data = as.data.frame(task$data()),
        .args = pv)
    },

    .predict = function(task) {
      newdata = as.data.frame(task$data(cols = task$feature_names))
      pars = self$param_set$get_values(tags = "predict")
      pred = mlr3misc::invoke(predict,
        object = self$model,
        newdata = newdata,
        .args = pars)

      if (self$predict_type == "response") {
        list(response = pred$class)
      } else {
        list(prob = pred$predicted)
      }
    }
  )
)

lrns_dict$add("classif.rfsrc", LearnerClassifRandomForestSRC)

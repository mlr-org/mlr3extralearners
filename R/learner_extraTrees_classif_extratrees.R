#' @title Classification ExtraTrees Learner
#' @author be-marc
#' @name mlr_learners_classif.extratrees
#'
#' @template class_learner
#' @templateVar id classif.extratrees
#' @templateVar caller extraTrees
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerClassifExtraTrees = R6Class("LearnerClassifExtraTrees",
  inherit = LearnerClassif,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamInt$new(
            id = "ntree", default = 500L, lower = 1L,
            tags = "train"),
          ParamInt$new(id = "mtry", lower = 1L, tags = "train"),
          ParamInt$new(
            id = "nodesize", default = 1L, lower = 1L,
            tags = "train"),
          ParamInt$new(id = "numRandomCuts", default = 1L, tags = "train"),
          ParamLgl$new(id = "evenCuts", default = FALSE, tags = "train"),
          ParamInt$new(
            id = "numThreads", default = 1L, lower = 1L,
            tags = "train"),
          ParamUty$new(id = "subsetSizes", tags = "train"),
          ParamUty$new(id = "subsetGroups", tags = "train"),
          ParamUty$new(id = "tasks", tags = "train"),
          ParamDbl$new(
            id = "probOfTaskCuts", lower = 0, upper = 1,
            tags = "train"),
          ParamInt$new(
            id = "numRandomTaskCuts", default = 1L, lower = 1L,
            tags = "train"),
          ParamFct$new(
            id = "na.action", default = "stop",
            levels = c("stop", "zero", "fuse"), tags = "train")
        )
      )

      super$initialize(
        id = "classif.extratrees",
        packages = "extraTrees",
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("weights", "twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.extratrees"
      )
    }),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      self$state$feature_names = task$feature_names

      x = as.matrix(task$data(cols = task$feature_names))
      y = task$truth()

      if ("weights" %in% task$properties) {
        pars = insert_named(pars, list(weights = task$weights$weight))
      }

      invoke(extraTrees::extraTrees, x = x, y = y, .args = pars)
    },

    .predict = function(task) {
      newdata = task$data(cols = self$state$feature_names)

      if (self$predict_type == "response") {
        p = invoke(predict, self$model, newdata = newdata)
        list(response = p)
      } else {
        p = invoke(predict, self$model, newdata = newdata, probability = TRUE)
        list(prob = p)
      }
    }
  )
)

.extralrns_dict$add("classif.extratrees", LearnerClassifExtraTrees)

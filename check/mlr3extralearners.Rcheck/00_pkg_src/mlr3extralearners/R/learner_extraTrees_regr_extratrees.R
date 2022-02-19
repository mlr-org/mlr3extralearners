#' @title Regression ExtraTrees Learner
#' @author be-marc
#' @name mlr_learners_regr.extratrees
#'
#' @template class_learner
#' @templateVar id regr.extratrees
#' @templateVar caller extraTrees
#'
#' @references
#' `r format_bib("geurts2006extremely")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerRegrExtraTrees = R6Class("LearnerRegrExtraTrees",
  inherit = LearnerRegr,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        ntree = p_int(default = 500L, lower = 1L, tags = "train"),
        mtry = p_int(lower = 1L, tags = "train"),
        nodesize = p_int(default = 1L, lower = 1L, tags = "train"),
        numRandomCuts = p_int(default = 1L, tags = "train"),
        evenCuts = p_lgl(default = FALSE, tags = "train"),
        numThreads = p_int(default = 1L, lower = 1L, tags = "train"),
        quantile = p_lgl(default = FALSE, tags = c("train", "predict")),
        subsetSizes = p_uty(tags = "train"),
        subsetGroups = p_uty(tags = "train"),
        tasks = p_uty(tags = "train"),
        probOfTaskCuts = p_dbl(lower = 0, upper = 1, tags = "train"),
        numRandomTaskCuts = p_int(default = 1L, lower = 1L, tags = "train"),
        na.action = p_fct(default = "stop", levels = c("stop", "zero", "fuse"), tags = "train")
      )

      super$initialize(
        id = "regr.extratrees",
        packages = c("mlr3extralearners", "extraTrees"),
        feature_types = c("integer", "numeric"),
        predict_types = "response",
        param_set = ps,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_regr.extratrees"
      )
    }
  ),

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
      p = invoke(predict, self$model, newdata = newdata)
      list(response = p)
    }
  )
)

.extralrns_dict$add("regr.extratrees", LearnerRegrExtraTrees)

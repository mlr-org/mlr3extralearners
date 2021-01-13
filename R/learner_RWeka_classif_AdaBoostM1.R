#' @title Classification AdaBoostM1 Learner
#' @author henrifnk
#' @name mlr_learners_classif.AdaBoostM1
#'
#' @template class_learner
#' @templateVar id classif.AdaBoostM1
#' @templateVar caller AdaBoostM1
#'
#' @section Custom mlr3 defaults:
#' - `output_debug_info`:
#'   - original id: output-debug-info
#'
#' - `do_not_check_capabilities`:
#'   - original id: do-not-check-capabilities
#'
#' - `num_decimal_places`:
#'   - original id: num-decimal-places
#'
#' - `batch_size`:
#'   - original id: batch-size
#'
#' - Reason for change: This learner contains changed ids of the following control arguments
#' since their ids contain irregular pattern
#'
#' @references
#'  Freund Y, Schapire, R (1993).
#' Experiments with a New Boosting Algorithm
#' \url{http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.51.6252&rep=rep1&type=pdf}
#'
#' @export
LearnerClassifAdaBoostM1 = R6Class("LearnerClassifAdaBoostM1",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamUty$new(id = "subset", tags = c("train", "pars")),
          ParamUty$new(id = "na.action", tags = c("train", "pars")),
          ParamInt$new(
            id = "P", default = 100L, lower = 90L, upper = 100L,
            tags = c("train", "control")),
          ParamLgl$new(id = "Q", default = FALSE, tags = c("train", "control")),
          ParamInt$new(id = "S", default = 1L, lower = 1L, tags = c("train", "control")),
          ParamInt$new(id = "I", default = 10L, lower = 1L, tags = c("train", "control")),
          ParamUty$new(
            id = "W", default = "weka.classifiers.trees.DecisionStump",
            tags = c("train", "control")),
          ParamLgl$new(id = "output_debug_info", default = FALSE, tags = c("train", "control")),
          ParamLgl$new(
            id = "do_not_check_capabilities", default = FALSE,
            tags = c("train", "control")),
          ParamInt$new(
            id = "num_decimal_places", default = 2L, lower = 1L,
            tags = c("train", "control")),
          ParamInt$new(id = "batch_size", default = 100L, lower = 1L, tags = c("train", "control")),
          ParamUty$new(id = "options", default = NULL, tags = c("train", "pars"))
        )
      )

      super$initialize(
        id = "classif.AdaBoostM1",
        packages = "RWeka",
        feature_types = c("numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.AdaBoostM1"
      )
    }
  ),

  private = list(
    .train = function(task) {
      ctrl = self$param_set$get_values(tags = "control")
      if (length(ctrl) > 0L) {
        names(ctrl) = gsub("_", replacement = "-", x = names(ctrl))
        ctrl = mlr3misc::invoke(RWeka::Weka_control, ctrl)
      }

      pars = self$param_set$get_values(tags = "pars")
      f = task$formula()
      data = task$data()
      mlr3misc::invoke(RWeka::AdaBoostM1, formula = f, data = data, control = ctrl, .args = pars)
    },

    .predict = function(task) {
      response = NULL
      prob = NULL
      newdata = task$data(cols = task$feature_names)

      if (self$predict_type == "response") {
        response = mlr3misc::invoke(predict, self$model, newdata = newdata, type = "class")
      } else {
        prob = mlr3misc::invoke(predict, self$model, newdata = newdata, type = "prob")
      }
      list(response = response, prob = prob)
    }
  )
)

.extralrns_dict$add("classif.AdaBoostM1", LearnerClassifAdaBoostM1)

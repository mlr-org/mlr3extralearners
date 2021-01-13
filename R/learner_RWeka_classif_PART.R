#' @title Classification PART Learner
#' @author henrifnk
#' @name mlr_learners_classif.PART
#'
#' @template class_learner
#' @templateVar id classif.PART
#' @templateVar caller PART
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
#' Frank E, Witten I (1998).
#' Generating Accurate Rule Sets Without Global Optimization
#'
#' @export
LearnerClassifPART = R6Class("LearnerClassifPART",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamUty$new(id = "subset", tags = c("train", "pars")),
          ParamUty$new(id = "na.action", tags = c("train", "pars")),
          ParamDbl$new(
            id = "C", default = 0.25, lower = .Machine$double.eps,
            upper = 1 - .Machine$double.eps, tags = c("train", "control")),
          ParamInt$new(id = "M", default = 2L, lower = 1L, tags = c("train", "control")),
          ParamLgl$new(id = "R", default = FALSE, tags = c("train", "control")),
          ParamInt$new(id = "N", default = 3L, lower = 1L, tags = c("train", "control")),
          ParamLgl$new(id = "B", default = FALSE, tags = c("train", "control")),
          ParamLgl$new(id = "U", default = FALSE, tags = c("train", "control")),
          ParamLgl$new(id = "J", default = FALSE, tags = c("train", "control")),
          ParamInt$new(id = "Q", default = 1L, lower = 1L, tags = c("train", "control")),
          ParamLgl$new(
            id = "doNotMakeSplitPointActualValue", default = FALSE,
            tags = c("train", "control")),
          ParamLgl$new(id = "output_debug_info", default = FALSE, tags = c("train", "control")),
          ParamLgl$new(
            id = "do_not_check_capabilities", default = FALSE,
            tags = c("train", "control")),
          ParamInt$new(
            id = "num_decimal_places", default = 2L, lower = 1L,
            tags = c("train", "control")),
          ParamInt$new(
            id = "batch_size", default = 100L, lower = 1L,
            tags = c("train", "control")),
          ParamUty$new(id = "options", default = NULL, tags = c("train", "pars"))
        )
      )
      ps$add_dep("N", "R", CondEqual$new(TRUE))

      super$initialize(
        id = "classif.PART",
        packages = "RWeka",
        feature_types = c("numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("twoclass", "multiclass", "missings"),
        man = "mlr3extralearners::mlr_learners_classif.PART"
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
      mlr3misc::invoke(RWeka::PART, formula = f, data = data, control = ctrl, .args = pars)
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

.extralrns_dict$add("classif.PART", LearnerClassifPART)

#' @title Regression M5Rules Learner
#' @author henrifnk
#' @name mlr_learners_regr.M5Rules
#'
#' @template class_learner
#' @templateVar id regr.M5Rules
#' @templateVar caller M5Rules
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
#' Hall M, Et al. (1999)
#' Generating rule sets from model trees
#' In: Proceedings of the Twelfth Australian Joint Conference on
#'     Artificial Intelligence, pages 1- 12.
#' \url{http://citeseer.ist.psu.edu/holmes99generating.html}
#'
#' @export
LearnerRegrM5Rules = R6Class("LearnerRegrM5Rules",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamUty$new(id = "subset", tags = c("train", "pars")),
          ParamUty$new(id = "na.action", tags = c("train", "pars")),
          ParamLgl$new(id = "N", default = FALSE, tags = c("train", "control")),
          ParamLgl$new(id = "U", default = FALSE, tags = c("train", "control")),
          ParamLgl$new(id = "R", default = FALSE, tags = c("train", "control")),
          ParamInt$new(id = "M", default = 4L, tags = c("train", "control")),
          ParamLgl$new(id = "output_debug_info", default = FALSE, tags = c("train", "control")),
          ParamLgl$new(
            id = "do_not_check_capabilities", default = FALSE, tags = c("train", "control")),
          ParamInt$new(
            id = "num_decimal_places", default = 2L, lower = 1L, tags = c("train", "control")),
          ParamInt$new(id = "batch_size", default = 100L, lower = 1L, tags = c("train", "control")),
          ParamUty$new(id = "options", default = NULL, tags = c("train", "pars"))
        )
      )

      super$initialize(
        id = "regr.M5Rules",
        packages = "RWeka",
        feature_types = c("numeric", "factor", "ordered"),
        predict_types = "response",
        param_set = ps,
        properties = character(0L),
        man = "mlr3extralearners::mlr_learners_regr.M5Rules"
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
      mlr3misc::invoke(RWeka::M5Rules, formula = f, data = data, control = ctrl, .args = pars)
    },

    .predict = function(task) {
      newdata = task$data(cols = task$feature_names)
      response = mlr3misc::invoke(predict, self$model, newdata = newdata)
      PredictionRegr$new(task = task, response = response)
    }
  )
)

lrns_dict$add("regr.M5Rules", LearnerRegrM5Rules)

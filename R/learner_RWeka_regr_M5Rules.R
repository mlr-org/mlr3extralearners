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
#' `r format_bib("holmes1999generating")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrM5Rules = R6Class("LearnerRegrM5Rules",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps = ps(
        subset = p_uty(tags = c("train", "pars")),
        na.action = p_uty(tags = c("train", "pars")),
        N = p_lgl(default = FALSE, tags = c("train", "control")),
        U = p_lgl(default = FALSE, tags = c("train", "control")),
        R = p_lgl(default = FALSE, tags = c("train", "control")),
        M = p_int(default = 4L, tags = c("train", "control")),
        output_debug_info = p_lgl(default = FALSE, tags = c("train", "control")),
        do_not_check_capabilities = p_lgl(default = FALSE, tags = c("train", "control")),
        num_decimal_places = p_int(default = 2L, lower = 1L, tags = c("train", "control")),
        batch_size = p_int(default = 100L, lower = 1L, tags = c("train", "control")),
        options = p_uty(default = NULL, tags = c("train", "pars"))
      )

      super$initialize(
        id = "regr.M5Rules",
        packages = c("mlr3extralearners", "RWeka"),
        feature_types = c("numeric", "factor", "ordered", "integer"),
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
        ctrl = mlr3misc::invoke(RWeka::Weka_control, .args = ctrl)
      }

      pars = self$param_set$get_values(tags = "pars")
      f = task$formula()
      data = task$data()
      mlr3misc::invoke(RWeka::M5Rules, formula = f, data = data, control = ctrl, .args = pars)
    },

    .predict = function(task) {
      newdata = task$data(cols = task$feature_names)
      response = mlr3misc::invoke(predict, self$model, newdata = newdata)
      list(response = response)
    }
  )
)

.extralrns_dict$add("regr.M5Rules", LearnerRegrM5Rules)

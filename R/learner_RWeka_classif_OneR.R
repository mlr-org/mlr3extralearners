#' @title Classification OneR Learner
#' @author henrifnk
#' @name mlr_learners_classif.OneR
#'
#' @template class_learner
#' @templateVar id classif.OneR
#' @templateVar caller OneR
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
#' Holte R (1993).
#' Very Simple Classification Rules Perform Well on Most Commonly Used Datasets
#' \url{https://link.springer.com/content/pdf/10.1023/A:1022631118932.pdf}
#'
#' @export
LearnerClassifOneR = R6Class("LearnerClassifOneR",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        params = list(
          p_uty(id = "subset", tags = c("train", "pars")),
          p_uty(id = "na.action", tags = c("train", "pars")),
          p_int(id = "B", default = 6L, lower = 1L, tags = c("train", "control")),
          p_lgl(id = "output_debug_info", default = FALSE, tags = c("train", "control")),
          p_lgl(
            id = "do_not_check_capabilities", default = FALSE,
            tags = c("train", "control")),
          p_int(
            id = "num_decimal_places", default = 2L, lower = 1L,
            tags = c("train", "control")),
          p_int(id = "batch_size", default = 100L, lower = 1L, tags = c("train", "control")),
          p_uty(id = "options", default = NULL, tags = c("train", "pars"))
        )
      )

      super$initialize(
        id = "classif.OneR",
        packages = "RWeka",
        feature_types = c("numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.OneR"
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
      mlr3misc::invoke(RWeka::OneR, formula = f, data = data, control = ctrl, .args = pars)
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

.extralrns_dict$add("classif.OneR", LearnerClassifOneR)

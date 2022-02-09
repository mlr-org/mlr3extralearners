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
        subset = p_uty(tags = c("train", "pars")),
        na.action = p_uty(tags = c("train", "pars")),
        B = p_int(default = 6L, lower = 1L, tags = c("train", "control")),
        output_debug_info = p_lgl(default = FALSE, tags = c("train", "control")),
        do_not_check_capabilities = p_lgl(default = FALSE,
          tags = c("train", "control")),
        num_decimal_places = p_int(default = 2L, lower = 1L,
          tags = c("train", "control")),
        batch_size = p_int(default = 100L, lower = 1L, tags = c("train", "control")),
        options = p_uty(default = NULL, tags = c("train", "pars"))
      )

      super$initialize(
        id = "classif.OneR",
        packages = c("mlr3extralearners", "RWeka"),
        feature_types = c("numeric", "factor", "ordered", "integer"),
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
        ctrl = mlr3misc::invoke(RWeka::Weka_control, .args = ctrl)
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

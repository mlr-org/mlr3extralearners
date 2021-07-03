#' @title Classification IBk Learner
#' @author henrifnk
#' @name mlr_learners_classif.IBk
#'
#' @template class_learner
#' @templateVar id classif.IBk
#' @templateVar caller IBk
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
#' Aha D, Kibbler D, Alber M (1991).
#' Instance-based learning algorithms
#' \url{https://link.springer.com/content/pdf/10.1007/BF00153759.pdf}
#'
#' @export
LearnerClassifIBk = R6Class("LearnerClassifIBk",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        params = list(
          subset = p_uty(tags = c("train", "pars")),
          na.action = p_uty(tags = c("train", "pars")),
          I = p_lgl(default = FALSE, tags = c("train", "control")),
          F = p_lgl(default = FALSE, tags = c("train", "control")),
          K = p_int(default = 1L, lower = 1L, tags = c("train", "control")),
          E = p_lgl(default = FALSE, tags = c("train", "control")),
          W = p_int(default = 0L, lower = 0L, tags = c("train", "control")),
          X = p_lgl(default = FALSE, tags = c("train", "control")),
          A = p_uty(default = "weka.core.neighboursearch.LinearNNSearch",
            tags = c("train", "control")),
          output_debug_info = p_lgl(default = FALSE, tags = c("train", "control")),
          do_not_check_capabilities = p_lgl(default = FALSE,
            tags = c("train", "control")),
          num_decimal_places = p_int(default = 2L, lower = 1L,
            tags = c("train", "control")),
          batch_size = p_int(default = 100L, lower = 1L, tags = c("train", "control")),
          options = p_uty(default = NULL, tags = c("train", "pars"))
        )
      )

      super$initialize(
        id = "classif.IBk",
        packages = "RWeka",
        feature_types = c("numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.IBk"
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
      mlr3misc::invoke(RWeka::IBk, formula = f, data = data, control = ctrl, .args = pars)
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

.extralrns_dict$add("classif.IBk", LearnerClassifIBk)

#' @title Regression Rweka Learner
#' @author henrifnk
#' @name mlr_learners_regr.rweka
#'
#' @template class_learner
#' @templateVar id regr.rweka
#' @templateVar caller rweka
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
LearnerRegrRweka = R6Class("LearnerRegrRweka",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        params = list(
          model = p_fct(levels = c("IBk", "M5Rules"), tags = "train"),
          subset = p_uty(tags = "train"),
          na.action = p_uty(tags = "train"),
          I = p_lgl(default = FALSE, tags = c("train", "IBk")),
          F = p_lgl(default = FALSE, tags = c("train", "IBk")),
          K = p_int(default = 1L, lower = 1L, tags = c("train", "IBk")),
          E = p_lgl(default = FALSE, tags = c("train", "IBk")),
          W = p_int(default = 0L, lower = 0L, tags = c("train", "IBk")),
          X = p_lgl(default = FALSE, tags = c("train", "IBk")),
          A = p_uty(default = "weka.core.neighboursearch.LinearNNSearch",
            tags = c("train", "IBk")),
          N = p_lgl(default = FALSE, tags = c("train", "M5Rules")),
          U = p_lgl(default = FALSE, tags = c("train", "M5Rules")),
          R = p_lgl(default = FALSE, tags = c("train", "M5Rules")),
          M = p_int(default = 4L, tags = c("train", "M5Rules")),
          output_debug_info = p_lgl(default = FALSE, tags = "train"),
          do_not_check_capabilities = p_lgl(default = FALSE, tags = "train"),
          num_decimal_places = p_int(default = 2L, lower = 1L, tags = "train"),
          batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
          options = p_uty(default = NULL, tags = "train")
        )
      )

      super$initialize(
        id = "regr.rweka",
        packages = "RWeka",
        feature_types = c("numeric", "factor", "ordered"),
        predict_types = "response",
        param_set = ps,
        properties = character(0L),
        man = "mlr3extralearners::mlr_learners_regr.rweka"
      )
    }
  ),

  private = list(
    .train = function(task) {
      model = self$param_set$values$model

      ctrl = self$param_set$get_values(tags = model)
      if (length(ctrl)) {
        names(ctrl) = gsub("_", replacement = "-", x = names(ctrl))
        ctrl = mlr3misc::invoke(RWeka::Weka_control, ctrl)
      }

      args = self$param_set$get_values(tags = "train")
      args = args[setdiff(names(args), names(ctrl))]

      mlr3misc::invoke(
        getFromNamespace(model, "RWeka"),
        formula = task$formula(),
        data = task$data(),
        control = ctrl,
        .args = args
      )
    },

    .predict = function(task) {
      newdata = task$data(cols = task$feature_names)
      response = mlr3misc::invoke(predict, self$model, newdata = newdata)
      list(response = response)
    }
  )
)

.extralrns_dict$add("regr.rweka", LearnerRegrRweka)

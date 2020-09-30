#' @title Classification JRip Learner
#' @author henrifnk
#' @name mlr_learners_classif.JRip
#'
#' @template class_learner
#' @templateVar id classif.JRip
#' @templateVar caller JRip
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
#' Cohen W (1995).
#' Fast effective rule induction
#' In: Proceedings of the 12th International Conference on Machine Learning, pages 115–123.
#' \url{http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.50.8204}
#'
#' @export
LearnerClassifJRip = R6Class("LearnerClassifJRip",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamUty$new(id = "subset", tags = c("train", "pars")),
          ParamUty$new(id = "na.action", tags = c("train", "pars")),
          ParamInt$new(id = "F", default = 3L, lower = 2L, tags = c("train", "control")),
          ParamDbl$new(id = "N", default = 2, lower = 0, tags = c("train", "control")),
          ParamInt$new(id = "O", default = 2L, lower = 1L, tags = c("train", "control")),
          ParamLgl$new(id = "D", default = FALSE, tags = c("train", "control")),
          ParamInt$new(id = "S", default = 1L, lower = 1L, tags = c("train", "control")),
          ParamLgl$new(id = "E", default = FALSE, tags = c("train", "control")),
          ParamLgl$new(id = "P", default = FALSE, tags = c("train", "control")),
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
        id = "classif.JRip",
        packages = "RWeka",
        feature_types = c("numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.JRip"
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
      mlr3misc::invoke(RWeka::JRip, formula = f, data = data, control = ctrl, .args = pars)
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

lrns_dict$add("classif.JRip", LearnerClassifJRip)

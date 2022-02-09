#' @title Classification J48 Learner
#' @author henrifnk
#' @name mlr_learners_classif.J48
#'
#' @template class_learner
#' @templateVar id classif.J48
#' @templateVar caller J48
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
#' Quinlan R (1993).
#' C4.5: Programs for Machine Learning
#' \url{http://www.rulequest.com/see5-unix.html}
#'
#' @export
LearnerClassifJ48 = R6Class("LearnerClassifJ48",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        subset = p_uty(tags = c("train", "pars")),
        na.action = p_uty(tags = c("train", "pars")),
        U = p_lgl(default = FALSE, tags = c("train", "control")),
        O = p_lgl(default = FALSE, tags = c("train", "control")),
        C = p_dbl(default = 0.25, lower = .Machine$double.eps,
          upper = 1 - .Machine$double.eps, tags = c("train", "control")),
        M = p_int(default = 2L, lower = 1L, tags = c("train", "control")),
        R = p_lgl(default = FALSE, tags = c("train", "control")),
        N = p_int(default = 3L, lower = 2L, tags = c("train", "control")),
        B = p_lgl(default = FALSE, tags = c("train", "control")),
        S = p_lgl(default = FALSE, tags = c("train", "control")),
        L = p_lgl(default = FALSE, tags = c("train", "control")),
        A = p_lgl(default = FALSE, tags = c("train", "control")),
        J = p_lgl(default = FALSE, tags = c("train", "control")),
        Q = p_int(default = 1L, lower = 1L, tags = c("train", "control")),
        doNotMakeSplitPointActualValue = p_lgl(default = FALSE,
          tags = c("train", "control")),
        output_debug_info = p_lgl(default = FALSE, tags = c("train", "control")),
        do_not_check_capabilities = p_lgl(default = FALSE,
          tags = c("train", "control")),
        num_decimal_places = p_int(default = 2L, lower = 1L,
          tags = c("train", "control")),
        batch_size = p_int(default = 100L, lower = 1L, tags = c("train", "control")),
        options = p_uty(default = NULL, tags = c("train", "pars"))
      )
      ps$add_dep("C", "U", CondEqual$new(FALSE))
      ps$add_dep("C", "R", CondEqual$new(FALSE))
      ps$add_dep("R", "U", CondEqual$new(FALSE))
      ps$add_dep("N", "U", CondEqual$new(FALSE))
      ps$add_dep("N", "R", CondEqual$new(TRUE))

      super$initialize(
        id = "classif.J48",
        packages = c("mlr3extralearners", "RWeka"),
        feature_types = c("numeric", "factor", "ordered", "integer"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("twoclass", "multiclass", "missings"),
        man = "mlr3extralearners::mlr_learners_classif.J48"
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

.extralrns_dict$add("classif.J48", LearnerClassifJ48)

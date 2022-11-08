#' @title Classification J48 Learner
#' @author henrifnk
#' @name mlr_learners_classif.J48
#'
#' @description
#' Decision tree algorithm.
#' Calls [RWeka::IBk()] from \CRANpkg{RWeka}.
#'
#' @template learner
#' @templateVar id classif.J48
#'
#' @section Initial parameter values:
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
#' `r format_bib("quinlan2014c4")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifJ48 = R6Class("LearnerClassifJ48",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        U = p_lgl(default = FALSE, tags = "train"),
        O = p_lgl(default = FALSE, tags = "train"),
        C = p_dbl(default = 0.25, lower = .Machine$double.eps,
          upper = 1 - .Machine$double.eps, tags = "train"),
        M = p_int(default = 2L, lower = 1L, tags = "train"),
        R = p_lgl(default = FALSE, tags = "train"),
        N = p_int(default = 3L, lower = 2L, tags = "train"),
        B = p_lgl(default = FALSE, tags = "train"),
        S = p_lgl(default = FALSE, tags = "train"),
        L = p_lgl(default = FALSE, tags = "train"),
        A = p_lgl(default = FALSE, tags = "train"),
        J = p_lgl(default = FALSE, tags = "train"),
        Q = p_int(default = 1L, lower = 1L, tags = "train"),
        doNotMakeSplitPointActualValue = p_lgl(default = FALSE,
          tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE,
          tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L,
          tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
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
        predict_types = "response",
        param_set = ps,
        properties = c("twoclass", "multiclass", "missings"),
        man = "mlr3extralearners::mlr_learners_classif.J48",
        label = "Tree-based Model"
      )
    }
  ),

  private = list(
    .train = function(task) {
      params = self$param_set$get_values(tags = "train")
      ctrl_arg_names = weka_control_args(RWeka::J48)
      arg_names = setdiff(names(params), ctrl_arg_names)
      ctrl = params[which(names(params) %in% ctrl_arg_names)]
      pars = params[which(names(params) %nin% ctrl_arg_names)]

      if (length(ctrl) > 0L) {
        names(ctrl) = gsub("_", replacement = "-", x = names(ctrl))
        ctrl = invoke(RWeka::Weka_control, .args = ctrl)
      }

      f = task$formula()
      data = task$data()
      invoke(RWeka::J48, formula = f, data = data, control = ctrl, .args = pars)
    },

    .predict = function(task) {
      response = NULL
      prob = NULL
      newdata = ordered_features(task, self)
      pars = self$param_set$get_values(tags = "predict")

      if (self$predict_type == "response") {
        response = invoke(predict, self$model, newdata = newdata, type = "class",
          .args = pars
        )
      } else {
        prob = mlr3misc::invoke(predict, self$model, newdata = newdata, type = "prob",
          .args = pars
        )
      }
      list(response = response, prob = prob)
    }
  )
)

.extralrns_dict$add("classif.J48", LearnerClassifJ48)

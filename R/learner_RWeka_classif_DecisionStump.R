#' @title Classification Decision Stump Learner
#' @author damirpolat
#' @name mlr_learners_classif.DecisionStump
#'
#' @description
#' Decision Stump Learner
#' Calls [RWeka::DecisionStump()] from \CRANpkg{RWeka}.
#'
#' @section Custom mlr3 parameters:
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
#' @templateVar id classif.DecisionStump
#' @template learner
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifDecisionStump = R6Class("LearnerClassifDecisionStump",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE,
                                          tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L,
                                   tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )

      super$initialize(
        id = "classif.DecisionStump",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("missings", "multiclass", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.DecisionStump",
        label = "Decision Stump"
      )
    }
  ),

  private = list(
    .train = function(task) {
      params = self$param_set$get_values(tags = "train")
      ctrl_arg_names = weka_control_args(RWeka::DecisionStump)
      arg_names = setdiff(names(params), ctrl_arg_names)
      ctrl = params[which(names(params) %in% ctrl_arg_names)]
      pars = params[which(names(params) %nin% ctrl_arg_names)]

      if (length(ctrl) > 0L) {
        names(ctrl) = gsub("_", replacement = "-", x = names(ctrl))
        ctrl = invoke(RWeka::Weka_control, .args = ctrl)
      }

      f = task$formula()
      data = task$data()
      invoke(RWeka::DecisionStump, formula = f, data = data, control = ctrl, .args = pars)
    },

    .predict = function(task) {
      response = NULL
      prob = NULL
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)

      if (self$predict_type == "response") {
        response = invoke(predict, self$model, newdata = newdata, type = "class",
          .args = pars
        )
      } else {
        prob = invoke(predict, self$model, newdata = newdata, type = "prob",
          .args = pars
        )
      }
      list(response = response, prob = prob)
    }
  )
)

.extralrns_dict$add("classif.DecisionStump", LearnerClassifDecisionStump)

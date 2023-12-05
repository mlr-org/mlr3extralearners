#' @title Regression Decision Stump Learner
#' @author damirpolat
#' @name mlr_learners_regr.DecisionStump
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
#'
#' @templateVar id regr.DecisionStump
#' @template learner
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrDecisionStump = R6Class("LearnerRegrDecisionStump",
  inherit = LearnerRegr,
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
        id = "regr.DecisionStump",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response"),
        param_set = param_set,
        properties = c("missings"),
        man = "mlr3extralearners::mlr_learners_regr.DecisionStump",
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
      newdata = ordered_features(task, self)
      pars = self$param_set$get_values(tags = "predict")
      response = invoke(predict, self$model, newdata = newdata, .args = pars)
      list(response = response)
    }
  )
)

.extralrns_dict$add("regr.DecisionStump", LearnerRegrDecisionStump)

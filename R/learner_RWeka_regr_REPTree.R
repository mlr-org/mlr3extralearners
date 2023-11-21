#' @title Regression Fast Decision Tree Learner
#' @author damirpolat
#' @name mlr_learners_regr.REPTree
#'
#' @description
#' Fast decision tree learner
#' Calls [RWeka::make_Weka_classifier('weka/classifiers/trees/REPTree')] \CRANpkg{RWeka}.
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
#' - `R` removed:
#'   - spread initial count over all class values (i.e. don't use 1 per value)
#'   
#' - Reason for change: The parameter is removed because it's unclear how to actually use it.
#' 
#'
#' @templateVar id regr.REPTree
#' @template learner
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrREPTree = R6Class("LearnerRegrREPTree",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        M = p_int(default = 2L, tags = "train"),
        V = p_dbl(default = 1e-3, tags = "train"),
        N = p_int(default = 3L, tags = "train"),
        S = p_int(default = 1L, tags = "train"),
        P = p_lgl(tags = "train"),
        L = p_int(default = -1L, tags = "train"),
        I = p_int(default = 0L, tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE,
                                          tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L,
                                   tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )
      
      super$initialize(
        id = "regr.REPTree",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response"),
        param_set = param_set,
        properties = character(0L),
        man = "mlr3extralearners::mlr_learners_regr.REPTree",
        label = "Fast Decision Tree Learner"
      )
    }
  ),
  
  private = list(
    .train = function(task) {
      weka_learner = RWeka::make_Weka_classifier('weka/classifiers/trees/REPTree')
      
      pars = self$param_set$get_values(tags = "train")
      ctrl_arg_names = weka_control_args(weka_learner)
      arg_names = setdiff(names(pars), ctrl_arg_names)
      ctrl = pars[which(names(pars) %in% ctrl_arg_names)]
      pars = pars[which(names(pars) %nin% ctrl_arg_names)]
      
      if (length(ctrl) > 0L) {
        names(ctrl) = gsub("_", replacement = "-", x = names(ctrl))
        ctrl = invoke(RWeka::Weka_control, .args = ctrl)
      }
      
      formula = task$formula()
      data = task$data()
      invoke(weka_learner, formula = formula, data = data, control = ctrl)
    },
    
    .predict = function(task) {
      newdata = ordered_features(task, self)
      pars = self$param_set$get_values(tags = "predict")
      response = invoke(predict, self$model, newdata = newdata, .args = pars)
      list(response = response)
    }
  )
)

.extralrns_dict$add("regr.REPTree", LearnerRegrREPTree)

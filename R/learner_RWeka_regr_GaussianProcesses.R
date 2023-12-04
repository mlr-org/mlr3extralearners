#' @title Regression Gaussian Processes For Regression From Weka
#' @author damirpolat
#' @name mlr_learners_regr.GaussianProcesses
#'
#' @description
#' Gaussian Processes For Regression
#' Calls [RWeka::make_Weka_classifier()] from \CRANpkg{RWeka}
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
#' - `output-debug-info` for kernel parameter removed:
#'   - enables debugging output (if available) to be printed
#'   
#' - Reason for change: The parameter is removed because it's unclear how to actually use it.
#'
#'
#' @templateVar id regr.GaussianProcesses
#' @template learner
#'
#' @references
#' `r format_bib(Mackay1998)`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrGaussianProcesses = R6Class("LearnerRegrGaussianProcesses",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        L = p_dbl(default = 1L, tags = "train"),
        N = p_fct(default = "0", levels = c("0", "1", "2"), tags = "train"),
        K = p_uty(default = "weka.classifiers.functions.supportVector.PolyKernel", tags = "train"),
        S = p_int(default = 1L, tags = "train"),
        E = p_dbl(default = 1.0, depends = (K == "weka.classifiers.functions.supportVector.PolyKernel"), 
                  tags = "train"),
        C = p_int(default = 250007, depends = (K == "weka.classifiers.functions.supportVector.PolyKernel"),
                  tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE,
                                          tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L,
                                   tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )
      
      super$initialize(
        id = "regr.GaussianProcesses",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response"),
        param_set = param_set,
        properties = c("missings"),
        man = "mlr3extralearners::mlr_learners_regr.GaussianProcesses",
        label = "Gaussian Processes For Regression From Weka"
      )
    }
  ),
  
  private = list(
    .train = function(task) {
      weka_learner = RWeka::make_Weka_classifier('weka/classifiers/functions/GaussianProcesses')
      
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

.extralrns_dict$add("regr.GaussianProcesses", LearnerRegrGaussianProcesses)

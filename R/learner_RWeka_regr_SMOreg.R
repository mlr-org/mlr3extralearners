#' @title Regression Support Vector Machine For Regression
#' @author damirpolat
#' @name mlr_learners_regr.SMOreg
#'
#' @description
#' Support Vector Machine for regression
#' Calls [RWeka::make_Weka_classifier('weka/classifiers/functions/SMOreg')] from \CRANpkg{RWeka}.
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
#' @templateVar id regr.SMOreg
#' @template learner
#'
#' @references
#' `r format_bib(Shevade1999)`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrSMOreg = R6Class("LearnerRegrSMOreg",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        C = p_dbl(default = 1L, tags = "train"),
        N = p_fct(default = "0", levels = c("0", "1", "2"), tags = "train"),
        I = p_uty(default = "weka.classifiers.functions.supportVector.RegSMOImproved", 
                  tags = "train"),
        K = p_uty(default = "weka.classifiers.functions.supportVector.PolyKernel", 
                  tags = "train"),
        T = p_dbl(default = 0.001, depends = (I == "weka.classifiers.functions.supportVector.RegSMOImproved"),
                  tags = "train"),
        V = p_lgl(default = TRUE, depends = (I == "weka.classifiers.functions.supportVector.RegSMOImproved"),
                  tags = "train"),
        L = p_dbl(default = 1.0e-3, depends = (I == "weka.classifiers.functions.supportVector.RegSMOImproved"),
                  tags = "train"),
        W = p_int(default = 1L, depends = (I == "weka.classifiers.functions.supportVector.RegSMOImproved"),
                  tags = "train"),
        E = p_dbl(default = 1L, depends = (K == "weka.classifiers.functions.supportVector.PolyKernel"),
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
        id = "regr.SMOreg",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response"),
        param_set = param_set,
        properties = c("missings"),
        man = "mlr3extralearners::mlr_learners_regr.SMOreg",
        label = "Support Vector Machine For Regression"
      )
    }
  ),
  
  private = list(
    .train = function(task) {
      weka_learner = RWeka::make_Weka_classifier('weka/classifiers/functions/SMOreg')
      
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

.extralrns_dict$add("regr.SMOreg", LearnerRegrSMOreg)

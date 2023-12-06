#' @title Regression Support Vector Machine For Regression
#' @author damirpolat
#' @name mlr_learners_regr.SMOreg
#'
#' @description
#' Support Vector Machine for regression
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
#' - `T_improved`:
#'   - original id: T
#'
#' - `V_improved`:
#'   - original id: V
#'
#' - `P_improved`:
#'   - original id: P
#'
#' - `L_improved`:
#'   - original id: L (duplicated L for when I is set to RegSMOImproved)
#'
#' - `W_improved`:
#'   - original id: W
#'
#' - `C_poly`:
#'   - original id: C
#'
#' - `E_poly`:
#'   - original id: E
#'
#' - `L_poly`:
#'   - original id: L (duplicated L for when K is set to PolyKernel)
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
        T_improved = p_dbl(default = 0.001, depends = (I == "weka.classifiers.functions.supportVector.RegSMOImproved"),
                           tags = "train"),
        V_improved = p_lgl(default = TRUE, depends = (I == "weka.classifiers.functions.supportVector.RegSMOImproved"),
                           tags = "train"),
        P_improved = p_dbl(default = 1e-12, depends = (I == "weka.classifiers.functions.supportVector.RegSMOImproved"),
                           tags = "train"),
        L_improved = p_dbl(default = 1.0e-3, depends = (I == "weka.classifiers.functions.supportVector.RegSMOImproved"),
                           tags = "train"),
        W_improved = p_int(default = 1L, depends = (I == "weka.classifiers.functions.supportVector.RegSMOImproved"),
                           tags = "train"),
        C_poly = p_int(default = 250007, depends = (K == "weka.classifiers.functions.supportVector.PolyKernel"),
                       tags = "train"),
        E_poly = p_dbl(default = 1L, depends = (K == "weka.classifiers.functions.supportVector.PolyKernel"),
                       tags = "train"),
        L_poly = p_lgl(default = FALSE, depends = (K == "weka.classifiers.functions.supportVector.PolyKernel"),
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
      weka_learner = RWeka::make_Weka_classifier("weka/classifiers/functions/SMOreg")

      pars = self$param_set$get_values(tags = "train")
      ctrl_arg_names = weka_control_args(weka_learner)
      arg_names = setdiff(names(pars), ctrl_arg_names)
      ctrl = pars[which(names(pars) %in% ctrl_arg_names)]
      if (!is.null(ctrl$I) & length(arg_names) > 0) {
        if (grepl("RegSMOImproved", ctrl$I) & any(grepl("_improved", arg_names))) {
          arg_names_extra = arg_names[grepl("_improved", arg_names)]
          ctrl$I = c(ctrl$I, pars[which(names(pars) %in% arg_names_extra)])
          names(ctrl$I) = c("", gsub("_improved", replacement = "", x = arg_names_extra))
        }
      }
      if (!is.null(ctrl$K) & length(arg_names) > 0) {
        if (grepl("PolyKernel", ctrl$K) & any(grepl("_poly", arg_names))) {
          arg_names_extra = arg_names[grepl("_poly", arg_names)]
          ctrl$K = c(ctrl$K, pars[which(names(pars) %in% arg_names_extra)])
          names(ctrl$K) = c("", gsub("_poly", replacement = "", x = arg_names_extra))
        }
      }

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

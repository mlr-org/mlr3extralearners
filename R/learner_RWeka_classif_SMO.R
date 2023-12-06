#' @title Classification Support Vector Classifier Trained With John Platt's Sequential Minimal Optimization Algorithm
#' @author damirpolat
#' @name mlr_learners_classif.SMO
#'
#' @description
#' Support Vector classifier trained with John Platt's sequential minimal optimization algorithm
#' Calls [RWeka::SMO()] from \CRANpkg{RWeka}.
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
#' - `E_poly`:
#'   - original id: E
#'
#' - `L_poly`:
#'   - original id: L
#'
#' - `C_poly`:
#'   - original id: C
#'
#' - `C_logistic`:
#'   - original id: C
#'
#' - `R_logistic`:
#'   - original id: R
#'
#' - `M_logistic`:
#'   - original id: M
#'
#' - Reason for change: This learner contains changed ids of the following control arguments
#' since their ids contain irregular pattern
#'
#'
#' @templateVar id classif.SMO
#' @template learner
#'
#' @references
#' `r format_bib(Platt1998, Keerthi2001, Hastie1998)`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifSMO = R6Class("LearnerClassifSMO",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        no_checks = p_lgl(default = FALSE, tags = "train"),
        C = p_dbl(default = 1L, tags = "train"),
        N = p_fct(default = "0", levels = c("0", "1", "2"), tags = "train"),
        L = p_dbl(default = 1.0e-3, tags = "train"),
        P = p_dbl(default = 1.0e-12, tags = "train"),
        M = p_lgl(default = FALSE, tags = "train"),
        V = p_int(default = -1L, tags = "train"),
        W = p_int(default = 1L, tags = "train"),
        K = p_uty(default = "weka.classifiers.functions.supportVector.PolyKernel", tags = "train"),
        calibrator = p_uty(default = "weka.classifiers.functions.Logistic", tags = "train"),
        E_poly = p_dbl(default = 1L, depends = (K == "weka.classifiers.functions.supportVector.PolyKernel"),
                       tags = "train"),
        L_poly = p_lgl(default = FALSE, depends = (K == "weka.classifiers.functions.supportVector.PolyKernel"),
                       tags = "train"),
        C_poly = p_int(default = 25007, depends = (K == "weka.classifiers.functions.supportVector.PolyKernel"),
                       tags = "train"),
        C_logistic = p_lgl(default = FALSE, depends = (calibrator == "weka.classifiers.functions.Logistic"),
                           tags = "train"),
        R_logistic = p_dbl(depends = (calibrator == "weka.classifiers.functions.Logistic"), tags = "train"),
        M_logistic = p_int(default = -1L, depends = (calibrator == "weka.classifiers.functions.Logistic"),
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
        id = "classif.SMO",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("missings", "multiclass", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.SMO",
        label = "Support Vector Classifier Trained With John Platt's Sequential Minimal Optimization Algorithm"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      ctrl_arg_names = weka_control_args(RWeka::SMO)
      arg_names = setdiff(names(pars), ctrl_arg_names)
      ctrl = pars[which(names(pars) %in% ctrl_arg_names)]
      if (!is.null(ctrl$K) & length(arg_names) > 0) {
        if (grepl("PolyKernel", ctrl$K) & any(grepl("_poly", arg_names))) {
          arg_names_extra = arg_names[grepl("_poly", arg_names)]
          ctrl$K = c(ctrl$K, pars[which(names(pars) %in% arg_names_extra)])
          names(ctrl$K) = c("", gsub("_poly", replacement = "", x = arg_names_extra))
        }
      }
      if (!is.null(ctrl$calibrator) & length(arg_names) > 0) {
        if (grepl("Logistic", ctrl$calibrator) & any(grepl("_logistic", arg_names))) {
          arg_names_extra = arg_names[grepl("_logistic", arg_names)]
          ctrl$calibrator = c(ctrl$calibrator, pars[which(names(pars) %in% arg_names_extra)])
          names(ctrl$calibrator) = c("", gsub("_logistic", replacement = "", x = arg_names_extra))
        }
      }

      if (length(ctrl) > 0L) {
        names(ctrl) = gsub("_", replacement = "-", x = names(ctrl))
        ctrl = invoke(RWeka::Weka_control, .args = ctrl)
      }

      formula = task$formula()
      data = task$data()
      invoke(RWeka::SMO, formula = formula, data = data, control = ctrl)
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

.extralrns_dict$add("classif.SMO", LearnerClassifSMO)

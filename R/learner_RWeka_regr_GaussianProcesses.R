#' @title Regression Gaussian Processes Learner From Weka
#' @author damirpolat
#' @name mlr_learners_regr.GaussianProcesses
#'
#' @description
#' Gaussian Processes.
#' Calls [RWeka::make_Weka_classifier()] from \CRANpkg{RWeka}.
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
#'   - original id: L (duplicated L for when K is set to PolyKernel)
#'
#' - `C_poly`:
#'   - original id: C
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
#' `r format_bib("Mackay1998")`
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
        K = p_fct(default = "supportVector.PolyKernel", c("supportVector.NormalizedPolyKernel",
                                                          "supportVector.PolyKernel", "supportVector.Puk",
                                                          "supportVector.RBFKernel", "supportVector.StringKernel"),
                  tags = "train"),
        S = p_int(default = 1L, tags = "train"),
        E_poly = p_dbl(default = 1.0, depends = (K == "supportVector.PolyKernel"), tags = "train"),
        L_poly = p_lgl(default = FALSE, depends = (K == "supportVector.PolyKernel"), tags = "train"),
        C_poly = p_int(default = 250007, depends = (K == "supportVector.PolyKernel"), tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE, tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L, tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )

      super$initialize(
        id = "regr.GaussianProcesses",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = "response",
        param_set = param_set,
        properties = "missings",
        man = "mlr3extralearners::mlr_learners_regr.GaussianProcesses",
        label = "Gaussian Processes"
      )
    }
  ),

  private = list(
    .train = function(task) {
      weka_learner = RWeka::make_Weka_classifier("weka/classifiers/functions/GaussianProcesses")
      pars = self$param_set$get_values(tags = "train")
      nested_pars = list(K = "_poly")
      rweka_train(task$data(), task$formula(), pars, weka_learner, nested_pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      rweka_predict(newdata, pars, self$predict_type, self$model)
    }
  )
)

.extralrns_dict$add("regr.GaussianProcesses", LearnerRegrGaussianProcesses)

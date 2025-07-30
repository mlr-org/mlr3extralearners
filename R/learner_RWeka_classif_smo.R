#' @title Classification Support Vector Machine Learner
#' @author damirpolat
#' @name mlr_learners_classif.smo
#'
#' @description
#' Support Vector classifier trained with John Platt's sequential minimal optimization algorithm.
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
#' @templateVar id classif.smo
#' @template learner
#'
#' @references
#' `r format_bib("Platt1998", "Keerthi2001", "Hastie1998")`
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
        K = p_fct(default = "PolyKernel", c("NormalizedPolyKernel", "PolyKernel", "Puk", "RBFKernel", "StringKernel"),
                  tags = "train"),
        calibrator = p_uty(default = "weka.classifiers.functions.Logistic", tags = "train"),
        E_poly = p_dbl(default = 1L, depends = (K == "PolyKernel"), tags = "train"),
        L_poly = p_lgl(default = FALSE, depends = (K == "PolyKernel"), tags = "train"),
        C_poly = p_int(default = 25007, depends = (K == "PolyKernel"), tags = "train"),
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
        id = "classif.smo",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("missings", "multiclass", "twoclass", "marshal"),
        man = "mlr3extralearners::mlr_learners_classif.smo",
        label = "Support Vector Machine"
      )
    },

    #' @description
    #' Marshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::marshal_model()`].
    marshal = function(...) {
      learner_marshal(.learner = self, ...)
    },
    #' @description
    #' Unmarshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::unmarshal_model()`].
    unmarshal = function(...) {
      learner_unmarshal(.learner = self, ...)
    }
  ),

  active = list(
    #' @field marshaled (`logical(1)`)\cr
    #' Whether the learner has been marshaled.
    marshaled = function() {
      learner_marshaled(self)
    }
  ),

  private = list(
    .train = function(task) {
      weka_learner = RWeka::SMO
      pars = self$param_set$get_values(tags = "train")
      nested_pars = list(K = "_poly", calibrator = "_logistic")
      rweka_train(task$data(), task$formula(), pars, weka_learner, nested_pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      rweka_predict(newdata, pars, self$predict_type, self$model)
    }
  )
)

.extralrns_dict$add("classif.smo", LearnerClassifSMO)

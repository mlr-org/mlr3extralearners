#' @title Regression Support Vector Machine Learner
#' @author damirpolat
#' @name mlr_learners_regr.smo_reg
#'
#' @description
#' Support Vector Machine for regression.
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
#' @templateVar id regr.smo_reg
#' @template learner
#'
#' @references
#' `r format_bib("Shevade1999")`
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
        I = p_fct(default = "RegSMOImproved", levels = c("RegSMO", "RegSMOImproved"),
                  tags = "train"),
        K = p_fct(default = "PolyKernel", c("NormalizedPolyKernel", "PolyKernel", "Puk", "RBFKernel", "StringKernel"),
                  tags = "train"),
        T_improved = p_dbl(default = 0.001, depends = (I == "RegSMOImproved"), tags = "train"),
        V_improved = p_lgl(default = TRUE, depends = (I == "RegSMOImproved"), tags = "train"),
        P_improved = p_dbl(default = 1e-12, depends = (I == "RegSMOImproved"), tags = "train"),
        L_improved = p_dbl(default = 1.0e-3, depends = (I == "RegSMOImproved"), tags = "train"),
        W_improved = p_int(default = 1L, depends = (I == "RegSMOImproved"), tags = "train"),
        C_poly = p_int(default = 250007, depends = (K == "PolyKernel"), tags = "train"),
        E_poly = p_dbl(default = 1L, depends = (K == "PolyKernel"), tags = "train"),
        L_poly = p_lgl(default = FALSE, depends = (K == "PolyKernel"), tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE, tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L, tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )

      super$initialize(
        id = "regr.smo_reg",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = "response",
        param_set = param_set,
        properties = c("marshal", "missings"),
        man = "mlr3extralearners::mlr_learners_regr.smo_reg",
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
      weka_learner = RWeka::make_Weka_classifier("weka/classifiers/functions/SMOreg")
      pars = self$param_set$get_values(tags = "train")
      nested_pars = list(I = "_improved", K = "_poly")
      rweka_train(task$data(), task$formula(), pars, weka_learner, nested_pars)
    },

    .predict = function(task) {
      newdata = ordered_features(task, self)
      pars = self$param_set$get_values(tags = "predict")
      response = invoke(predict, self$model, newdata = newdata, .args = pars)
      list(response = response)
    }
  )
)

.extralrns_dict$add("regr.smo_reg", LearnerRegrSMOreg)

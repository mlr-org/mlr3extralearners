#' @title Regression M5P Learner
#' @author damirpolat
#' @name mlr_learners_regr.m5p
#'
#' @description
#' Implements base routines for generating M5 Model trees and rules.
#' Calls [RWeka::M5P()] from \CRANpkg{RWeka}.
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
#' @templateVar id regr.m5p
#' @template learner
#'
#' @references
#' `r format_bib("Quinlan1992", "Wang1997")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrM5P = R6Class("LearnerRegrM5P",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        N = p_lgl(tags = "train"),
        U = p_lgl(tags = "train"),
        R = p_lgl(tags = "train"),
        M = p_int(default = 4L, tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE, tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L, tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        L = p_lgl(tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )

      super$initialize(
        id = "regr.m5p",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = "response",
        param_set = param_set,
        properties = "marshal",
        man = "mlr3extralearners::mlr_learners_regr.m5p",
        label = "M5P"
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
      weka_learner = RWeka::M5P
      pars = self$param_set$get_values(tags = "train")
      rweka_train(task$data(), task$formula(), pars, weka_learner)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      rweka_predict(newdata, pars, self$predict_type, self$model)
    }
  )
)

.extralrns_dict$add("regr.m5p", LearnerRegrM5P)

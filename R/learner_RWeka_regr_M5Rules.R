#' @title Regression M5Rules Learner
#' @author henrifnk
#' @name mlr_learners_regr.M5Rules
#'
#' @description
#' Algorithm for inducing [decision lists](https://en.wikipedia.org/wiki/Decision_list) from
#' model trees.
#' Calls [RWeka::M5Rules()] from \CRANpkg{RWeka}.
#'
#' @template learner
#' @templateVar id regr.M5Rules
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
#' @references
#' `r format_bib("holmes1999generating")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrM5Rules = R6Class("LearnerRegrM5Rules",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        N = p_lgl(default = FALSE, tags = "train"),
        U = p_lgl(default = FALSE, tags = "train"),
        R = p_lgl(default = FALSE, tags = "train"),
        M = p_int(default = 4L, tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE, tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L, tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )

      super$initialize(
        id = "regr.M5Rules",
        packages = c("mlr3extralearners", "RWeka"),
        feature_types = c("numeric", "factor", "ordered", "integer"),
        predict_types = "response",
        param_set = ps,
        properties = "marshal",
        man = "mlr3extralearners::mlr_learners_regr.M5Rules",
        label = "Rule-based Algorithm"
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
      weka_learner = RWeka::M5Rules
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

.extralrns_dict$add("regr.M5Rules", LearnerRegrM5Rules)

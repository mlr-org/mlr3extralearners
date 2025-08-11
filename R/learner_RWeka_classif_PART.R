#' @title Classification PART Learner
#' @author henrifnk
#' @name mlr_learners_classif.PART
#'
#' @description
#' Regression partition tree.
#' Calls [RWeka::PART()] from \CRANpkg{RWeka}.
#'
#' @template learner
#' @templateVar id classif.PART
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
#' `r format_bib("frank1998generating")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifPART = R6Class("LearnerClassifPART",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        C = p_dbl(default = 0.25, lower = .Machine$double.eps,
          upper = 1 - .Machine$double.eps, tags = "train"),
        M = p_int(default = 2L, lower = 1L, tags = "train"),
        R = p_lgl(default = FALSE, tags = "train"),
        N = p_int(default = 3L, lower = 1L, tags = "train"),
        B = p_lgl(default = FALSE, tags = "train"),
        U = p_lgl(default = FALSE, tags = "train"),
        J = p_lgl(default = FALSE, tags = "train"),
        Q = p_int(default = 1L, lower = 1L, tags = "train"),
        doNotMakeSplitPointActualValue = p_lgl(default = FALSE,
          tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE,
          tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L,
          tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L,
          tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )
      ps$add_dep("N", "R", CondEqual$new(TRUE))

      super$initialize(
        id = "classif.PART",
        packages = c("mlr3extralearners", "RWeka"),
        feature_types = c("numeric", "factor", "ordered", "integer"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("twoclass", "multiclass", "missings", "marshal"),
        man = "mlr3extralearners::mlr_learners_classif.PART",
        label = "Tree-based Model"
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
      weka_learner = RWeka::PART
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

.extralrns_dict$add("classif.PART", LearnerClassifPART)

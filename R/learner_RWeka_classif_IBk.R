#' @title Classification IBk Learner
#' @author henrifnk
#' @name mlr_learners_classif.IBk
#'
#' @description
#' Instance based algorithm: K-nearest neighbours regression.
#' Calls [RWeka::IBk()] from \CRANpkg{RWeka}.
#'
#'
#' @template learner
#' @templateVar id classif.IBk
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
#' - `weight`:
#'   - original id: I and F
#'
#' - Reason for change: original `I` and `F` params are interdependent
#' (`I` can only be `TRUE` when `F` is `FALSE` and vice versa).
#' The easiest way to encode this is to combine `I` and `F` into one factor param.
#'
#'
#' @references
#' `r format_bib("aha1991instance")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifIBk = R6Class("LearnerClassifIBk",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        weight = p_fct(levels = c("I", "F"), tags = "train"),
        K = p_int(default = 1L, lower = 1L, tags = "train"),
        E = p_lgl(default = FALSE, tags = "train"),
        W = p_int(default = 0L, lower = 0L, tags = "train"),
        X = p_lgl(default = FALSE, tags = "train"),
        A = p_fct(default = "LinearNNSearch",
                  levels = c("BallTree", "CoverTree", "FilteredNeighbourSearch", "KDTree", "LinearNNSearch"),
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
        id = "classif.IBk",
        packages = c("mlr3extralearners", "RWeka"),
        feature_types = c("numeric", "factor", "ordered", "integer"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("twoclass", "multiclass", "marshal"),
        man = "mlr3extralearners::mlr_learners_classif.IBk",
        label = "Nearest Neighbour"
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
      weka_learner = RWeka::IBk
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

.extralrns_dict$add("classif.IBk", LearnerClassifIBk)

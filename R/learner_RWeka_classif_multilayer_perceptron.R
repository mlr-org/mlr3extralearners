#' @title Classification MultilayerPerceptron Learner
#' @author damirpolat
#' @name mlr_learners_classif.multilayer_perceptron
#'
#' @description
#' Classifier that uses backpropagation to learn a multi-layer perceptron.
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
#' - Reason for change: This learner contains changed ids of the following control arguments
#' since their ids contain irregular pattern
#'
#' - `G` removed:
#'   - GUI will be opened
#'
#' - Reason for change: The parameter is removed because we don't want to launch GUI.
#'
#'
#' @templateVar id classif.multilayer_perceptron
#' @template learner
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifMultilayerPerceptron = R6Class("LearnerClassifMultilayerPerceptron",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        L = p_dbl(default = 0.3, lower = 0L, upper = 1L, tags = "train"),
        M = p_dbl(default = 0.2, lower = 0L, upper = 1L, tags = "train"),
        N = p_int(default = 500L, lower = 1L, tags = "train"),
        V = p_dbl(default = 0L, lower = 0L, upper = 100L, tags = "train"),
        S = p_int(default = 0L, lower = 0L, tags = "train"),
        E = p_int(default = 20L, lower = 1L, tags = "train"),
        A = p_lgl(default = FALSE, tags = "train"),
        B = p_lgl(default = FALSE, tags = "train"),
        H = p_uty(default = "a", tags = "train"),
        C = p_lgl(default = FALSE, tags = "train"),
        I = p_lgl(default = FALSE, tags = "train"),
        R = p_lgl(default = FALSE, tags = "train"),
        D = p_lgl(default = FALSE, tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE,
                                          tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L,
                                   tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )

      super$initialize(
        id = "classif.multilayer_perceptron",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("missings", "multiclass", "twoclass", "marshal"),
        man = "mlr3extralearners::mlr_learners_classif.multilayer_perceptron",
        label = "MultilayerPerceptron"
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
      weka_learner = RWeka::make_Weka_classifier("weka/classifiers/functions/MultilayerPerceptron")
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

.extralrns_dict$add("classif.multilayer_perceptron", LearnerClassifMultilayerPerceptron)

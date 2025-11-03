#' @title Regression Stochastic Gradient Descent Learner
#' @author damirpolat
#' @name mlr_learners_regr.sgd
#'
#' @description
#' Stochastic Gradient Descent for learning various linear models.
#' Calls [RWeka::make_Weka_classifier()] from \CRANpkg{RWeka}.
#'
#' @section Initial parameter values:
#' - `F`:
#'    - Has only 3 out of 5 original loss functions: 2 = squared loss (regression),
#'      3 = epsilon insensitive loss (regression) and 4 = Huber loss (regression)
#'      with 2 (squared loss) being the new default
#'    - Reason for change: this learner should only contain loss functions appropriate for regression tasks
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
#' @templateVar id regr.sgd
#' @template learner
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrSGD = R6Class("LearnerRegrSGD",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        F = p_fct(default = "2", levels = c("2", "3", "4"), tags = "train"),
        L = p_dbl(default = 0.01, tags = "train"),
        R = p_dbl(default = 0.0001, tags = "train"),
        E = p_int(default = 500L, tags = "train"),
        C = p_dbl(default = 1e-3, tags = "train"),
        N = p_lgl(tags = "train"),
        M = p_lgl(tags = "train"),
        S = p_int(default = 1L, tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE,
                                          tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L,
                                   tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )

      param_set$values = list(F = "2")

      super$initialize(
        id = "regr.sgd",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = "response",
        param_set = param_set,
        properties = "marshal",
        man = "mlr3extralearners::mlr_learners_regr.sgd",
        label = "Stochastic Gradient Descent"
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
      weka_learner = RWeka::make_Weka_classifier("weka/classifiers/functions/SGD")
      pars = self$param_set$get_values(tags = "train")
      rweka_train(task$data(), task$formula(), pars, weka_learner)
    },

    .predict = function(task) {
      newdata = ordered_features(task, self)
      pars = self$param_set$get_values(tags = "predict")
      rweka_predict(newdata, pars, self$predict_type, self$model)
    }
  )
)

.extralrns_dict$add("regr.sgd", LearnerRegrSGD)

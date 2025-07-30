#' @title Regression Linear Regression Learner From Weka
#' @author damirpolat
#' @name mlr_learners_regr.linear_regression
#'
#' @description
#' Linear Regression learner that uses the Akaike criterion for model selection and
#' is able to deal with weighted instances.
#' Calls [RWeka::LinearRegression()] \CRANpkg{RWeka}.
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
#' - `additional_stats`:
#'   - original id: additional-stats
#'
#' - `use_qr`:
#'   - original id: use-qr
#'
#' - Reason for change: This learner contains changed ids of the following control arguments
#' since their ids contain irregular pattern
#'
#'
#' @templateVar id regr.linear_regression
#' @template learner
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrLinearRegression = R6Class("LearnerRegrLinearRegression",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        S = p_fct(default = "0", levels = c("0", "1", "2"), tags = "train"),
        C = p_lgl(default = FALSE, tags = "train"),
        R = p_dbl(default = 1.0e-8, tags = "train"),
        minimal = p_lgl(default = FALSE, tags = "train"),
        additional_stats = p_lgl(default = FALSE, tags = "train"),
        use_qr = p_lgl(default = FALSE, tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE,
                                          tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L,
                                   tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )

      super$initialize(
        id = "regr.linear_regression",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = "response",
        param_set = param_set,
        properties = c("marshal", "missings"),
        man = "mlr3extralearners::mlr_learners_regr.linear_regression",
        label = "Linear Regression"
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
      weka_learner = RWeka::LinearRegression
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

.extralrns_dict$add("regr.linear_regression", LearnerRegrLinearRegression)

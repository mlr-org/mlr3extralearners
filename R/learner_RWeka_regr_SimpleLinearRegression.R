#' @title Regression Simple Linear Regression Model
#' @author damirpolat
#' @name mlr_learners_regr.SimpleLinearRegression
#'
#' @description
#' Simple linear regression model that picks the attribute that results in the lowest squared error
#' Calls [RWeka::make_Weka_classifier()] from \CRANpkg{RWeka}
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
#'    - original id: additional-stats
#'
#' - Reason for change: This learner contains changed ids of the following control arguments
#' since their ids contain irregular pattern
#'
#'
#' @templateVar id regr.SimpleLinearRegression
#' @template learner
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrSimpleLinearRegression = R6Class("LearnerRegrSimpleLinearRegression",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        additional_stats = p_lgl(default = FALSE, tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE,
                                          tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L,
                                   tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )

      super$initialize(
        id = "regr.SimpleLinearRegression",
        packages = "RWeka",
        feature_types = c("integer", "numeric"),
        predict_types = "response",
        param_set = param_set,
        properties = "missings",
        man = "mlr3extralearners::mlr_learners_regr.SimpleLinearRegression",
        label = "Simple Linear Regression Model"
      )
    }
  ),

  private = list(
    .train = function(task) {
      weka_learner = RWeka::make_Weka_classifier("weka/classifiers/functions/SimpleLinearRegression")
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

.extralrns_dict$add("regr.SimpleLinearRegression", LearnerRegrSimpleLinearRegression)

#' @title Linear Regression with Exhaustive Search
#' @author ngerman
#' @name mlr_learners_regr.exhaustive_search
#'
#' @description
#' Linear Regression, where the features used in the model are selected by running Exhaustive Search.
#'
#' Calls [ExhaustiveSearch::ExhaustiveSearch()] from \CRANpkg{ExhaustiveSearch}.
#'
#' @section Initial parameter values:
#' - `family`:
#'   - Actual default: NULL
#'   - Adjusted default: "gaussian"
#'   - Reason for change: To comply with mlr3 architecture,
#'      we differentiate between classification and regression learners.
#' - `nThreads`:
#'   - Actual default: NULL
#'   - Adjusted default: 1
#'   - Reason for change: Suppressing the automatic internal parallelization if
#'     `cv.folds` > 0.
#' - `quietly`:
#'   - Actual default: FALSE
#'   - Adjusted default: TRUE
#'   - Reason for change: Suppression of constant printing to console
#'
#'
#' @template learner
#' @templateVar id regr.exhaustive_search
#'
#'
#' @template seealso_learner
#' @examplesIf learner_is_runnable("regr.exhaustive_search")
#' # define learner
#' learner = LearnerRegrExhaustiveSearch$new()
#' learner$predict_type = "se"
#'
#' # define task
#' tsk_cars = tsk("mtcars")
#'
#' # train learner
#' learner$train(tsk_cars)
#'
#' # extract selected features
#' learner$selected_features()
#'
#' # predict on training task
#' learner$predict(tsk_cars)
#' @export

LearnerRegrExhaustiveSearch = R6Class(
  "LearnerRegrExhaustiveSearch",
  inherit = mlr3::LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        family = p_fct(
          c("gaussian", "binomial"),
          init = "gaussian",
          tags = "train"),
        performanceMeasure = p_fct(
          c("MSE", "AIC"),
          tags = "train"),
        combsUpTo = p_int(1L, tags = "train"),
        nResults = p_int(1L, default = 5000L, tags = "train"),
        nThreads = p_int(1L, init = 1L, tags = "train"),
        testSetIDs = p_int(1L, tags = "train"),
        errorVal = p_uty(default = -1, tags = "train"),
        quietly = p_lgl(init = TRUE, tags = "train"),
        checkLarge = p_lgl(default = TRUE, tags = "train")
      )
      super$initialize(
        id = "regr.exhaustive_search",
        feature_types = c("logical", "integer", "numeric"),
        predict_types = c("response", "se"),
        packages = c("mlr3extralearners", "ExhaustiveSearch"),
        param_set = param_set,
        properties = c("selected_features"),
        label = "Exhaustive Search",
        man = "mlr3extralearners::mlr_learners_regr.exhaustive_search"
      )
    },
    #' @description
    #' Extracts selected features of this learner.
    selected_features = function() {
      if (is.null(self$model)) {
        stopf("No model trained")
      }
      attr(summary(self$model)$terms, "term.labels")
    }
  ),
  private = list(
    .validate = NULL,
    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")
      # run exhaustive search
      es_response = invoke(
        ExhaustiveSearch::ExhaustiveSearch,
        formula = task$formula(),
        data = task$data(),
        .args = pv
      )

      # extract selected features of best performing model
      selected_features = intersect(
        ExhaustiveSearch::getFeatures(es_response, ranks = 1L),
        task$feature_names)

      # task_selected: reduce task to selected features
      task_selected = task$clone()$select(selected_features)

      # return best model
      invoke(
        stats::lm,
        formula = task_selected$formula(),
        data = task_selected$data())
    },
    .predict = function(task) {
      pv = self$param_set$get_values(tags = "predict")
      # ensure same column order in train and predict
      newdata = ordered_features(task, self)
      se_fit = self$predict_type == "se"
      prediction = invoke(
        predict,
        object = self$model,
        newdata = newdata,
        se.fit = se_fit,
        .args = pv)
      if (se_fit) {
        list(
          response = unname(prediction$fit),
          se = unname(prediction$se.fit))
      } else {
        list(response = unname(prediction))
      }
    }
  )
)
.extralrns_dict$add("regr.exhaustive_search", LearnerRegrExhaustiveSearch)

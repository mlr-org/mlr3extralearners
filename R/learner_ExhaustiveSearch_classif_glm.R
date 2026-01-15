#' @title Logistic Regression with Exhaustive Search
#' @author ngerman
#' @name mlr_learners_classif.exhaustive_search
#'
#' @description
#' Logistic Regression, where the features used in the model are selected by running Exhaustive Search.
#'
#' Calls [ExhaustiveSearch::ExhaustiveSearch()] from \CRANpkg{ExhaustiveSearch}.
#'
#' @section Initial parameter values:
#' - `family`:
#'   - Actual default: NULL
#'   - Adjusted default: "binomial"
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
#' @template learner
#' @templateVar id classif.exhaustive_search
#'
#' @template seealso_learner
#'
#' @examplesIf learner_is_runnable("classif.exhaustive_search")
#' # define the learner
#' learner = lrn("classif.exhaustive_search", predict_type = "prob", combsUpTo = 3)
#'
#' # define the task
#' # and subset to 3 features to speed up the example
#' tsk_sonar = tsk("sonar")$select(c("V1", "V2", "V3"))
#'
#' # train the learner
#' learner$train(tsk_sonar)
#'
#' # extract selected features
#' learner$selected_features()
#'
#' # predict on training task
#' learner$predict(tsk_sonar)
#'
#' @export

LearnerClassifExhaustiveSearch = R6Class(
  "LearnerClassifExhaustiveSearch",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        family = p_fct(
          c("gaussian", "binomial"),
          init = "binomial",
          tags = "train"),
        performanceMeasure = p_fct(
          c("MSE", "AIC"),
          tags = "train"),
        combsUpTo = p_int(1L, tags = "train"),
        nResults = p_int(1L, default = 5000L, tags = "train"),
        nThreads = p_int(1L, init = 1L, tags = "train"),
        testSetIDs = p_int(1L, tags = "train"),
        errorVal = p_uty(default = -1L, tags = "train"),
        quietly = p_lgl(init = TRUE, tags = "train"),
        checkLarge = p_lgl(default = TRUE, tags = "train")
      )
      super$initialize(
        id = "classif.exhaustive_search",
        feature_types = c("logical", "integer", "numeric"),
        predict_types = c("response", "prob"),
        packages = c("mlr3extralearners", "ExhaustiveSearch"),
        param_set = param_set,
        properties = c("twoclass", "selected_features"),
        label = "Exhaustive Search",
        man = "mlr3extralearners::mlr_learners_classif.exhaustive_search"
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

      # train best model
      invoke(
        stats::glm,
        family = "binomial",
        formula = task_selected$formula(),
        data = task_selected$data(),
        model = FALSE)
    },
    .predict = function(task) {
      newdata = ordered_features(task, self)
      p = unname(
        invoke(
          predict,
          object = self$model,
          newdata = newdata,
          type = "response")
      )
      if (self$predict_type == "response") {
        list(response = ifelse(p < 0.5, task$negative, task$positive))
      } else {
        list(prob = pprob_to_matrix((1 - p), task))
      }
    }
  )
)
.extralrns_dict$add("classif.exhaustive_search", LearnerClassifExhaustiveSearch)

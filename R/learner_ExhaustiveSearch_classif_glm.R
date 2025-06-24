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
#'   - Reason for change: To comply with mlr3 architecture, we differentiate between classification and regression learners.
#' - `nThreads`:
#'   - Actual default: NULL
#'   - Adjusted default: 1
#'   - Reason for change: Suppressing the automatic internal parallelization if
#'     `cv.folds` > 0.
#'
#'
#' @template learner
#' @templateVar id classif.exhaustive_search
#'
#' @details
#' Internal validation not yet implemented.
#'
#' @export
#' @template seealso_learner
#' @examples
#'
#' # define the learner
#' learner = LearnerClassifExhaustiveSearch$new()
#' learner$predict_type = "prob"
#' learner$param_set$set_values(combsUpTo = 3)
#'
#' # define the task
#' tsk_gc = tsk("german_credit")
#'
#' # train the learner
#' learner$train(tsk_gc)
#'
#' # extract selected features
#' learner$selected_features()
#'
#' # predict on training task
#' learner$predict(tsk_gc)

library(mlr3)
library(paradox)
library(R6)

LearnerClassifExhaustiveSearch = R6Class("LearnerClassifExhaustiveSearch",
                                      inherit = LearnerClassif,
                                      public = list(
                                        initialize = function() {
                                          param_set = ps(
                                            family = p_fct(c("gaussian", "binomial"), init = "binomial", tags = "train"),
                                            performanceMeasure = p_fct(c("MSE", "AIC"), tags = "train"), # interdepency to testSetIDs
                                            combsUpTo = p_int(1L, tags = "train"),
                                            nResults = p_int(1L, default = 5000L, tags = "train"),
                                            nThreads = p_int(1L, init = 1L, tags = "train"),
                                            testSetIDs = p_int(1L, tags = "train"), # use as internal validation?
                                            errorVal = p_uty(default = -1L, tags = "train"),
                                            quietly = p_lgl(default = FALSE, tags = "train"),
                                            checkLarge = p_lgl(default = TRUE, tags = "train")
                                          )

                                          super$initialize(
                                            id = "classif.exhaustive_search",
                                            feature_types = c("logical", "integer", "numeric", "character", "factor", "ordered"),
                                            predict_types = c("response", "prob"),
                                            packages = "ExhaustiveSearch",
                                            param_set = param_set,
                                            properties = c("twoclass", "selected_features"), # to add: "validation"
                                            label = "Exhaustive Search",
                                            man = "mlr3extralearners::mlr_learners_classif.exhaustive_search"
                                          )
                                        },

                                        selected_features = function() {
                                          if (is.null(private$.selected_features)) {
                                            stopf("No features stored")
                                          }
                                          private$.selected_features
                                        }
                                      ),
                                      private = list(
                                        .train = function(task) {
                                          pv = self$param_set$get_values(tags = "train")
                                          # run exhaustive search
                                          ES_response <- invoke(
                                            ExhaustiveSearch::ExhaustiveSearch,
                                            formula = task$formula(),
                                            data = task$data(),
                                            .args = pv
                                          )
                                          # extract selected features of best performing model
                                          private$.selected_features = intersect(ES_response$featureNames,
                                                                                 ExhaustiveSearch::getFeatures(ES_response, ranks = 1L))
                                          # task_selected: reduce task to selected features
                                          task_selected = task$clone()
                                          task_selected$select(private$.selected_features)
                                          # return best model
                                          invoke(
                                            stats::glm,
                                            family = "binomial",
                                            formula = task_selected$formula(),
                                            data = task_selected$data(),
                                            model = FALSE)
                                        },
                                        .predict = function(task) {
                                          # pv = self$param_set$get_values(tags = "predict")
                                          # ensure same column order in train and predict
                                          newdata = mlr3extralearners:::ordered_features(task, self)

                                          p = unname(invoke(predict,
                                                            object = self$model,
                                                            newdata = newdata,
                                                            type = "response")
                                                     )

                                          if (self$predict_type == "response") {
                                            list(response = ifelse(p < 0.5, task$negative, task$positive))
                                          } else {
                                            list(prob = mlr3extralearners:::pprob_to_matrix((1-p), task)) # from helpers
                                          }
                                        },
                                        .selected_features = NULL
                                      )
)

learner = LearnerClassifExhaustiveSearch$new()
learner$predict_type = "prob"
learner$param_set$set_values(combsUpTo = 3)
tsk_gc = tsk("german_credit")
learner$train(tsk_gc)
learner$selected_features()
learner$predict(tsk_gc)


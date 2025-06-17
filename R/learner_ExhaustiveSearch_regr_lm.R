library(mlr3)
library(paradox)
library(R6)
library(mlr3misc)

LearnerRegrExhaustiveSearch = R6Class("LearnerRegrExhaustiveSearch",
                                      inherit = LearnerRegr,
                                      public = list(
                                        initialize = function() {
                                          param_set = ps(
                                            family = p_fct(c("gaussian", "binomial"), tags = "train"),
                                            performanceMeasure = p_fct(c("MSE", "AIC"), tags = "train"),
                                            combsUpTo = p_int(1L, tags = "train"),
                                            nResults = p_int(1L, default = 5000L, tags = "train"),
                                            nThreads = p_int(1L, tags = "train"),
                                            testSetIDs = p_int(1L, tags = "train"),
                                            errorVal = p_uty(default = -1, tags = "train"),
                                            quietly = p_lgl(default = FALSE, tags = "train"),
                                            checkLarge = p_lgl(default = TRUE, tags = "train")
                                          )
                                          param_set$set_values(family = "gaussian")

                                          super$initialize(
                                            id = "regr.exhaustive_search",
                                            feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
                                            predict_types = "response",
                                            packages = "ExhaustiveSearch",
                                            param_set = param_set,
                                            properties = c("missings", "selected_features"),
                                            label = "Exhaustive Search",
                                            man = "mlr3extralearners::mlr_learners_regr.exhaustive_search"
                                          )
                                        },

                                        selected_features = function() {
                                          if (is.null(self$model)) {
                                            stopf("No model stored")
                                          }
                                          # intersect(self$featureNames,
                                                    # ExhaustiveSearch::getFeatures(self, ranks = 1))
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
                                          # make new task
                                          private$.selected_features = intersect(ES_response$featureNames,
                                                               ExhaustiveSearch::getFeatures(ES_response, ranks = 1))
                                          task_selected = task$clone()
                                          task_selected$select(private$.selected_features)
                                          # return best model
                                          invoke(
                                            lm,
                                            formula = task_selected$formula(),
                                            data = task_selected$data())
                                        },
                                        .predict = function(task) {
                                          pv = self$param_set$get_values(tags = "predict")

                                          # ensure same column order in train and predict
                                          newdata = mlr3extralearners:::ordered_features(task, self)

                                          response = invoke(predict, self$model, newdata = newdata, .args = pv)
                                          list(response = unname(response))
                                        },
                                        .selected_features = character(0)
                                      )
)

learner = LearnerRegrExhaustiveSearch$new()
tsk_cars = tsk("mtcars")
learner$train(tsk_cars)
learner$model
learner$predict(tsk_cars)
learner$selected_features()


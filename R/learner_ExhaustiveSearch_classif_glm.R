library(mlr3)
library(paradox)
library(R6)
library(mlr3misc)

LearnerClassifExhaustiveSearch = R6Class("LearnerRegrExhaustiveSearch",
                                      inherit = LearnerClassif,
                                      public = list(
                                        initialize = function() {
                                          param_set = ps(
                                            family = p_fct(c("gaussian", "binomial"), tags = "train"), # maybe delete option gaussian in classif case?
                                            performanceMeasure = p_fct(c("MSE", "AIC"), tags = "train"), # interdepency to testSetIDs
                                            combsUpTo = p_int(1L, tags = "train"),
                                            nResults = p_int(1L, default = 5000L, tags = "train"),
                                            nThreads = p_int(1L, tags = "train"), # side effects to parallel?
                                            testSetIDs = p_int(1L, tags = "train"), # use as internal validation?
                                            errorVal = p_uty(default = -1, tags = "train"),
                                            quietly = p_lgl(default = FALSE, tags = "train"),
                                            checkLarge = p_lgl(default = TRUE, tags = "train")
                                          )
                                          param_set$set_values(family = "binomial")

                                          super$initialize(
                                            id = "classif.exhaustive_search",
                                            feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
                                            predict_types = c("response", "prob"),
                                            packages = "ExhaustiveSearch",
                                            param_set = param_set,
                                            properties = c("twoclass", "missings", "selected_features"),
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
                                          # make new task
                                          private$.selected_features = intersect(ES_response$featureNames,
                                                                                 ExhaustiveSearch::getFeatures(ES_response, ranks = 1))
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
                                          lvls = c(task$negative, task$positive)
                                          # ensure same column order in train and predict
                                          newdata = mlr3extralearners:::ordered_features(task, self)

                                          p = unname(invoke(predict, object = self$model, newdata = newdata, type = "response"))

                                          if (self$predict_type == "response") {
                                            list(response = ifelse(p < 0.5, lvls[1L], lvls[2L]))
                                          } else {
                                            list(prob = pvec2mat(p, lvls))
                                          }
                                        },
                                        .selected_features = NULL
                                      )
)

learner = LearnerClassifExhaustiveSearch$new()
tsk_pima = tsk("pima")
learner$train(tsk_pima)
learner$model
learner$predict(tsk_pima)$score()
learner$selected_features()

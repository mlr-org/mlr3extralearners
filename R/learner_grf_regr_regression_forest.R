#' @title Regression Forest Learner
#' @description Regression Forest Learner from grf package.
#' @importFrom R6 R6Class
#' @import mlr3
#' @import mlr3learners
#' @import grf
#' @import data.table
#' @import paradox
#' @export
LearnerRegrRegressionForest <- R6::R6Class("LearnerRegrRegressionForest",
  inherit = mlr3::LearnerRegr,
  public = list(
    #' @description Creates a new instance of this R6 class.
    initialize = function() {
      super$initialize(
        id = "regr.regression_forest",
        packages = "grf",
        feature_types = c("integer", "numeric"),
        predict_types = c("response"),
        param_set = paradox::ps(
          num.trees = paradox::p_int(default = 2000, lower = 1, tags = "train"),
          min.node.size = paradox::p_int(default = 5, lower = 1, tags = "train"),
          sample.fraction = paradox::p_dbl(default = 0.5, lower = 0, upper = 1, tags = "train")
        ),
        properties = character(0)
      )
    }
  ), 
  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      X_mat <- as.matrix(task$data(cols = task$feature_names))
      Y_vec <- as.numeric(task$data(cols = task$target_names)[[1]])
      
      mlr3misc::invoke(grf::regression_forest, X = X_mat, Y = Y_vec, .args = pars)
    }, 
    .predict = function(task) {
      X_mat <- as.matrix(task$data(cols = task$feature_names))
      prediction.result <- predict(self$model, X_mat)
      
      mlr3::PredictionRegr$new(
        task = task,
        response = as.numeric(prediction.result$predictions)
      )
    }
  )
)
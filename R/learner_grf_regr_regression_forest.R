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
        feature_types = c("logical", "integer", "numeric"),
        predict_types = c("response"),
        param_set = paradox::ps(),
        properties = character(0)
      )
    }
  ),
  private = list(
    .train = function(task) {
      X_mat <- as.matrix(task$data(cols = task$feature_names))
      Y_vec <- task$data(cols = task$target_names)[[1]]
      
      grf::regression_forest(X = X_mat, Y = Y_vec)
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
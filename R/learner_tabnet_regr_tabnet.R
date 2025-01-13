#' @title Regression TabNet Learner
#' @author Lukas Burk
#' @name mlr_learners_regr.tabnet
#'
#' @template class_learner
#' @templateVar id regr.tabnet
#' @templateVar caller tabnet
#' @references
#' `r format_bib("arik2021tabnet")`
#'
#' @template seealso_learner
#' @export
#' @examples
#' \dontrun{
#' library(mlr3)
#' library(mlr3torch)
#'
#' task = tsk("boston_housing")
#'
#' # Creating a learner & training on example task
#' lrn = lrn("regr.tabnet")
#'
#' lrn$param_set$values$epochs = 10
#' lrn$train(task)
#'
#' # Predict on training data, get RMSE
#' predictions = lrn$predict(task)
#' predictions$score(msr("regr.rmse"))
#' }
LearnerRegrTabNet = R6::R6Class("LearnerRegrTabnet",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = params_tabnet()

      super$initialize(
        id = "regr.tabnet",
        packages = "tabnet",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        param_set = ps,
        properties = c("importance"),
        man = "mlr3torch::mlr_learners_regr.tabnet",
        label = "Attentive Interpretable Tabular Network"
      )
    },

    #' @description
    #' The importance scores are extracted from the slot `.$model$fit$importances`.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      imp = self$model$fit$importances
      sort(stats::setNames(imp$importance, imp$variables), decreasing = TRUE)
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")
      pars_threads = pars$num_threads
      pars$num_threads = NULL

      # Set number of threads
      torch::torch_set_num_threads(pars_threads)

      # set column names to ensure consistency in fit and predict
      self$state$feature_names = task$feature_names

      # use the mlr3misc::invoke function (it's similar to do.call())
      mlr3misc::invoke(tabnet::tabnet_fit,
                       x = task$data(cols = task$feature_names),
                       y = task$data(cols = task$target_names),
                       .args = pars
      )
    },
    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = task$data(cols = self$state$feature_names)

      pred = mlr3misc::invoke(predict, self$model,
                              new_data = newdata,
                              .args = pars
      )

      list(response = pred[[".pred"]])
    }
  )
)

.extralrns_dict$add("regr.tabnet", LearnerRegrTabNet)

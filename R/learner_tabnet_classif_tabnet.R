#' @title Classification TabNet Learner
#' @author Lukas Burk
#' @name mlr_learners_classif.tabnet
#'
#' @template class_learner
#' @templateVar id classif.tabnet
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
#' task = tsk("german_credit")
#' lrn = lrn("classif.tabnet")
#'
#' lrn$param_set$values$epochs = 10
#' lrn$param_set$values$attention_width = 8
#' lrn$train(task)
#' }
LearnerClassifTabNet = R6Class("LearnerClassifTabNet",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = params_tabnet()
      super$initialize(
        id = "classif.tabnet",
        packages = "tabnet",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("importance", "multiclass", "twoclass"),
        man = "mlr3torch::mlr_learners_classif.tabnet",
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

      if (self$predict_type == "response") {
        pred = mlr3misc::invoke(predict, self$model, new_data = newdata,
          type = "class", .args = pars)

        list(response = pred[[".pred_class"]])
      } else {
        pred = mlr3misc::invoke(predict, self$model, new_data = newdata,
          type = "prob", .args = pars)

        # Result will be a df with one column per variable with names '.pred_<level>'
        # we want the names without ".pred"
        names(pred) = sub(pattern = ".pred_", replacement = "", names(pred))

        list(prob = as.matrix(pred))
      }

    }
  )
)

.extralrns_dict$add("classif.tabnet", LearnerClassifTabNet)

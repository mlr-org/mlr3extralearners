#' @title Classification Rotation Forest Learner
#' @author annanzrv
#' @name mlr_learners_classif.rotationForest
#'
#' @description
#' Classification using Rotation Forest algorithm.
#' Training this learner works only for tasks with at least two features.
#' The task must not have utf8 feature names.
#' Calls [rotationForest::rotationForest()] from \CRANpkg{rotationForest}.
#'
#'
#' @section Custom mlr3 parameters:
#' No custom mlr3 parameters.
#'
#' @templateVar id classif.rotationForest
#' @template learner
#'
#' @references
#' `r format_bib("rodriguez2006rf")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifRotationForest = R6Class("LearnerClassifRotationForest",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        K = p_int(default = 3L, lower = 1L, tags = "train"),
        L = p_int(default = 10L, lower = 1L, tags = "train")
      )

      super$initialize(
        id = "classif.rotationForest",
        packages = "rotationForest",
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.rotationForest",
        label = "Rotation Forest"
      )
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      # Get data and features
      features = task$data(cols = task$feature_names)

      # rotationForest needs 0-1 coding for target
      target = as.factor(ifelse(task$data()[[task$target_names]] == task$positive, 1L, 0L))

      invoke(
        rotationForest::rotationForest,
        x = features,
        y = target,
        .args = pars
      )
    },
    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = ordered_features(task, self)

      # Calculate predictions for the selected predict type.
      type = self$predict_type

      pred = invoke(predict, self$model, newdata = newdata, all = FALSE, .args = pars)

      if (type == "prob") {
        # For probability predictions, convert to proper format
        levs = c(task$positive, task$negative)
        prob_matrix = pprob_to_matrix(pred, task)
        list(prob = prob_matrix)
      } else {
        # For response predictions, convert back to original class labels
        response = as.factor(ifelse(pred > 0.5, task$positive, task$negative))
        list(response = response)
      }
    }
  )
)

.extralrns_dict$add("classif.rotationForest", LearnerClassifRotationForest)

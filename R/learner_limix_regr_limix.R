#' @title LimiX Regression Learner
#' @author be-marc
#' @name mlr_learners_regr.limix
#'
#' @description
#' Tabular foundation model developed by Stable AI.
#' Uses \CRANpkg{reticulate} to interface with the [`LimiX`](https://github.com/limix-ldm-ai/LimiX) Python package.
#' Calls `LimiXPredictor()` from the Python module `limix`.
#' The model makes predictions via in-context learning and is not trained on the data in the usual sense.
#' `$train()` therefore only stores the training data and loads the pre-trained weights,
#' and the whole computation happens in `$predict()`.
#' Features are passed to `LimiX` as a data frame, so that categorical features are ordinal encoded and missing
#' values are handled by the package's own preprocessing pipeline.
#'
#' @templateVar class LearnerRegrLimiX
#' @template sections_limix
#'
#' @inheritSection mlr_learners_classif.limix Initial parameter values
#' @inheritSection mlr_learners_classif.limix Custom mlr3 parameters
#'
#' @templateVar id regr.limix
#' @template learner
#'
#' @inherit mlr_learners_classif.limix references
#'
#' @template seealso_learner
#' @export
LearnerRegrLimiX = R6Class("LearnerRegrLimiX",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      super$initialize(
        id = "regr.limix",
        feature_types = c("logical", "integer", "numeric", "character", "factor", "ordered"),
        predict_types = "response",
        param_set = limix_param_set(regr = TRUE),
        packages = c("mlr3extralearners", "reticulate"),
        properties = c("missings", "marshal"),
        label = "LimiX Regressor",
        man = "mlr3extralearners::mlr_learners_regr.limix"
      )
    },
    #' @description
    #' Marshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::marshal_model()`][mlr3::marshaling()].
    marshal = function(...) {
      learner_marshal(.learner = self, ...)
    },
    #' @description
    #' Unmarshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::unmarshal_model()`][mlr3::marshaling()].
    unmarshal = function(...) {
      learner_unmarshal(.learner = self, ...)
    }
  ),

  active = list(
    #' @field marshaled (`logical(1)`)\cr
    #' Whether the learner has been marshaled.
    marshaled = function() {
      learner_marshaled(self)
    }
  ),

  private = list(
    .train = function(task) {
      limix_train(self, task, "Regression")
    },

    .predict = function(task) {
      list(response = limix_predict(self, task))
    }
  )
)

.extralrns_dict$add("regr.limix", LearnerRegrLimiX)

#' @title BlockForest Regression Learner
#' @author bblodfon
#' @name mlr_learners_regr.blockforest
#'
#' @description
#' Random forests for blocks of clinical and omics covariate data.
#' Calls [blockForest::blockfor()] from package \CRANpkg{blockForest}.
#'
#' @section Initial parameter values:
#' - `num.threads` is initialized to 1 to avoid conflicts with parallelization via \CRANpkg{future}.
#'
#' @templateVar id regr.blockforest
#' @template learner
#'
#' @references
#' `r format_bib("hornung2019blockforest")`
#'
#' @template seealso_learner
#' @examples
#' # Define a Task
#' task = tsk("mtcars")
#' # Create train and test set
#' ids = partition(task)
#' # check task's features
#' task$feature_names
#' # partition features to 2 blocks
#' blocks = list(bl1 = 1:3, bl2 = 4:10)
#' # define learner
#' learner = lrn("regr.blockforest", blocks = blocks,
#'               importance = "permutation", nsets = 10,
#'               num.trees = 50, num.trees.pre = 10, splitrule = "variance")
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#' # feature importance
#' learner$importance()
#' # Make predictions for the test observations
#' pred = learner$predict(task, row_ids = ids$test)
#' pred
#' # Score the predictions
#' pred$score()
#' @export
LearnerRegrBlockForest = R6::R6Class("LearnerRegrBlockForest",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = paradox::ps(
        blocks              = p_uty(tags = c("train", "required")),
        block.method        = p_fct(c("BlockForest", "RandomBlock", "BlockVarSel", "VarProb", "SplitWeights"), default = "BlockForest", tags = "train"), #nolint
        num.trees           = p_int(1L, default = 2000L, tags = "train"),
        mtry                = p_uty(default = NULL, tags = "train"),
        nsets               = p_int(1L, default = 300L, tags = "train"),
        num.trees.pre       = p_int(1L, default = 1500L, tags = "train"),
        splitrule           = p_fct(c("extratrees", "variance", "maxstat"), default = "extratrees", tags = "train"),
        always.select.block = p_int(0L, 1L, default = 0L, tags = "train"),
        # adding few key parameters from blockForest::blockForest() and predict.blockForest()
        importance          = p_fct(c("none", "impurity", "impurity_corrected", "permutation"), tags = "train"),
        num.threads         = p_int(1L, tags = c("train", "predict", "threads"), init = 1L),
        seed                = p_int(default = NULL, special_vals = list(NULL), tags = c("train", "predict")),
        verbose             = p_lgl(default = TRUE, tags = c("train", "predict")),
        se.method           = p_fct(c("jack", "infjack"), default = "infjack", tags = "predict")
      )

      super$initialize(
        id = "regr.blockforest",
        param_set = param_set,
        predict_types = c("response", "se"),
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        properties = c("weights", "importance", "marshal"),
        packages = c("mlr3extralearners", "blockForest"),
        man = "mlr3extralearners::mlr_learners_regr.blockforest",
        label = "Random Forests for Block-wise Data"
      )
    },

    #' @description
    #' The importance scores are extracted from the model slot `variable.importance`.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }

      if (self$model$model$importance.mode == "none") {
        stopf("No importance stored")
      }

      sort(self$model$model$variable.importance, decreasing = TRUE)
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
      pv = self$param_set$get_values(tags = "train")
      pv$case.weights = private$.get_weights(task)

      # with no marshalling:
      # mlr3misc::invoke(
      #     blockForest::blockfor,
      #     X = task$data(cols = task$feature_names),
      #     y = task$truth(),
      #     .args = pv)$forest

      structure(list(model =
        mlr3misc::invoke(
          blockForest::blockfor,
          X = task$data(cols = task$feature_names),
          y = task$truth(),
          .args = pv)$forest
      ), class = "regr_blockforest_model")
    },

    .predict = function(task) {
      pv = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      prediction = invoke(predict, object = self$model$model, data = newdata,
                          type = self$predict_type, .args = pv)
      list(response = prediction$predictions, se = prediction$se)
    }
  )
)

.extralrns_dict$add("regr.blockforest", LearnerRegrBlockForest)

#' @export
marshal_model.regr_blockforest_model = function(model, inplace = FALSE, ...) {
  # Serialize the model object into a raw vector
  raw_model = serialize(model, connection = NULL)

  structure(list(
    marshaled = raw_model,
    packages = c("mlr3extralearners", "blockForest")
  ), class = c("regr_blockforest_model_marshaled", "marshaled"))
}

#' @export
unmarshal_model.regr_blockforest_model_marshaled = function(model, ...) {
  # Unserialize the raw vector back into the original model
  restored_model = unserialize(model$marshaled)

  #browser()
  structure(list(
    model = restored_model
  ), class = "regr_blockforest_model")
}

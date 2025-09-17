#' @title BlockForest Classification Learner
#' @author bblodfon
#' @name mlr_learners_classif.blockforest
#'
#' @description
#' Random forests for blocks of clinical and omics covariate data.
#' Calls [blockForest::blockfor()] from package \CRANpkg{blockForest}.
#'
#' In this learner, only the trained forest object (`$forest`) is retained. The
#' optimized block-specific tuning parameters (`paramvalues`) and the biased OOB
#' error estimate (`biased_oob_error_donotuse`) are discarded, as they are either
#' not needed for downstream use or not reliable for performance estimation.
#'
#' @section Initial parameter values:
#' - `num.threads` is initialized to 1 to avoid conflicts with parallelization via \CRANpkg{future}.
#'
#' @templateVar id classif.blockforest
#' @template learner
#'
#' @references
#' `r format_bib("hornung2019blockforest")`
#'
#' @template seealso_learner
#' @examplesIf learner_is_runnable("classif.blockforest")
#' # Define a Task
#' task = tsk("sonar")
#' # Create train and test set
#' ids = partition(task)
#' # check task's features
#' task$feature_names
#' # partition features to 2 blocks
#' blocks = list(bl1 = 1:42, bl2 = 43:60)
#' # define learner
#' learner = lrn("classif.blockforest", blocks = blocks,
#'               importance = "permutation", nsets = 10, predict_type = "prob",
#'               num.trees = 50, num.trees.pre = 10, splitrule = "gini")
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
LearnerClassifBlockForest = R6::R6Class("LearnerClassifBlockForest",
  inherit = LearnerClassif,
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
        splitrule           = p_fct(c("extratrees", "gini"), default = "extratrees", tags = "train"),
        always.select.block = p_int(0L, 1L, default = 0L, tags = "train"),
        # adding few key parameters from blockForest::blockForest()
        importance          = p_fct(c("none", "impurity", "impurity_corrected", "permutation"), tags = "train"),
        num.threads         = p_int(1L, tags = c("train", "predict", "threads"), init = 1L),
        seed                = p_int(default = NULL, special_vals = list(NULL), tags = c("train", "predict")),
        verbose             = p_lgl(default = TRUE, tags = c("train", "predict"))
      )

      super$initialize(
        id = "classif.blockforest",
        param_set = param_set,
        predict_types = c("response", "prob"),
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        properties = c("weights", "importance", "twoclass"),
        packages = c("mlr3extralearners", "blockForest"),
        man = "mlr3extralearners::mlr_learners_classif.blockforest",
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

      if (self$model$importance.mode == "none") {
        stopf("No importance stored")
      }

      sort(self$model$variable.importance, decreasing = TRUE)
    }
  ),

  private = list(
    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")
      pv$case.weights = private$.get_weights(task)
      pv$probability = self$predict_type == "prob"

      mlr3misc::invoke(
        blockForest::blockfor,
        X = task$data(cols = task$feature_names),
        y = task$truth(),
        .args = pv)$forest
    },

    .predict = function(task) {
      pv = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      prediction = invoke(predict, object = self$model, data = newdata, .args = pv)

      if (self$predict_type == "response") {
        list(response = prediction$predictions)
      } else {
        list(prob = prediction$predictions)
      }
    }
  )
)

.extralrns_dict$add("classif.blockforest", LearnerClassifBlockForest)

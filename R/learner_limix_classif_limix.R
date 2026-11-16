#' @title LimiX Classification Learner
#' @author be-marc
#' @name mlr_learners_classif.limix
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
#' The `"LimiX-2"` model supports at most 10 classes.
#'
#' @templateVar class LearnerClassifLimiX
#' @template sections_limix
#'
#' @section Initial parameter values:
#' - `model` is initialized to `"LimiX-2"`.
#' - `device` is initialized to `"auto"`.
#'
#' @section Custom mlr3 parameters:
#' - `model` selects the pre-trained weights that are downloaded from Hugging Face, one of
#'   `"LimiX-2"` (400 million parameters), `"LimiX-2M"` (2 million parameters), and
#'   `"LimiX-16M"` (16 million parameters).
#'   It is ignored if `model_path` is set.
#'
#' - `model_path` is the path to a local checkpoint file.
#'   If it is not set, the checkpoint selected by `model` is downloaded.
#'
#' - `device` is a string that is passed to `torch.device()`, e.g., `"cpu"` or `"cuda"`.
#'   The value `"auto"` selects `"cuda"` if it is available and `"cpu"` otherwise.
#'
#' - `inference_config` is the path to a JSON file with the inference configuration.
#'   If it is not set, the default configuration without retrieval that ships with `LimiX` is used,
#'   depending on the task type and the architecture version of the checkpoint.
#'
#' - `cache_dir`, `test_batch_mode`, `test_batch_size`, `enable_preprocess_parallel`, `preprocess_num_jobs`,
#'   and `gpu_ids` are only used by `"LimiX-2"`.
#'   `LimiX` prints a warning and ignores them for the other models.
#'
#' - `test_batch_size` accepts either an integer or the special value `"None"`
#'   which corresponds to `None` in Python.
#'
#' - `gpu_ids` accepts an integer vector of CUDA device indices, using the zero-based indexing of Python.
#'
#' - `categorical_features_indices` and `inference_with_DDP` are not available,
#'   because the first is not used by `LimiX` for classification and regression,
#'   and the second requires a distributed setup.
#'
#' @templateVar id classif.limix
#' @template learner
#'
#' @references
#' `r format_bib("zhang2026limix2", "zhang2025limix")`
#'
#' @template seealso_learner
#' @export
LearnerClassifLimiX = R6Class("LearnerClassifLimiX",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      super$initialize(
        id = "classif.limix",
        feature_types = c("logical", "integer", "numeric", "character", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = limix_param_set(),
        packages = c("mlr3extralearners", "reticulate"),
        properties = c("twoclass", "multiclass", "missings", "marshal"),
        label = "LimiX Classifier",
        man = "mlr3extralearners::mlr_learners_classif.limix"
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
      limix_train(self, task, "Classification")
    },

    .predict = function(task) {
      prob = limix_predict(self, task)
      if (self$predict_type == "response") {
        list(response = colnames(prob)[max.col(prob, ties.method = "first")])
      } else {
        list(prob = prob)
      }
    }
  )
)

.extralrns_dict$add("classif.limix", LearnerClassifLimiX)

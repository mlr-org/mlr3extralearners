#' @title Classification Random Planted Forest Learner
#' @author jemus42
#' @name mlr_learners_classif.rpf
#'
#' @description
#' Random planted forest: a directly interpretable tree ensemble.
#' Calls `randomPlantedForest::rpf()` from package 'randomPlantedForest'.
#'
#' @section Installation:
#' Package 'randomPlantedForest' is not on CRAN and has to be installed from GitHub via
#' `remotes::install_github("PlantedML/randomPlantedForest")`.
#'
#' @section Usage and tuning:
#' The defaults are those of `rpf()`, which chooses `n_splits` out of bag and returns the pruned model.
#' This is considerably slower than fitting the forest alone (`prune = FALSE`).
#'
#' @section Saving a Learner:
#' By default (`prune = NULL`), `rpf()` returns a pruned model without its forest, which is plain R data.
#' With `prune = FALSE` or `keep_forest = TRUE`, the model holds a forest in C++ memory that does not survive R
#' serialization.
#' Call `$marshal()` before writing a trained learner to disk, and `$unmarshal()` after loading it again.
#' By default, marshaling does not store the training data, so a restored forest cannot be purified afterwards.
#' Set `purify = TRUE` at training time if purification is needed, or include the training data in the marshaled
#' model via the `marshal_include_data` parameter or `$marshal(include_data = TRUE)`.
#'
#' @section Custom mlr3 parameters:
#' - `max_interaction`:
#'   - This hyperparameter can alternatively be set via `max_interaction_ratio` as
#'     `max_interaction = max(ceiling(max_interaction_ratio * n_features), 1)`.
#'     The parameter `max_interaction_limit` can optionally be set as an upper bound, such that
#'     `max_interaction_ratio * min(n_features, max_interaction_limit)` is used instead.
#'     This is analogous to `mtry.ratio` in [`classif.ranger`][mlr3learners::mlr_learners_classif.ranger], with
#'     `max_interaction_limit` as an additional constraint.
#'     The parameter `max_interaction_limit` is initialized to `Inf`.
#' - `marshal_include_data`:
#'   - Whether to store the training data when marshaling the model, which is required to call
#'     `randomPlantedForest::purify()` on a restored model.
#'     Defaults to `FALSE` to keep marshaled models small.
#'     Can be overridden for a single call via `$marshal(include_data = TRUE)`.
#'
#' @templateVar id classif.rpf
#' @template learner
#'
#' @references
#' `r format_bib("hiabu_2023")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifRandomPlantedForest = R6Class(
  "LearnerClassifRandomPlantedForest",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        max_interaction = p_int(lower = 0L, default = 3L, tags = "train"),
        max_interaction_ratio = p_dbl(lower = 0, upper = 1, tags = "train"),
        max_interaction_limit = p_int(lower = 1L, special_vals = list(Inf), init = Inf, tags = "train"),
        n_families = p_int(lower = 1L, default = 200L, tags = "train"),
        n_splits = p_int(lower = 1L, special_vals = list(NULL), default = NULL, tags = "train"),
        split_structure = p_fct(
          c("leaf", "leaf_binned", "tree_then_leaf", "tree_then_all_leaves", "target_tree_then_leaf"),
          default = "leaf",
          tags = "train"
        ),
        n_try_split_points = p_int(lower = 1L, special_vals = list(NULL), default = NULL, tags = "train"),
        share_candidates = p_dbl(lower = 0, upper = 1, special_vals = list(NULL), default = NULL, tags = "train"),
        max_candidates = p_int(lower = 1L, default = 50L, tags = "train"),
        split_decay_rate = p_dbl(lower = 0, default = 0.1, tags = "train"),
        delete_leaves = p_lgl(default = TRUE, tags = "train"),
        min_leaf_rows = p_int(lower = 1L, default = 1L, tags = "train"),
        interaction_constraints = p_uty(default = NULL, tags = "train"),
        prune = p_lgl(special_vals = list(NULL), default = NULL, tags = "train"),
        max_panels = p_int(lower = 1L, special_vals = list(Inf), default = 10L, tags = "train"),
        keep_forest = p_lgl(default = FALSE, tags = "train"),
        tune = p_uty(default = FALSE, tags = "train"),
        keep_level_order = p_uty(default = FALSE, tags = "train"),
        oob_path = p_uty(default = FALSE, tags = "train"),
        loss = p_fct(c("L1", "L2", "logit", "exponential"), default = "logit", tags = "train"),
        exact_step = p_lgl(default = TRUE, tags = "train"),
        purify = p_lgl(default = FALSE, tags = "train"),
        nthreads = p_int(lower = 1L, default = 1L, tags = c("train", "predict", "threads")),
        export_forest = p_lgl(default = FALSE, tags = "train"),
        deterministic = p_lgl(default = FALSE, tags = "train"),
        # read in .train() and stored on the model, since marshal_model() never sees the learner
        marshal_include_data = p_lgl(default = FALSE, tags = "train")
      )

      super$initialize(
        id = "classif.rpf",
        packages = c("mlr3extralearners", "randomPlantedForest"),
        feature_types = c("integer", "numeric", "factor", "ordered", "logical"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("twoclass", "multiclass", "marshal"),
        man = "mlr3extralearners::mlr_learners_classif.rpf",
        label = "Random Planted Forest"
      )
    },

    #' @description
    #' Marshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::marshal_model()`].
    marshal = function(...) {
      learner_marshal(.learner = self, ...)
    },
    #' @description
    #' Unmarshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::unmarshal_model()`].
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
      rpf_train(self, task)
    },

    .predict = function(task) {
      pv = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)

      if (self$predict_type == "response") {
        pred = invoke(predict, self$model, new_data = newdata, type = "class", .args = pv)
        list(response = pred[[".pred_class"]])
      } else {
        pred = as.matrix(invoke(predict, self$model, new_data = newdata, type = "prob", .args = pv))
        # columns are named ".pred_<level>"
        colnames(pred) = sub("^\\.pred_", "", colnames(pred))
        list(prob = pred[, task$class_names, drop = FALSE])
      }
    }
  )
)

.extralrns_dict$add("classif.rpf", LearnerClassifRandomPlantedForest)

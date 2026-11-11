#' @title Regression Random Planted Forest Learner
#' @author jemus42
#' @name mlr_learners_regr.rpf
#'
#' @description
#' Random planted forest: a directly interpretable tree ensemble.
#' Calls `randomPlantedForest::rpf()` from package 'randomPlantedForest'.
#'
#' @inheritSection mlr_learners_classif.rpf Installation
#' @inheritSection mlr_learners_classif.rpf Usage and tuning
#' @inheritSection mlr_learners_classif.rpf Saving a Learner
#' @inheritSection mlr_learners_classif.rpf Custom mlr3 parameters
#'
#' @templateVar id regr.rpf
#' @template learner
#'
#' @references
#' `r format_bib("hiabu_2023")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrRandomPlantedForest = R6Class(
  "LearnerRegrRandomPlantedForest",
  inherit = LearnerRegr,
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
        purify = p_lgl(default = FALSE, tags = "train"),
        nthreads = p_int(lower = 1L, default = 1L, tags = c("train", "predict", "threads")),
        export_forest = p_lgl(default = FALSE, tags = "train"),
        deterministic = p_lgl(default = FALSE, tags = "train"),
        # read in .train() and stored on the model, since marshal_model() never sees the learner
        marshal_include_data = p_lgl(default = FALSE, tags = "train")
      )

      super$initialize(
        id = "regr.rpf",
        packages = c("mlr3extralearners", "randomPlantedForest"),
        feature_types = c("integer", "numeric", "factor", "ordered", "logical"),
        predict_types = "response",
        param_set = param_set,
        properties = "marshal",
        man = "mlr3extralearners::mlr_learners_regr.rpf",
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
      pred = invoke(predict, self$model, new_data = newdata, type = "numeric", .args = pv)
      list(response = pred[[".pred"]])
    }
  )
)

.extralrns_dict$add("regr.rpf", LearnerRegrRandomPlantedForest)

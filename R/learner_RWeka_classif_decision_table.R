#' @title Classification Decision Table Learner
#' @author damirpolat
#' @name mlr_learners_classif.decision_table
#'
#' @description
#' Simple Decision Table majority classifier.
#' Calls [RWeka::make_Weka_classifier()] from \CRANpkg{RWeka}.
#'
#' @section Initial parameter values:
#' - `E`:
#'    - Has only 2 out of 4 original evaluation measures : acc and auc with acc being the default
#'    - Reason for change: this learner should only contain evaluation measures appropriate for classification tasks
#'
#' @section Custom mlr3 parameters:
#' - `output_debug_info`:
#'   - original id: output-debug-info
#'
#' - `do_not_check_capabilities`:
#'   - original id: do-not-check-capabilities
#'
#' - `num_decimal_places`:
#'   - original id: num-decimal-places
#'
#' - `batch_size`:
#'   - original id: batch-size
#'
#' - `P_best`:
#'   - original id: P
#'
#' - `D_best`:
#'   - original id: D
#'
#' - `N_best`:
#'   - original id: N
#'
#' - `S_best`:
#'   - original id: S
#'
#' - Reason for change: This learner contains changed ids of the following control arguments
#' since their ids contain irregular pattern
#'
#'
#' @templateVar id classif.decision_table
#' @template learner
#'
#' @references
#' `r format_bib("Kohavi1995")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifDecisionTable = R6Class("LearnerClassifDecisionTable",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        S = p_fct(default = "BestFirst", levels = c("BestFirst", "GreedyStepwise"), tags = "train"),
        X = p_int(default = 1L, tags = "train"),
        E = p_fct(default = "acc", levels = c("acc", "auc"), tags = "train"),
        I = p_lgl(tags = "train"),
        R = p_lgl(tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE, tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L, tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        P_best = p_uty(depends = (S == "BestFirst"), tags = "train"),
        D_best = p_fct(default = "1", levels = c("0", "1", "2"), depends = (S == "BestFirst"),
                       tags = "train"),
        N_best = p_int(depends = (S == "BestFirst"), tags = "train"),
        S_best = p_int(default = 1L, depends = (S == "BestFirst"), tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )

      param_set$values = list(E = "acc")

      super$initialize(
        id = "classif.decision_table",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("missings", "multiclass", "twoclass", "marshal"),
        man = "mlr3extralearners::mlr_learners_classif.decision_table",
        label = "Decision Table"
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
      weka_learner = RWeka::make_Weka_classifier("weka/classifiers/rules/DecisionTable")
      pars = self$param_set$get_values(tags = "train")
      nested_pars = list(S = "_best")
      rweka_train(task$data(), task$formula(), pars, weka_learner, nested_pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      rweka_predict(newdata, pars, self$predict_type, self$model)
    }
  )
)

.extralrns_dict$add("classif.decision_table", LearnerClassifDecisionTable)

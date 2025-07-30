#' @title Classification Bayes Network Learner
#' @author damirpolat
#' @name mlr_learners_classif.bayes_net
#'
#' @description
#' Bayes Network learning using various search algorithms.
#' Calls [RWeka::make_Weka_classifier()] from \CRANpkg{RWeka}.
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
#' - Reason for change: This learner contains changed ids of the following control arguments
#' since their ids contain irregular pattern
#'
#' - `N` removed:
#'   - Initial structure is empty
#'
#' - `P` removed:
#'   - Maximum number of parents
#'
#' - `R` removed:
#'   - Random order
#'
#' - `mbc` removed:
#'   - Applies a Markov Blanket correction to the network structure, after a network structure is learned
#'
#' - `S` removed:
#'   - Score type
#'
#' - `A` removed:
#'   - Initial count (alpha)
#'
#' - Reason for change: The parameters are removed because they don't work out of the box
#' and it's unclear how to use them.
#'
#'
#' @templateVar id classif.bayes_net
#' @template learner
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifBayesNet = R6Class("LearnerClassifBayesNet",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        D = p_lgl(tags = "train"),
        B = p_uty(tags = "train"),
        Q = p_fct(levels = c("global.K2", "global.HillClimber", "global.SimulatedAnnealing", "global.TabuSearch",
                             "global.TAN", "local.K2", "local.HillClimber", "local.LAGDHillClimber",
                             "local.SimulatedAnnealing", "local.TabuSearch", "local.TAN"),
                  tags = "train"),
        E = p_fct(levels = c("estimate.SimpleEstimator", "estimate.BMAEstimator", "estimate.MultiNomialBMAEstimator"),
                  tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE,
                                          tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L,
                                   tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )

      super$initialize(
        id = "classif.bayes_net",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("missings", "multiclass", "twoclass", "marshal"),
        man = "mlr3extralearners::mlr_learners_classif.bayes_net",
        label = "Bayes Network"
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
      weka_learner = RWeka::make_Weka_classifier("weka/classifiers/bayes/BayesNet")
      pars = self$param_set$get_values(tags = "train")
      rweka_train(task$data(), task$formula(), pars, weka_learner)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      rweka_predict(newdata, pars, self$predict_type, self$model)
    }
  )
)

.extralrns_dict$add("classif.bayes_net", LearnerClassifBayesNet)

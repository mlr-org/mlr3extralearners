#' @title Classification Naive Bayes Learner From Weka
#' @author damirpolat
#' @name mlr_learners_classif.NaiveBayesWEKA
#'
#' @description
#' Naive Bayes Classifier Using Estimator Classes.
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
#'
#' @templateVar id classif.NaiveBayesWEKA
#' @template learner
#'
#' @references
#' `r format_bib("John1995")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifNaiveBayesWEKA = R6Class("LearnerClassifNaiveBayesWEKA",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        K = p_lgl(default = FALSE, tags = "train"),
        D = p_lgl(default = FALSE, tags = "train"),
        O = p_lgl(default = FALSE, tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE,
                                          tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L,
                                   tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )

      super$initialize(
        id = "classif.NaiveBayesWEKA",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("missings", "multiclass", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.NaiveBayesWEKA",
        label = "Naive Bayes"
      )
    }
  ),

  private = list(
    .train = function(task) {
      weka_learner = RWeka::make_Weka_classifier("weka/classifiers/bayes/NaiveBayes")
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

.extralrns_dict$add("classif.NaiveBayesWEKA", LearnerClassifNaiveBayesWEKA)

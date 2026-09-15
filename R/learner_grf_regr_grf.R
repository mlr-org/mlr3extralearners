#' @title Generalized Random Forest Regression Learner
#' @author jesuisantoine
#' @name mlr_learners_regr.grf
#'
#' @description
#' Generalized random forest for regression.
#' Calls `grf::regression_forest()` from \CRANpkg{grf}.
#'
#' @section Custom mlr3 parameters:
#' - `sample.weights` is not exposed as a hyperparameter.
#'   Observation weights are taken from the task instead, see the `weights` property.
#' - `estimate.variance` is not exposed as a hyperparameter.
#'   It is enabled automatically when the `predict_type` is `"se"`, which requires `ci.group.size` to be at
#'   least `2`.
#'
#' @references
#' `r format_bib("athey2019generalized")`
#'
#' @templateVar id regr.grf
#' @template learner
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrGRF = R6Class("LearnerRegrGRF",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        num.trees = p_int(lower = 1L, default = 2000L, tags = "train"),
        clusters = p_uty(default = NULL, tags = "train"),
        equalize.cluster.weights = p_lgl(default = FALSE, tags = "train"),
        sample.fraction = p_dbl(lower = 0, upper = 1, default = 0.5, tags = "train"),
        mtry = p_int(lower = 1L, tags = "train"),
        min.node.size = p_int(lower = 1L, default = 5L, tags = "train"),
        honesty = p_lgl(default = TRUE, tags = "train"),
        honesty.fraction = p_dbl(lower = 0, upper = 1, default = 0.5, tags = "train"),
        honesty.prune.leaves = p_lgl(default = TRUE, tags = "train"),
        alpha = p_dbl(lower = 0, upper = 0.25, default = 0.05, tags = "train"),
        imbalance.penalty = p_dbl(lower = 0, default = 0, tags = "train"),
        ci.group.size = p_int(lower = 1L, default = 2L, tags = "train"),
        tune.parameters = p_uty(default = "none", tags = "train"),
        tune.num.trees = p_int(lower = 1L, default = 50L, tags = "train"),
        tune.num.reps = p_int(lower = 1L, default = 100L, tags = "train"),
        tune.num.draws = p_int(lower = 1L, default = 1000L, tags = "train"),
        compute.oob.predictions = p_lgl(default = TRUE, tags = "train"),
        seed = p_int(tags = "train"),
        linear.correction.variables = p_uty(default = NULL, tags = "predict"),
        ll.lambda = p_dbl(lower = 0, default = NULL, special_vals = list(NULL), tags = "predict"),
        ll.weight.penalty = p_lgl(default = FALSE, tags = "predict"),
        num.threads = p_int(lower = 1L, tags = c("train", "predict"))
      )

      super$initialize(
        id = "regr.grf",
        packages = c("mlr3extralearners", "grf"),
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "se"),
        param_set = param_set,
        properties = c("weights", "missings"),
        man = "mlr3extralearners::mlr_learners_regr.grf",
        label = "Generalized Random Forest"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")

      invoke(
        grf::regression_forest,
        X = as.matrix(task$data(cols = task$feature_names)),
        Y = task$truth(),
        sample.weights = private$.get_weights(task),
        .args = pars
      )
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = as.matrix(ordered_features(task, self))

      pred = invoke(
        predict,
        self$model,
        newdata = newdata,
        estimate.variance = self$predict_type == "se",
        .args = pars
      )

      if (self$predict_type == "response") {
        list(response = pred$predictions)
      } else {
        list(response = pred$predictions, se = sqrt(pred$variance.estimates))
      }
    }
  )
)

.extralrns_dict$add("regr.grf", LearnerRegrGRF)

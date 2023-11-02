#' @title Classification Random Planted Forest Learner
#' @author jemus42
#' @name mlr_learners_classif.rpf
#'
#' @description
#' Random Planted Forest: A directly interpretable tree ensemble.
#'
#' Calls [randomPlantedForest::rpf()] from 'randomPlantedForest'.
#'
#' @section Initial parameter values:
#' - `loss`:
#'   - Actual default: `"L2"`.
#'   - Initial value: `"exponential"`.
#'   - Reason for change: Using `"L2"` (or `"L1"`) loss does not guarantee predictions are valid
#'     probabilities and more akin to the linear predictor of a GLM.

#' @section Custom mlr3 parameters:
#' - `max_interaction`:
#'   - This hyperparameter can alternatively be set via `max_interaction_ratio` as
#'     `max_interaction = max(ceiling(max_interaction_ratio * n_features), 1)`.
#'     The parameter `max_interaction_limit` can optionally be set as an upper bound, such that
#'     `max_interaction_ratio * min(n_features, max_interaction_limit)` is used instead.
#'     This is analogous to `mtry.ratio` in [`classif.ranger`][mlr3learners::mlr_learners_classif.ranger], with
#'     `max_interaction_limit` as an additional constraint.
#'     The parameter `max_interaction_limit` is initialized to `Inf`.
#'
#' @templateVar id classif.rpf
#' @template learner
#'
#' @section Installation:
#' Package 'randomPlantedForest' is not on CRAN and has to be installed from GitHub via
#' `remotes::install_github("PlantedML/randomPlantedForest")`.
#'
#' @references
#' `r format_bib("hiabu_2023")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifRandomPlantedForest = R6Class("LearnerClassifRandomPlantedForest",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        max_interaction       = p_int(lower = 0, upper = Inf, default = 1, tags = "train"),
        max_interaction_ratio = p_dbl(lower = 0, upper = 1, tags = "train"),
        max_interaction_limit = p_int(lower = 1, upper = Inf, tags = c("required", "train"), special_vals = list(Inf)),
        ntrees                = p_int(lower = 1, upper = Inf, default = 50, tags = "train"),
        splits                = p_int(lower = 1, upper = Inf, default = 30, tags = "train"),
        split_try             = p_int(lower = 1, upper = Inf, default = 10, tags = "train"),
        t_try                 = p_dbl(lower = 0, upper = 1, default = 0.4, tags = "train"),
        loss                  = p_fct(c("L1", "L2", "logit", "exponential"), default = "L2", tags = "train"),
        delta                 = p_dbl(lower = 0, upper = 1, default = 1, tags = "train"),
        epsilon               = p_dbl(lower = 0, upper = 1, default = 0.1, tags = "train"),
        deterministic         = p_lgl(default = FALSE, tags = "train"),
        nthreads              = p_int(lower = 1, upper = Inf, default = 1, tags = c("train", "threads")),
        cv                    = p_lgl(default = FALSE, tags = "train"),
        purify                = p_lgl(default = FALSE, tags = "train")
      )

      param_set$values = list(loss = "exponential", max_interaction_limit = Inf)

      super$initialize(
        id = "classif.rpf",
        packages = "randomPlantedForest",
        feature_types = c("integer", "numeric", "factor", "ordered", "logical"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.rpf",
        label = "Random Planted Forest"
      )
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")
      # max_interaction_limit is needed but must not be passed to rpf(),
      # while convert_ratio automatically removes max_interaction_ratio.
      max_interaction_limit = pars[["max_interaction_limit"]]
      pars[["max_interaction_limit"]] = NULL
      n_features = length(task$feature_names)

      pars = convert_ratio(
        pars, "max_interaction", "max_interaction_ratio",
        min(n_features, max_interaction_limit)
      )

      invoke(
        randomPlantedForest::rpf,
        x = task$data(cols = task$feature_names),
        y = task$data(cols = task$target_names),
        .args = pars
      )
    },
    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)

      if (self$predict_type == "response") {
        pred = invoke(
          predict, self$model, new_data = newdata,
          type = "class", .args = pars
        )
        list(response = pred[[".pred_class"]])
      } else {
        pred = invoke(
          predict, self$model, new_data = newdata,
          type = "prob", .args = pars
        )
        # Result will be a df with one column per variable with names '.pred_<level>'
        # we want the names without ".pred"
        xn = names(pred)
        xn[which(xn == paste0(".pred_", task$class_names))] = task$class_names
        names(pred) = xn

        list(prob = as.matrix(pred))
      }
    }
  )
)

.extralrns_dict$add("classif.rpf", LearnerClassifRandomPlantedForest)

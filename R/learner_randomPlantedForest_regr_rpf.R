#' @title Regression Random Planted Forest Learner
#' @author jemus42
#' @name mlr_learners_regr.rpf
#'
#' @description
#' Random Planted Forest: A directly interpretable tree ensemble.
#'
#' Calls [randomPlantedForest::rpf()] from 'randomPlantedForest'.
#'
#' @inheritSection mlr_learners_classif.rpf Custom mlr3 parameters
#' @templateVar id regr.rpf
#' @template learner
#' @inheritSection mlr_learners_classif.rpf Installation
#'
#' @references
#' `r format_bib("hiabu_2023")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrRandomPlantedForest = R6Class("LearnerRegrRandomPlantedForest",
  inherit = LearnerRegr,
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
        deterministic         = p_lgl(default = FALSE, tags = "train"),
        nthreads              = p_int(lower = 1, upper = Inf, default = 1, tags = c("train", "threads")),
        cv                    = p_lgl(default = FALSE, tags = "train"),
        purify                = p_lgl(default = FALSE, tags = "train")
      )

      param_set$values = list(max_interaction_limit = Inf)

      super$initialize(
        id = "regr.rpf",
        packages = "randomPlantedForest",
        feature_types = c("integer", "numeric", "factor", "ordered", "logical"),
        predict_types = "response",
        param_set = param_set,
        properties = character(0),
        man = "mlr3extralearners::mlr_learners_regr.rpf",
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

      pred = invoke(
        predict, self$model, new_data = newdata,
        type = "numeric", .args = pars
      )
      list(response = pred[[".pred"]])
    }
  )
)

.extralrns_dict$add("regr.rpf", LearnerRegrRandomPlantedForest)

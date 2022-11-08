#' @title Regression Fast Nearest Neighbor Search Learner
#' @author be-marc
#' @name mlr_learners_regr.fnn
#'
#' @description
#' Fast Nearest Neighbour Regression.
#' Calls [FNN::knn.reg()] from \CRANpkg{FNN}.
#'
#' @templateVar id regr.fnn
#' @template learner
#'
#' @references
#' `r format_bib("boltz2007knn")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerRegrFNN = R6Class("LearnerRegrFNN",
  inherit = LearnerRegr,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        k = p_int(default = 1L, lower = 1L, tags = "predict"),
        algorithm = p_fct(default = "kd_tree", levels = c("kd_tree", "cover_tree", "brute"),
          tags = "predict")
      )

      super$initialize(
        id = "regr.fnn",
        packages = c("mlr3extralearners", "FNN"),
        feature_types = c("integer", "numeric"),
        predict_types = "response",
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_regr.fnn",
        label = "Fast Nearest Neighbour"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      invoke(list,
        train = task$data(cols = task$feature_names),
        y = task$truth(),
        .args = pars
      )
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      response = invoke(
        FNN::knn.reg,
        train = self$model$train,
        y = self$model$y,
        test = ordered_features(task, self),
        .args = pars
      )

      list(response = response$pred)
    }
  )
)

.extralrns_dict$add("regr.fnn", LearnerRegrFNN)

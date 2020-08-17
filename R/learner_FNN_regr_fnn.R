#' @title Regression Fast Nearest Neighbor Search Learner
#' @author be-marc
#'
#' @name mlr_learners_regr.fnn
#'
#' @template class_learner
#' @templateVar id regr.fnn
#' @templateVar caller knn.reg
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
      ps = ParamSet$new(
        params = list(
          ParamInt$new(id = "k", default = 1, lower = 1L, tags = "train"),
          ParamFct$new(
            id = "algorithm", default = "kd_tree",
            levels = c("kd_tree", "cover_tree", "brute"), tags = "train"
          )
        )
      )

      super$initialize(
        id = "regr.fnn",
        packages = "FNN",
        feature_types = c("integer", "numeric"),
        predict_types = "response",
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_regr.fnn"
      )
    }
  ),

  private = list(
    .train = function(task) {
      list(
        data = task$data(),
        pars = self$param_set$get_values(tags = "train")
      )
    },

    .predict = function(task) {
      model = self$model
      train = model$data[, task$feature_names, with = FALSE]
      target = model$data[, task$target_names, with = FALSE][[1]]
      newdata = task$data(cols = task$feature_names)

      p = invoke(FNN::knn.reg,
        train = train, test = newdata, y = target,
        .args = model$pars
      )
      PredictionRegr$new(task = task, response = p$pred)
    }
  )
)

lrns_dict$add("regr.fnn", LearnerRegrFNN)

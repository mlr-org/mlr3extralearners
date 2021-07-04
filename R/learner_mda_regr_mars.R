#' @title Regression Mars Learner
#' @author sumny
#' @name mlr_learners_regr.mars
#'
#' @template class_learner
#' @templateVar id regr.mars
#' @templateVar caller mars
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrMars = R6Class("LearnerRegrMars",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamInt$new(id = "degree", lower = 1L, default = 1L, tags = "train"),
          ParamInt$new(id = "nk", lower = 1L, tags = "train"),
          ParamDbl$new(id = "penalty", lower = 0, default = 2, tags = "train"),
          ParamDbl$new(id = "thresh", lower = 0, default = 0.001, tags = "train"),
          ParamLgl$new(id = "prune", default = TRUE, tags = "train"),
          ParamLgl$new(id = "trace.mars", default = FALSE, tags = "train"),
          ParamLgl$new(id = "forward.step", default = FALSE, tags = "train")
        )
      )

      super$initialize(
        id = "regr.mars",
        packages = "mda",
        feature_types = c("integer", "numeric"),
        predict_types = "response",
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_regr.mars"
      )
    }


  ),

  private = list(

    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      # set column names to ensure consistency in fit and predict
      self$state$feature_names = task$feature_names

      if ("weights" %in% task$properties) {
        pars = insert_named(pars, list(w = task$weights$weight))
      }

      x = task$data(cols = self$state$feature_names)
      y = task$data(cols = task$target_names)[[1L]]

      # use the mlr3misc::invoke function (it's similar to do.call())
      mlr3misc::invoke(mda::mars,
                       x = x,
                       y = y,
                       .args = pars)
    },

    .predict = function(task) {
      # get newdata and ensure same ordering in train and predict
      newdata = task$data(cols = self$state$feature_names)

      pred = mlr3misc::invoke(predict, self$model, newdata = newdata)[, 1L]

      list(response = pred)
    }
  )
)

.extralrns_dict$add("regr.mars", LearnerRegrMars)

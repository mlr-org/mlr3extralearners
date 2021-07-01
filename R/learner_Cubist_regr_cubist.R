#' @title Regression Cubist Learner
#' @author sumny
#' @name mlr_learners_regr.cubist
#'
#' @template class_learner
#' @templateVar id regr.cubist
#' @templateVar caller cubist
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrCubist = R6Class("LearnerRegrCubist",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamInt$new(id = "committees", lower = 1L, upper = 100L, default = 1L,
            tags = c("train", "required")),
          ParamLgl$new(id = "unbiased", default = FALSE, tags = "train"),
          ParamInt$new(id = "rules", lower = 1L, default = 100L, tags = "train"),
          ParamDbl$new(id = "extrapolation", lower = 0, upper = 100, default = 100, tags = "train"),
          ParamInt$new(id = "sample", lower = 0L, default = 0L, tags = "train"),
          ParamInt$new(id = "seed", default = sample.int(4096, size = 1), tags = "train"),
          ParamUty$new(id = "label", default = "outcome", tags = "train"),
          ParamInt$new(id = "neighbors", lower = 0L, upper = 0L, default = 0L,
            tags = c("predict", "required"))
        )
      )
      ps$values$committees = 1L # is passed in call directly
      ps$values$neighbors = 0L # is passed in call directly

      super$initialize(
        id = "regr.cubist",
        packages = "Cubist",
        feature_types = c("integer", "numeric", "character", "factor", "ordered"),
        predict_types = "response",
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_regr.cubist"
      )
    }


  ),

  private = list(
    .train = function(task) {
      # get parameters for training

      pars = self$param_set$get_values(tags = "train")
      pars[["committees"]] = NULL # is passed in call directly
      control = mlr3misc::invoke(Cubist::cubistControl, .args = pars)

      # set column names to ensure consistency in fit and predict
      self$state$feature_names = task$feature_names

      x = task$data(cols = self$state$feature_names)
      y = task$data(cols = task$target_names)[[1L]]

      mlr3misc::invoke(Cubist::cubist,
        x = x,
        y = y,
        committees = self$param_set$values$committees,
        weights = if ("weights" %in% task$properties) task$weights$weight else NULL,
        control = control)
    },

    .predict = function(task) {
      # get newdata and ensure same ordering in train and predict
      newdata = task$data(cols = self$state$feature_names)

      pred = mlr3misc::invoke(predict, self$model,
        newdata = newdata,
        neighbors = self$param_set$values$neighbors)

      list(response = pred)
    }
  )
)

.extralrns_dict$add("regr.cubist", LearnerRegrCubist)

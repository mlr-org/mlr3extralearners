#' @title Regression Cubist Learner
#' @author sumny
#' @name mlr_learners_regr.cubist
#'
#' @description
#' Rule-based model that is an extension of Quinlan's M5 model tree. Each tree contains
#' linear regression models at the terminal leaves.
#' Calls [Cubist::cubist()] from \CRANpkg{Cubist}.
#'
#' @template learner
#' @templateVar id regr.cubist
#'
#' @references
#' `r format_bib("quinlan1992learning", "quinlan1993combining")`
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
      # FIXME:
      param_set = ParamSet$new(
        list(
          ParamInt$new("committees", lower = 1L, upper = 100L, default = 1L, tags = c("train", "required")),
          ParamLgl$new("unbiased", default = FALSE, tags = "train"),
          ParamInt$new("rules", lower = 1L, default = 100L, tags = "train"),
          ParamDbl$new("extrapolation", lower = 0, upper = 100, default = 100, tags = "train"),
          ParamInt$new("sample", lower = 0L, default = 0L, tags = "train"),
          ParamInt$new("seed", default = NO_DEF, tags = "train"),
          ParamUty$new("label", default = "outcome", tags = "train"),
          ParamInt$new("neighbors", lower = 0L, upper = 9L, default = 0L, tags = c("predict", "required"))
        )
      )
      param_set$values$committees = 1L
      param_set$values$neighbors = 0L

      super$initialize(
        id = "regr.cubist",
        packages = c("mlr3extralearners", "Cubist"),
        feature_types = c("integer", "numeric", "character", "factor", "ordered"),
        predict_types = "response",
        param_set = param_set,
        man = "mlr3extralearners::mlr_learners_regr.cubist",
        label = "Rule-based model"
      )
    }
  ),

  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")
      pars[["committees"]] = NULL
      control = invoke(Cubist::cubistControl, .args = pars)

      x = task$data(cols = task$feature_names)
      y = task$data(cols = task$target_names)[[1L]]

      invoke(Cubist::cubist,
        x = x,
        y = y,
        committees = self$param_set$values$committees,
        weights = if ("weights" %in% task$properties) task$weights$weight else NULL,
        control = control)
    },

    .predict = function(task) {
      newdata = ordered_features(task, self)

      pred = invoke(predict, self$model,
        newdata = newdata,
        neighbors = self$param_set$values$neighbors)

      list(response = pred)
    }
  )
)

.extralrns_dict$add("regr.cubist", LearnerRegrCubist)

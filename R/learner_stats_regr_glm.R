#' @title Regression Generalized Linear Model Regression Learner
#' @author salauer
#' @name mlr_learners_regr.glm
#'
#' @template class_learner
#' @templateVar id regr.glm
#' @templateVar caller glm
#'
#'
#' @template seealso_learner
#' @template example
#'
#' @section Custom mlr3 defaults:
#' - `type`
#'   - Actual default: "link"
#'   - Adjusted default: "response"
#'   - Reason for change: Users rarely want predictions on the link scale
#'   (for instance, on the log scale when using the Poisson distribution).
#'   It would be much more reasonable for the default to be "response",
#'   which puts predictions on the scale of the observed data,
#'   and allow the user to change the type to "link" if they so desire.
#' @export
LearnerRegrGlm = R6Class("LearnerRegrGlm",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(list(
        ParamLgl$new("singular.ok", default = TRUE, tags = "train"),
        ParamLgl$new("x", default = FALSE, tags = "train"),
        ParamLgl$new("y", default = TRUE, tags = "train"),
        ParamLgl$new("model", default = TRUE, tags = "train"),
        ParamUty$new("etastart", tags = "train"),
        ParamUty$new("mustart", tags = "train"),
        ParamUty$new("start", default = NULL, tags = "train"),
        ParamUty$new("offset", tags = "train"),
        ParamFct$new("family",
          default = "gaussian",
          levels = c("gaussian", "poisson", "quasipoisson", "Gamma", "inverse.gaussian"),
          tags = "train"),
        ParamDbl$new("epsilon", default = 1e-8, tags = c("train", "control")),
        ParamDbl$new("maxit", default = 25, tags = c("train", "control")),
        ParamLgl$new("trace", default = FALSE, tags = c("train", "control")),
        ParamUty$new("dispersion", default = NULL, tags = "predict"),
        ParamFct$new("type",
          default = "link",
          levels = c("response", "link", "terms"),
          tags = "predict")
      ))

      ps$values = insert_named(ps$values, list(
        type = "response"))

      super$initialize(
        id = "regr.glm",
        packages = "stats",
        feature_types = c("logical", "integer", "numeric", "character", "factor", "ordered"),
        predict_types = c("response", "se"),
        param_set = ps,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_regr.glm"
      )
    }


  ),

  private = list(
    .train = function(task) {
      # get parameters for training

      pars = self$param_set$get_values(tags = "train")

      # set column names to ensure consistency in fit and predict
      self$state$feature_names = task$feature_names

      formula = task$formula()
      data = task$data()

      # use the mlr3misc::invoke function (it's similar to do.call())
      mlr3misc::invoke(stats::glm,
        formula = formula,
        data = data,
        .args = pars)
    },

    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = task$data(cols = self$state$feature_names)


      if (self$predict_type == "response") {
        response = mlr3misc::invoke(stats::predict.glm,
          object = self$model,
          newdata = newdata,
          se.fit = FALSE,
          .args = pars)
        list(response = response)
      } else {
        pred = mlr3misc::invoke(stats::predict.glm,
          object = self$model,
          newdata = newdata,
          se.fit = TRUE,
          .args = pars)
        list(response = pred$fit, se = pred$se.fit)
      }
    }
  )
)

.extralrns_dict$add("regr.glm", LearnerRegrGlm)

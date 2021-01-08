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
#' @details For logistic regression please use
#' \code{\link[mlr3learners]{mlr_learners_classif.log_reg}}.
#'
#' @section Custom mlr3 defaults:
#' - `type`
#'   - Actual default: "link"
#'   - Adjusted default: "response"
#'   - Reason for change: Response scale more natural for predictions.
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
        ParamFct$new("na.action",
          levels = c("na.omit", "na.pass", "na.fail", "na.exclude"),
          tags = c("train", "predict")),
        ParamFct$new("link",
          levels = c(
            "logit", "probit", "cauchit", "cloglog", "identity",
            "log", "sqrt", "1/mu^2", "inverse"),
          tags = c("train", "family")),
        ParamDbl$new("epsilon", default = 1e-8, tags = c("train", "control")),
        ParamDbl$new("maxit", default = 25, tags = c("train", "control")),
        ParamLgl$new("trace", default = FALSE, tags = c("train", "control")),
        ParamUty$new("dispersion", default = NULL, tags = "predict"),
        ParamFct$new("type",
          default = "link", levels = c("response", "link", "terms"),
          tags = "predict")
      ))

      ps$values = mlr3misc::insert_named(ps$values, list(
        family = "gaussian",
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
      pars = mlr3misc::remove_named(pars, "link")
      if ("weights" %in% task$properties) {
        pars = mlr3misc::insert_named(pars, list(weights = task$weights$weight))
      }
      # add family to parameters
      fam <- mlr3misc::invoke(get(pars$family), .args = self$param_set$get_values(tags = "family"))
      pars <- mlr3misc::insert_named(pars, list(family = fam))
      # if na.action not specified, use system default
      if (!"na.action" %in% pars$values) {
        pars <- mlr3misc::insert_named(pars, list(na.action = getOption("na.action")))
      }
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
      # if na.action not specified, use na.pass (default for prediction)
      if (!"na.action" %in% pars$values) {
        pars <- mlr3misc::insert_named(pars, list(na.action = "na.pass"))
      }
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

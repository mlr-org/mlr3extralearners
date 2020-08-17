#' @title Boosted Generalized Linear Regression Learner
#' @author be-marc
#'
#' @name mlr_learners_regr.glmboost
#'
#' @template class_learner
#' @templateVar id regr.glmboost
#' @templateVar caller glmboost
#'
#' @references
#' Bühlmann P, Yu B (2003).
#' “Boosting With the L2 Loss.”
#' Journal of the American Statistical Association, 98(462), 324–339.
#' \doi{10.1198/016214503000125}
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerRegrGLMBoost = R6Class("LearnerRegrGLMBoost",
  inherit = LearnerRegr,
  public = list(

    #' @description
    #' Create a `LearnerRegrGLMBoost` object.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamDbl$new(
            id = "offset", default = NULL, special_vals = list(NULL),
            tags = "train"),
          ParamFct$new(
            id = "family", default = c("Gaussian"),
            levels = c(
              "Gaussian", "Laplace", "Huber", "Poisson",
              "GammaReg", "NBinomial", "Hurdle"), tags = "train"),
          ParamUty$new(id = "nuirange", default = c(0, 100), tags = "train"),
          ParamDbl$new(
            id = "d", default = NULL, special_vals = list(NULL),
            tags = "train"),
          ParamLgl$new(id = "center", default = TRUE, tags = "train"),
          ParamInt$new(id = "mstop", default = 100, tags = "train"),
          ParamDbl$new(id = "nu", default = 0.1, tags = "train"),
          ParamFct$new(
            id = "risk", default = "inbag",
            levels = c("inbag", "oobag", "none"), tags = "train"),
          ParamUty$new(id = "oobweights", default = NULL, tags = "train"),
          ParamLgl$new(id = "trace", default = FALSE, tags = "train"),
          ParamUty$new(id = "stopintern", default = FALSE, tags = "train"),
          ParamUty$new(id = "na.action", default = na.omit, tags = "train"),
          ParamUty$new(id = "contrasts.arg", tags = "train")
        )
      )
      ps$add_dep("oobweights", "risk", CondEqual$new("oobag"))

      super$initialize(
        id = "regr.glmboost",
        packages = "mboost",
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("response"),
        param_set = ps,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_regr.glmboost"
      )
    }
  ),

  private = list(
    .train = function(task) {

      # Set to default for switch
      if (is.null(self$param_set$values$family)) {
        self$param_set$values = insert_named(
          self$param_set$values,
          list(family = "Gaussian"))
      }

      pars = self$param_set$get_values(tags = "train")
      pars_boost = pars[which(names(pars) %in%
        formalArgs(mboost::boost_control))]
      pars_glmboost = pars[which(names(pars) %in%
        formalArgs(mboost::gamboost))]
      pars_family = pars[which(names(pars) %in%
        formalArgs(getFromNamespace(
          pars_glmboost$family,
          asNamespace("mboost"))))]

      f = task$formula()
      data = task$data()

      if ("weights" %in% task$properties) {
        pars_glmboost = insert_named(
          pars_glmboost,
          list(weights = task$weights$weight))
      }

      pars_glmboost$family = switch(pars$family,
        Gaussian = mboost::Gaussian(),
        Laplace = mboost::Laplace(),
        Huber = invoke(mboost::Huber, .args = pars_family),
        Poisson = mboost::Poisson(),
        GammaReg = invoke(mboost::GammaReg, .args = pars_family),
        NBinomial = invoke(mboost::NBinomial, .args = pars_family),
        Hurdle = invoke(mboost::Hurdle, .args = pars_family)
      )

      ctrl = invoke(mboost::boost_control, .args = pars_boost)
      invoke(mboost::glmboost, f,
        data = data, control = ctrl,
        .args = pars_glmboost)
    },

    .predict = function(task) {
      newdata = task$data(cols = task$feature_names)

      p = invoke(predict, self$model, newdata = newdata, type = "response")
      PredictionRegr$new(task = task, response = p)
    }
  )
)

lrns_dict$add("regr.glmboost", LearnerRegrGLMBoost)


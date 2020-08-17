#' @title Boosted Generalized Additive Regression Learner
#' @author be-marc
#' @name mlr_learners_regr.gamboost
#'
#' @description
#' Boosted generalized additive regression learner.
#' Calls [mboost::gamboost()] from package \CRANpkg{mboost}.
#'
#' @templateVar id regr.gamboost
#' @template class_learner
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
LearnerRegrGAMBoost = R6Class("LearnerRegrGAMBoost",
  inherit = LearnerRegr,
  public = list(

    #' @description
    #' Create a `LearnerRegrGAMBoost` object.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamFct$new(
            id = "baselearner", default = "bbs",
            levels = c("bbs", "bols", "btree"), tags = "train"),
          ParamInt$new(id = "dfbase", default = 4L, tags = "train"),
          ParamDbl$new(
            id = "offset", default = NULL, special_vals = list(NULL),
            tags = "train"),
          ParamFct$new(
            id = "family", default = c("Gaussian"),
            levels = c(
              "Gaussian", "Laplace", "Huber", "Poisson", "GammaReg",
              "NBinomial", "Hurdle"), tags = "train"),
          ParamUty$new(id = "nuirange", default = c(0, 100), tags = "train"),
          ParamDbl$new(
            id = "d", default = NULL, special_vals = list(NULL),
            tags = "train"),
          ParamInt$new(id = "mstop", default = 100, tags = "train"),
          ParamDbl$new(id = "nu", default = 0.1, tags = "train"),
          ParamFct$new(
            id = "risk", default = "inbag",
            levels = c("inbag", "oobag", "none"), tags = "train"),
          ParamUty$new(id = "oobweights", default = NULL, tags = "train"),
          ParamLgl$new(id = "trace", default = FALSE, tags = "train"),
          ParamUty$new(id = "stopintern", default = FALSE, tags = "train"),
          ParamUty$new(id = "na.action", default = na.omit, tags = "train")
        )
      )
      ps$add_dep("oobweights", "risk", CondEqual$new("oobag"))

      super$initialize(
        id = "regr.gamboost",
        packages = "mboost",
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("response"),
        param_set = ps,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_regr.gamboost"
      )
    }
  ),

  private = list(
    .train = function(task) {

      # Set to default for switch
      if (is.null(self$param_set$values$family)) {
        self$param_set$values$family = "Gaussian"
      }

      pars = self$param_set$get_values(tags = "train")
      pars_boost = pars[which(names(pars) %in%
        formalArgs(mboost::boost_control))]
      pars_gamboost = pars[which(names(pars) %in%
        formalArgs(mboost::gamboost))]
      pars_family = pars[which(names(pars) %in%
        formalArgs(getFromNamespace(
          pars_gamboost$family,
          asNamespace("mboost"))))]

      f = task$formula()
      data = task$data()

      if ("weights" %in% task$properties) {
        pars_gamboost = insert_named(
          pars_gamboost,
          list(weights = task$weights$weight))
      }

      pars_gamboost$family = switch(pars$family,
        Gaussian = mboost::Gaussian(),
        Laplace = mboost::Laplace(),
        Huber = invoke(mboost::Huber, .args = pars_family),
        Poisson = mboost::Poisson(),
        GammaReg = invoke(mboost::GammaReg, .args = pars_family),
        NBinomial = invoke(mboost::NBinomial, .args = pars_family),
        Hurdle = invoke(mboost::Hurdle, .args = pars_family)
      )

      ctrl = invoke(mboost::boost_control, .args = pars_boost)
      withr::with_package("mboost", { # baselearner argument requires attached mboost package
        invoke(mboost::gamboost,
          formula = f, data = data, control = ctrl,
          .args = pars_gamboost)
      })
    },

    .predict = function(task) {
      newdata = task$data(cols = task$feature_names)

      p = invoke(predict, self$model, newdata = newdata, type = "response")
      PredictionRegr$new(task = task, response = p)
    }
  )
)

lrns_dict$add("regr.gamboost", LearnerRegrGAMBoost)

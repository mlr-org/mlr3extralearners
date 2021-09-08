#' @title Boosted Generalized Additive Regression Learner
#' @author be-marc
#' @name mlr_learners_regr.gamboost
#'
#' @template class_learner
#' @templateVar id regr.gamboost
#' @templateVar caller gamboost
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
      ps = ps(
          baselearner = p_fct(default = "bbs",
            levels = c("bbs", "bols", "btree"), tags = "train"),
          dfbase = p_int(default = 4L, tags = "train"),
          offset = p_dbl(default = NULL,
            special_vals = list(NULL), tags = "train"),
          family = p_fct(default = c("Gaussian"),
            levels = c(
              "Gaussian", "Laplace", "Huber", "Poisson", "GammaReg",
              "NBinomial", "Hurdle", "custom"), tags = "train"),
          custom.family = p_uty(tags = "train"),
          nuirange = p_uty(default = c(0, 100), tags = "train"),
          d = p_dbl(default = NULL, special_vals = list(NULL),
            tags = "train"),
          mstop = p_int(default = 100, tags = "train"),
          nu = p_dbl(default = 0.1, tags = "train"),
          risk = p_fct(
            default = "inbag",
            levels = c("inbag", "oobag", "none"), tags = "train"),
          oobweights = p_uty(default = NULL, tags = "train"),
          trace = p_lgl(default = FALSE, tags = "train"),
          stopintern = p_uty(default = FALSE, tags = "train"),
          na.action = p_uty(default = stats::na.omit, tags = "train")
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

      # parameter custom.family takes precedence over family
      if (!is.null(self$param_set$values$custom.family)) {
        self$param_set$values$family = "custom"
      }

      # Set to default for switch
      if (is.null(self$param_set$values$family)) {
        self$param_set$values$family = "Gaussian"
      }

      pars = self$param_set$get_values(tags = "train")
      pars_boost = pars[which(names(pars) %in%
                                methods::formalArgs(mboost::boost_control))]
      pars_gamboost = pars[which(names(pars) %in%
                                   methods::formalArgs(mboost::gamboost))]

      if (self$param_set$values$family != "custom") {
        pars_family = pars[which(names(pars) %in%
                                   methods::formalArgs(utils::getFromNamespace(
                                     pars_gamboost$family,
                                     asNamespace("mboost"))))]
      }

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
        Hurdle = invoke(mboost::Hurdle, .args = pars_family,
        custom = pars$custom.family)
      )

      ctrl = invoke(mboost::boost_control, .args = pars_boost)
      mlr3misc::with_package("mboost", { # baselearner argument requires attached mboost package
        invoke(mboost::gamboost,
          formula = f, data = data, control = ctrl,
          .args = pars_gamboost)
      })
    },

    .predict = function(task) {
      newdata = task$data(cols = task$feature_names)

      p = invoke(predict, self$model, newdata = newdata, type = "response")
      list(response = p)
    }
  )
)

.extralrns_dict$add("regr.gamboost", LearnerRegrGAMBoost)
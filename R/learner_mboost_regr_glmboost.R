#' @title Boosted Generalized Linear Regression Learner
#' @author be-marc
#' @name mlr_learners_regr.glmboost
#'
#' @description
#' Fit a generalized linear regression model using a boosting algorithm.
#' Calls [mboost::glmboost()] from \CRANpkg{mboost}.
#'
#' @template learner
#' @templateVar id regr.glmboost
#'
#' @references
#' `r format_bib("buhlmann2003boosting")`
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
      ps = ps(
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
        center = p_lgl(default = TRUE, tags = "train"),
        mstop = p_int(default = 100, tags = "train"),
        nu = p_dbl(default = 0.1, tags = "train"),
        risk = p_fct(default = "inbag",
          levels = c("inbag", "oobag", "none"), tags = "train"),
        oobweights = p_uty(default = NULL, tags = "train"),
        trace = p_lgl(default = FALSE, tags = "train"),
        stopintern = p_uty(default = FALSE, tags = "train"),
        na.action = p_uty(default = stats::na.omit, tags = "train"),
        contrasts.arg = p_uty(tags = "train")
      )
      ps$add_dep("oobweights", "risk", CondEqual$new("oobag"))

      super$initialize(
        id = "regr.glmboost",
        packages = c("mlr3extralearners", "mboost"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("response"),
        param_set = ps,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_regr.glmboost",
        label = "Boosted Generalized Linear Model"
      )
    }
  ),

  private = list(
    .train = function(task) {

      # parameter custom.family takes precedence over family
      if (!is.null(self$param_set$values$custom.family)) {
        self$param_set$values$family = "custom"
      }

      # Set to default for switch if no family is provided
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

      if (self$param_set$values$family != "custom") {
        pars_family = pars[which(names(pars) %in%
          formalArgs(utils::getFromNamespace(
            pars_glmboost$family,
            asNamespace("mboost"))))]
      }

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
        Hurdle = invoke(mboost::Hurdle, .args = pars_family),
        custom = pars$custom.family
      )

      ctrl = invoke(mboost::boost_control, .args = pars_boost)
      invoke(mboost::glmboost, f,
        data = data, control = ctrl,
        .args = pars_glmboost)
    },

    .predict = function(task) {
      newdata = ordered_features(task, self)
      pars = self$param_set$get_values(tags = "predict")

      p = invoke(predict, self$model, newdata = newdata, type = "response", .args = pars)
      list(response = p)
    }
  )
)

.extralrns_dict$add("regr.glmboost", LearnerRegrGLMBoost)

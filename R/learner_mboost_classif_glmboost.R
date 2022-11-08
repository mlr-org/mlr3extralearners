#' @title Boosted Generalized Linear Classification Learner
#' @author be-marc
#' @name mlr_learners_classif.glmboost
#'
#' @description
#' Fit a generalized linear classification model using a boosting algorithm.
#' Calls [mboost::glmboost()] from \CRANpkg{mboost}.
#'
#'
#' @template learner
#' @templateVar id classif.glmboost
#'
#' @references
#' `r format_bib("buhlmann2003boosting")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerClassifGLMBoost = R6Class("LearnerClassifGLMBoost",
  inherit = LearnerClassif,
  public = list(

    #' @description
    #' Create a `LearnerClassifGLMBoost` object.
    initialize = function() {
      ps = ps(
        offset = p_dbl(default = NULL,
          special_vals = list(NULL), tags = "train"),
        family = p_fct(default = c("Binomial"),
          levels = c("Binomial", "AdaExp", "AUC", "custom"), tags = "train"),
        custom.family = p_uty(tags = "train"),
        link = p_fct(default = "logit",
          levels = c("logit", "probit"), tags = "train"),
        type = p_fct(default = "adaboost",
          levels = c("glm", "adaboost"), tags = "train"),
        center = p_lgl(default = TRUE, tags = "train"),
        mstop = p_int(default = 100L, tags = "train"),
        nu = p_dbl(default = 0.1, tags = "train"),
        risk = p_fct(
          default = "inbag",
          levels = c("inbag", "oobag", "none"), tags = "train"),
        oobweights = p_uty(default = NULL, tags = "train"),
        trace = p_lgl(default = FALSE, tags = "train"),
        stopintern = p_uty(default = FALSE, tags = "train"),
        na.action = p_uty(default = stats::na.omit, tags = "train"),
        contrasts.arg = p_uty(tags = "train")
      )
      ps$add_dep("link", "family", CondEqual$new("Binomial"))
      ps$add_dep("type", "family", CondEqual$new("Binomial"))
      ps$add_dep("oobweights", "risk", CondEqual$new("oobag"))

      super$initialize(
        id = "classif.glmboost",
        packages = c("mlr3extralearners", "mboost"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("weights", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.glmboost",
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

      # Default family in mboost::glmboost is not useable for twoclass
      if (is.null(self$param_set$values$family)) {
        self$param_set$values = insert_named(
          self$param_set$values,
          list(family = "Binomial"))
      }

      pars = self$param_set$get_values(tags = "train")
      pars_boost = pars[which(names(pars) %in%
        formalArgs(mboost::boost_control))]
      pars_glmboost = pars[which(names(pars) %in%
        formalArgs(mboost::gamboost))]
      pars_binomial = pars[which(names(pars) %in%
        formalArgs(mboost::Binomial))]

      f = task$formula()
      data = task$data()

      if ("weights" %in% task$properties) {
        pars_glmboost = insert_named(
          pars_glmboost,
          list(weights = task$weights$weight))
      }

      pars_glmboost$family = switch(pars_glmboost$family,
        Binomial = invoke(mboost::Binomial, .args = pars_binomial),
        AdaExp = mboost::AdaExp(),
        AUC = mboost::AUC(),
        custom = pars$custom.family)

      # Predicted probabilities refer to the last factor level
      if (self$predict_type == "prob") {
        levs = c(task$negative, task$positive)
        data[[task$target_names]] = factor(data[[task$target_names]], levs)
      }

      ctrl = invoke(mboost::boost_control, .args = pars_boost)
      invoke(mboost::glmboost, f,
        data = data, control = ctrl,
        .args = pars_glmboost)
    },

    .predict = function(task) {
      family = self$param_set$values$family
      newdata = ordered_features(task, self)
      pars = self$param_set$get_values(tags = "predict")

      if (self$predict_type == "prob" &&
        (family == "AdaExp" || family == "AUC")) {
        stopf("The selected family %s does not support probabilities", family)
      }

      if (self$predict_type == "response") {
        p = invoke(predict, self$model, newdata = newdata, type = "class", .args = pars)
        list(response = p)
      } else {
        p = invoke(predict, self$model, newdata = newdata, type = "response", .args = pars)
        p = matrix(c(p, 1 - p), ncol = 2L, nrow = length(p))
        colnames(p) = task$class_names
        list(prob = p)
      }
    }
  )
)

.extralrns_dict$add("classif.glmboost", LearnerClassifGLMBoost)

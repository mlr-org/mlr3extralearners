#' @title Boosted Generalized Additive Classification Learner
#' @author be-marc
#' @name mlr_learners_classif.gamboost
#'
#' @template class_learner
#' @templateVar id classif.gamboost
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
LearnerClassifGAMBoost = R6Class("LearnerClassifGAMBoost",
  inherit = LearnerClassif,
  public = list(

    #' @description
    #' Create a `LearnerClassifGAMBoost` object.
    initialize = function() {
      ps = ps(
          baselearner = p_fct(default = "bbs",
            levels = c("bbs", "bols", "btree"), tags = "train"),
          dfbase = p_int(default = 4L, tags = "train"),
          offset = p_dbl(default = NULL,
            special_vals = list(NULL), tags = "train"),
          family = p_fct(default = c("Binomial"),
            levels = c("Binomial", "AdaExp", "AUC", "custom"), tags = "train"),
          custom.family = p_uty(tags = "train"),
          link = p_fct(default = "logit",
            levels = c("logit", "probit"), tags = "train"),
          type = p_fct(default = "adaboost",
            levels = c("glm", "adaboost"), tags = "train"),
          mstop = p_int(default = 100, tags = "train"),
          nu = p_dbl(default = 0.1, tags = "train"),
          risk = p_fct(default = "inbag",
            levels = c("inbag", "oobag", "none"), tags = "train"),
          oobweights = p_uty(default = NULL, tags = "train"),
          trace = p_lgl(default = FALSE, tags = "train"),
          stopintern = p_uty(default = FALSE, tags = "train"),
          na.action = p_uty(default = stats::na.omit, tags = "train")
      )
      ps$add_dep("type", "family", CondEqual$new("Binomial"))
      ps$add_dep("link", "family", CondEqual$new("Binomial"))
      ps$add_dep("oobweights", "risk", CondEqual$new("oobag"))

      super$initialize(
        id = "classif.gamboost",
        packages = c("mlr3extralearners", "mboost"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("weights", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.gamboost"
      )
    }
  ),

  private = list(
    .train = function(task) {

      # parameter custom.family takes precedence over family
      if (!is.null(self$param_set$values$custom.family)) {
        self$param_set$values$family = "custom"
      }

      # Default family in mboost::gamboost is not useable for twoclass
      if (is.null(self$param_set$values$family)) {
        self$param_set$values$family = "Binomial"
      }

      pars = self$param_set$get_values(tags = "train")
      pars_boost = pars[which(names(pars) %in%
                                methods::formalArgs(mboost::boost_control))]
      pars_gamboost = pars[which(names(pars) %in%
                                   methods::formalArgs(mboost::gamboost))]
      pars_binomial = pars[which(names(pars) %in%
                                   methods::formalArgs(mboost::Binomial))]

      f = task$formula()
      data = task$data()

      if ("weights" %in% task$properties) {
        pars_gamboost = insert_named(
          pars_gamboost,
          list(weights = task$weights$weight))
      }

      pars_gamboost$family = switch(pars_gamboost$family,
        Binomial = mlr3misc::invoke(mboost::Binomial, .args = pars_binomial),
        AdaExp = mboost::AdaExp(),
        AUC = mboost::AUC(),
        custom = pars$custom.family)

      # Predicted probabilities refer to the last factor level
      if (self$predict_type == "prob") {
        levs = c(task$negative, task$positive)
        data[[task$target_names]] = factor(data[[task$target_names]], levs)
      }

      ctrl = mlr3misc::invoke(mboost::boost_control, .args = pars_boost)

      # baselearner argument requires attached mboost package
      mlr3misc::with_package("mboost", {
        mlr3misc::invoke(mboost::gamboost,
          formula = f, data = data,
          control = ctrl, .args = pars_gamboost)
      })
    },

    .predict = function(task) {
      family = self$param_set$values$family
      newdata = task$data(cols = task$feature_names)

      if (self$predict_type == "prob" && (family == "AdaExp" ||
        family == "AUC")) {
        stopf("The selected family %s does not support probabilities", family)
      }

      if (self$predict_type == "response") {
        p = invoke(predict, self$model, newdata = newdata, type = "class")
        list(response = p)
      } else {
        p = mlr3misc::invoke(predict, self$model,
          newdata = newdata,
          type = "response")
        p = matrix(c(p, 1 - p), ncol = 2L, nrow = length(p))
        colnames(p) = task$class_names
        list(prob = p)
      }
    }
  )
)

.extralrns_dict$add("classif.gamboost", LearnerClassifGAMBoost)

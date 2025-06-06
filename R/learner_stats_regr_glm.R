#' @title Generalized Linear Regression
#' @author salauer
#' @name mlr_learners_regr.glm
#'
#' @description
#' Generalized linear model.
#' Calls [stats::glm()] from base package 'stats'.
#' For logistic regression please use \code{\link[mlr3learners]{mlr_learners_classif.log_reg}}.
#'
#' @templateVar id regr.glm
#' @template learner
#'
#' @section Initial parameter values:
#' - `type`
#'   - Actual default: `"link"`
#'   - Adjusted default: `"response"`
#'   - Reason for change: Response scale more natural for predictions.
#'
#' @section Offset:
#' If a `Task` has a column with the role `offset`, it will automatically be used during training.
#' The offset is incorporated through the formula interface to ensure compatibility with [stats::glm()].
#' We add it to the model formula as `offset(<column_name>)` and also include it in the training data.
#' During prediction, the default behavior is to use the offset column from the
#' test set (enabled by `use_pred_offset = TRUE`).
#' Otherwise, if the user sets `use_pred_offset = FALSE`, a zero offset is applied,
#' effectively disabling the offset adjustment during prediction.
#'
#' @references
#' `r format_bib("hosmer2013applied")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrGlm = R6Class("LearnerRegrGlm",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        singular.ok = p_lgl(default = TRUE, tags = "train"),
        x = p_lgl(default = FALSE, tags = "train"),
        y = p_lgl(default = TRUE, tags = "train"),
        model = p_lgl(default = TRUE, tags = "train"),
        etastart = p_uty(tags = "train"),
        mustart = p_uty(tags = "train"),
        start = p_uty(default = NULL, tags = "train"),
        family = p_fct(
          default = "gaussian",
          levels = c("gaussian", "poisson", "quasipoisson", "Gamma", "inverse.gaussian"),
          tags = "train"),
        na.action = p_fct(
          levels = c("na.omit", "na.pass", "na.fail", "na.exclude"),
          tags = c("train", "predict")),
        link = p_fct(
          levels = c(
            "logit", "probit", "cauchit", "cloglog", "identity",
            "log", "sqrt", "1/mu^2", "inverse"),
          tags = "train"),
        epsilon = p_dbl(default = 1e-8, tags = "train"),
        maxit = p_dbl(default = 25, tags = "train"),
        trace = p_lgl(default = FALSE, tags = "train"),
        dispersion = p_uty(default = NULL, tags = "predict"),
        type = p_fct(default = "link", levels = c("response", "link", "terms"),
                     tags = "predict"),
        use_pred_offset = p_lgl(default = TRUE, tags = "predict")
      )

      ps$set_values(family = "gaussian", type = "response", use_pred_offset = TRUE)

      super$initialize(
        id = "regr.glm",
        packages = c("mlr3extralearners", "stats"),
        feature_types = c("logical", "integer", "numeric", "character", "factor", "ordered"),
        predict_types = c("response", "se"),
        param_set = ps,
        properties = c("weights", "offset"),
        man = "mlr3extralearners::mlr_learners_regr.glm",
        label = "Generalized Linear Regression"
      )
    }
  ),

  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")
      pars$weights = private$.get_weights(task)

      family_args = pars[names(pars) == "link"]
      pars$link = NULL

      # add family to parameters
      family_fn = getFromNamespace(pars$family, ns = "stats")
      pars$family = invoke(family_fn, .args = family_args)

      form = task$formula()
      data = task$data()

      if ("offset" %in% task$properties) {
        # we use the formula interface as `offset` = ... doesn't work during prediction
        offset_colname = task$col_roles$offset
        # re-write formula
        formula_terms = c(task$feature_names, paste0("offset(", offset_colname, ")"))
        # needs both `env = ...` and `quote = "left"` args to work
        form = mlr3misc::formulate(lhs = task$target_names, rhs = formula_terms,
                                   env = environment(), quote = "left")
        # add offset column to the data
        data = data[, (offset_colname) := task$offset$offset][]
      }

      invoke(stats::glm, formula = form, data = data, .args = pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)

      if ("offset" %in% task$properties) {
        # add offset to the test data
        offset_colname = task$col_roles$offset
        newdata[, (offset_colname) := if (isTRUE(pars$use_pred_offset)) task$offset$offset else 0]
      }

      if (self$predict_type == "response") {
        response = invoke(stats::predict.glm,
          object = self$model,
          newdata = newdata,
          se.fit = FALSE,
          .args = pars)
        list(response = response)
      } else {
        pred = invoke(stats::predict.glm,
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

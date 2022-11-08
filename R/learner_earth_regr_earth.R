#' @title Implementation of Multivariate Adaptive Regression Splines
#' @author pkopper
#' @name mlr_learners_regr.earth
#'
#' @description
#' This is an alternative implementation of MARS (Multivariate Adaptive Regression Splines).
#' MARS is trademarked and thus not used as the name. The name "earth" stands for
#' "Enhanced Adaptive Regression Through Hinges".
#'
#' Calls [earth::earth()] from \CRANpkg{earth}.
#'
#' @template learner
#' @templateVar id regr.earth
#'
#' @details
#' Methods for variance estimations are not yet implemented.
#'
#' @references
#' `r format_bib("milborrow2014earth", "friedman1991multivariate")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrEarth = R6Class("LearnerRegrEarth",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        wp = p_uty(default = NULL, tags = "train"),
        offset = p_uty(default = NULL, tags = "train"),
        keepxy = p_lgl(default = FALSE, tags = "train"),
        trace = p_fct(default = "0", levels = c("0", ".3", ".5", "1", "2", "3", "4", "5"),
          tags = "train"),
        degree = p_int(default = 1L, lower = 1L, tags = "train"),
        penalty = p_dbl(default = 2L, lower = -1L, tags = "train"),
        nk = p_uty(default = NULL, tags = "train"),
        thresh = p_dbl(default = 0.001, tags = "train"),
        minspan = p_dbl(default = 0L, lower = 0L, tags = "train"),
        endspan = p_dbl(default = 0L, lower = 0L, tags = "train"),
        newvar.penalty = p_dbl(default = 0L, lower = 0L, tags = "train"),
        fast.k = p_int(default = 20L, lower = 0L, tags = "train"),
        fast.beta = p_int(lower = 0L, upper = 1L, default = 1L, tags = "train"),
        linpreds = p_uty(default = FALSE, tags = "train"),
        allowed = p_uty(tags = "train"),
        pmethod = p_fct(default = "backward", levels = c("backward", "none", "exhaustive",
          "forward", "seqrep", "cv"), tags = "train"),
        nprune = p_int(lower = 0L, tags = "train"),
        nfold = p_int(default = 0L, lower = 0L, tags = "train"),
        ncross = p_int(default = 1L, lower = 0L, tags = "train"),
        stratify = p_lgl(default = TRUE, tags = "train"),
        varmod.method = p_fct(default = "none", levels = c("none", "const", "lm", "rlm", "earth",
          "gam", "power", "power0", "x.lm", "x.rlm", "x.earth", "x.gam"),
        tags = "train"),
        varmod.exponent = p_dbl(default = 1, tags = "train"),
        varmod.conv = p_dbl(lower = 0, upper = 1, default = 1, tags = "train"),
        varmod.clamp = p_dbl(default = 0.1, tags = "train"),
        varmod.minspan = p_dbl(default = -3, tags = "train"),
        Scale.y = p_lgl(default = FALSE, tags = "train"),
        Adjust.endspan = p_dbl(default = 2, tags = "train"),
        Auto.linpreds = p_lgl(default = TRUE, tags = "train"),
        Force.weights = p_lgl(default = FALSE, tags = "train"),
        Use.beta.cache = p_lgl(default = TRUE, tags = "train"),
        Force.xtx.prune = p_lgl(default = FALSE, tags = "train"),
        Get.leverages = p_lgl(default = TRUE, tags = "train"),
        Exhaustive.tol = p_dbl(default = 1e-10, tags = "train")
      )

      ps$add_dep("varmod.minspan", "varmod.method", CondEqual$new("earth"))
      ps$add_dep("Exhaustive.tol", "pmethod", CondEqual$new("exhaustive"))

      super$initialize(
        id = "regr.earth",
        packages = c("mlr3extralearners", "earth"),
        feature_types = c("numeric", "factor", "integer"),
        predict_types = c("response", "se"),
        param_set = ps,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_regr.earth",
        label = "Multivariate Adaptive Regression Splines"
      )
    }
  ),

  private = list(
    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")

      if ("weights" %in% task$properties) {
        pars = insert_named(pars, list(weights = task$weights$weight))
      }

      if (self$predict_type == "se" &&
        (is.null(pars$varmod.method) || pars$varmod.method == "none")) {
        stop("'varmod.method' parameter must not be 'none' if predict_type is 'se'.")
      }

      invoke(
        earth::earth,
        x = task$data(cols = task$feature_names),
        y = task$data(cols = task$target_names),
        .args = pars
      )
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      response = invoke(
        predict, self$model,
        newdata = ordered_features(task, self),
        type = "response",
        .args = pars
      )

      se = NULL

      if (self$predict_type == "se") {
        se = invoke(
          predict, self$model,
          newdata = ordered_features(task, self),
          type = "response",
          interval = "se",
          .args = pars
        )
      }

      list(response = response, se = se)
    }
  )
)

.extralrns_dict$add("regr.earth", LearnerRegrEarth)

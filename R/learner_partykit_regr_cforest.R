#' @title Regression Conditional Random Forest Learner
#' @author sumny
#' @name mlr_learners_regr.cforest
#'
#' @template class_learner
#' @templateVar id regr.cforest
#' @templateVar caller cforest
#'
#' @references
#' Hothorn T, Zeileis A (2015).
#' “partykit: A Modular Toolkit for Recursive Partytioning in R.”
#' Journal of Machine Learning Research, 16(118), 3905-3909.
#' \url{http://jmlr.org/papers/v16/hothorn15a.html}
#'
#' Hothorn T, Hornik K, Zeileis A (2006).
#' “Unbiased Recursive Partitioning: A Conditional Inference Framework.”
#' Journal of Computational and Graphical Statistics, 15(3), 651–674.
#' \doi{10.1198/106186006x133933}
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerRegrCForest = R6Class("LearnerRegrCForest",
  inherit = LearnerRegr, public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps = ParamSet$new(list(
        # missing: weights (see bottom), subset, strata
        # (see FIXME: below), na.action, ytrafo
        ParamInt$new("ntree", default = 500L, lower = 1L, tags = "train"),
        # replace and fraction go in perturb (named list)
        ParamLgl$new("replace", default = FALSE, tags = "train"),
        ParamDbl$new("fraction", default = 0.632, lower = 0, upper = 1,
          tags = "train"),
        ParamInt$new("mtry", lower = 0L, special_vals = list(Inf),
          tags = "train"), # default actually "ceiling(sqrt(nvar))"
        ParamUty$new("applyfun", tags = c("train", "importance")),
        ParamInt$new("cores", default = NULL, special_vals = list(NULL),
          tags = c("train", "importance")),
        ParamLgl$new("trace", default = FALSE, tags = "train"),
        ParamUty$new("offset", tags = "train"),
        ParamUty$new("cluster", tags = "train"),
        ParamUty$new("scores", tags = "train"),

        # all in ctree_control(); missing: mtry, applyfun, cores
        # (see above, passed directly)
        ParamFct$new("teststat", default = "quadratic",
          levels = c("quadratic", "maximum"), tags = "train"),
        ParamFct$new("splitstat", default = "quadratic",
          levels = c("quadratic", "maximum"), tags = "train"),
        ParamLgl$new("splittest", default = FALSE, tags = "train"),
        ParamFct$new("testtype", default = "Univariate",
          levels = c("Bonferroni", "MonteCarlo", "Univariate", "Teststatistic"),
          tags = "train"),
        ParamUty$new("nmax", tags = "train"),

        # pargs arguments as a list for GenzBretz() within ctree_control:
        # maxpts, abseps, releps
        ParamUty$new("pargs", tags = "train"),

        ParamDbl$new("alpha", default = 0.05, lower = 0, upper = 1,
          tags = "train"),
        ParamDbl$new("mincriterion", default = 0, lower = 0, upper = 1,
          tags = "train"),
        ParamDbl$new("logmincriterion", default = 0, tags = "train"),
        ParamInt$new("minsplit", lower = 1L, default = 20L, tags = "train"),
        ParamInt$new("minbucket", lower = 1L, default = 7L, tags = "train"),
        ParamDbl$new("minprob", default = 0.01, lower = 0, upper = 1,
          tags = "train"),
        ParamLgl$new("stump", default = FALSE, tags = "train"),
        ParamLgl$new("lookahead", default = FALSE, tags = "train"),
        ParamLgl$new("MIA", default = FALSE, tags = "train"),
        ParamInt$new("nresample", default = 9999L, lower = 1L, tags = "train"),
        ParamDbl$new("tol", default = sqrt(.Machine$double.eps), lower = 0,
          tags = "train"),
        ParamInt$new("maxsurrogate", default = 0L, lower = 0L, tags = "train"),
        ParamLgl$new("numsurrogate", default = FALSE, tags = "train"),
        ParamInt$new("maxdepth", default = Inf, lower = 0L,
          special_vals = list(Inf), tags = "train"),
        ParamLgl$new("multiway", default = FALSE, tags = "train"),
        ParamInt$new("splittry", default = 2L, lower = 0L, tags = "train"),
        ParamLgl$new("intersplit", default = FALSE, tags = "train"),
        ParamLgl$new("majority", default = FALSE, tags = "train"),
        ParamLgl$new("caseweights", default = TRUE, tags = "train"),
        ParamLgl$new("saveinfo", default = FALSE, tags = "train"),
        ParamLgl$new("update", default = FALSE, tags = "train"),
        ParamFct$new("splitflavour", default = "ctree",
          levels = c("ctree", "exhaustive"), tags = "train"),

        # predict; missing FUN and simplify (not needed here)
        ParamLgl$new("OOB", default = FALSE, tags = c("predict", "importance")),
        ParamLgl$new("simplify", default = TRUE, tags = "predict"),
        ParamLgl$new("scale", default = TRUE, tags = "predict"),

        # importance; OOB see predict, applyfun, cores see train
        ParamInt$new("nperm", default = 1L, lower = 0L,
          tags = c("train", "importance")),
        ParamFct$new("risk", default = "loglik",
          levels = c("loglik", "misclassification"),
          tags = c("train", "importance")),
        ParamLgl$new("conditional", default = FALSE,
          tags = c("train", "importance")),
        ParamDbl$new("threshold", default = 0.2,
          tags = c("train", "importance"))
      )
      )

      ps$add_dep("nresample", on = "testtype",
        cond = CondEqual$new("MonteCarlo"))
      ps$add_dep("nperm", on = "conditional", cond = CondEqual$new(TRUE))
      ps$add_dep("threshold", on = "conditional", cond = CondEqual$new(TRUE))

      # set the cforest specific ctree_control parameters
      ps$values$teststat = "quadratic"
      ps$values$testtype = "Univariate"
      ps$values$mincriterion = 0
      ps$values$saveinfo = FALSE

      super$initialize(
        id = "regr.cforest",
        param_set = ps,
        # can also predict weights, node, but not really useful here
        predict_types = "response",
        feature_types = c("integer", "numeric", "factor", "ordered"),
        # FIXME: importance after bug fixes, strata?
        properties = c("weights", "oob_error"),
        packages = c("partykit", "sandwich", "coin"),
        man = "mlr3extralearners::mlr_learners_regr.cforest"
      )
    },
    # #' @description
    # #' The importance scores are calculated using `partykit::varimp()`.
    # #'
    # #' @return Named `numeric()`.
    # # FIXME: needs fix in partykit, WIP
    # importance = function() {
    #  if (is.null(self$model)) {
    #    stopf("No model stored")
    #  }
    #  pars = self$param_set$get_values(tags = "importance")
    #  sort(mlr3misc::invoke(partykit::varimp, object = self$model,
    #    .args = pars), decreasing = TRUE)
    # },

    #' @description
    #' The out-of-bag error, calculated using the OOB predictions from
    #' `partykit`.
    #'
    #' @return `numeric(1)`.
    oob_error = function() {
      preds = mlr3misc::invoke(predict, object = self$model, newdata = NULL,
        type = "response", OOB = TRUE, FUN = NULL, simplify = TRUE,
        scale = TRUE)
      mean((self$model$data[[as.character(attr(self$model$data,
        which = "terms")[[2L]])]] - preds)^2L)
    }
  ),

  private = list(
    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")
      pars_control = pars[which(names(pars) %in%
        setdiff(formalArgs(partykit::ctree_control),
          c("mtry", "applyfun", "cores")
        ))] # see ctree_control
      pars = pars[names(pars) %nin%
        c("replace", "fraction", names(pars_control))]
      control = mlr3misc::invoke(partykit::ctree_control, .args = pars_control)
      # perturb parameters need special handling; FIXME: easier way?
      perturb = list(replace = FALSE, fraction = 0.632)
      if (!is.null(self$param_set$values$replace)) {
        perturb$replace = self$param_set$values$replace
      }
      if (!is.null(self$param_set$values$fraction)) {
        perturb$fraction = self$param_set$values$fraction
      }

      mlr3misc::invoke(partykit::cforest,
        formula = task$formula(),
        data = task$data(),
        weights = task$weights$weight, # weights are handled here
        # FIXME: strata handling
        control = control,
        perturb = perturb,
        .args = pars
      )
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = task$data(cols = task$feature_names)
      preds = mlr3misc::invoke(predict, object = self$model, newdata = newdata,
        type = self$predict_type, .args = pars)
      list(response = preds)
    }
  )
)

.extralrns_dict$add("regr.cforest", LearnerRegrCForest)

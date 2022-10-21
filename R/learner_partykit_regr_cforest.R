#' @title Regression Conditional Random Forest Learner
#' @author sumny
#' @name mlr_learners_regr.cforest
#'
#' @description
#' A random forest based on conditional inference trees ([ctree][partykit::ctree]).
#' Calls [partykit::cforest()] from \CRANpkg{partykit}.
#'
#' @template learner
#' @templateVar id regr.cforest
#'
#' @inheritSection mlr_learners_classif.cforest Initial parameter values
#'
#' @references
#' `r format_bib("hothorn_2015", "hothorn_2006")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerRegrCForest = R6Class("LearnerRegrCForest",
  inherit = LearnerRegr, public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps = ps(
        # missing: weights (see bottom), subset, strata
        # (see FIXME: below), na.action, ytrafo
        ntree = p_int(default = 500L, lower = 1L, tags = "train"),
        # replace and fraction go in perturb (named list)
        replace = p_lgl(default = FALSE, tags = "train"),
        fraction = p_dbl(default = 0.632, lower = 0, upper = 1,
          tags = "train"),
        mtry = p_int(lower = 0L, special_vals = list(Inf),
          tags = "train"), # default actually "ceiling(sqrt(nvar))"
        mtryratio = p_dbl(lower = 0, upper = 1, tags = "train"),
        applyfun = p_uty(tags = c("train", "importance")),
        cores = p_int(default = NULL, special_vals = list(NULL),
          tags = c("train", "importance", "threads")),
        trace = p_lgl(default = FALSE, tags = "train"),
        offset = p_uty(tags = "train"),
        cluster = p_uty(tags = "train"),
        scores = p_uty(tags = "train"),

        # all in ctree_control(); missing: mtry, applyfun, cores
        # (see above, passed directly)
        teststat = p_fct(default = "quadratic",
          levels = c("quadratic", "maximum"), tags = "train"),
        splitstat = p_fct(default = "quadratic",
          levels = c("quadratic", "maximum"), tags = "train"),
        splittest = p_lgl(default = FALSE, tags = "train"),
        testtype = p_fct(default = "Univariate",
          levels = c("Bonferroni", "MonteCarlo", "Univariate", "Teststatistic"),
          tags = "train"),
        nmax = p_uty(tags = "train"),

        # pargs arguments as a list for GenzBretz() within ctree_control:
        # maxpts, abseps, releps
        pargs = p_uty(tags = "train"),

        alpha = p_dbl(default = 0.05, lower = 0, upper = 1,
          tags = "train"),
        mincriterion = p_dbl(default = 0, lower = 0, upper = 1,
          tags = "train"),
        logmincriterion = p_dbl(default = 0, tags = "train"),
        minsplit = p_int(lower = 1L, default = 20L, tags = "train"),
        minbucket = p_int(lower = 1L, default = 7L, tags = "train"),
        minprob = p_dbl(default = 0.01, lower = 0, upper = 1,
          tags = "train"),
        stump = p_lgl(default = FALSE, tags = "train"),
        lookahead = p_lgl(default = FALSE, tags = "train"),
        MIA = p_lgl(default = FALSE, tags = "train"),
        maxvar = p_int(lower = 1L, tags = "train"),
        nresample = p_int(default = 9999L, lower = 1L, tags = "train"),
        tol = p_dbl(default = sqrt(.Machine$double.eps), lower = 0,
          tags = "train"),
        maxsurrogate = p_int(default = 0L, lower = 0L, tags = "train"),
        numsurrogate = p_lgl(default = FALSE, tags = "train"),
        maxdepth = p_int(default = Inf, lower = 0L,
          special_vals = list(Inf), tags = "train"),
        multiway = p_lgl(default = FALSE, tags = "train"),
        splittry = p_int(default = 2L, lower = 0L, tags = "train"),
        intersplit = p_lgl(default = FALSE, tags = "train"),
        majority = p_lgl(default = FALSE, tags = "train"),
        caseweights = p_lgl(default = TRUE, tags = "train"),
        saveinfo = p_lgl(default = FALSE, tags = "train"),
        update = p_lgl(default = FALSE, tags = "train"),
        splitflavour = p_fct(default = "ctree",
          levels = c("ctree", "exhaustive"), tags = "train"),

        # predict; missing FUN and simplify (not needed here)
        OOB = p_lgl(default = FALSE, tags = c("predict", "importance")),
        simplify = p_lgl(default = TRUE, tags = "predict"),
        scale = p_lgl(default = TRUE, tags = "predict"),

        # importance; OOB see predict, applyfun, cores see train
        nperm = p_int(default = 1L, lower = 0L,
          tags = c("train", "importance")),
        risk = p_fct(default = "loglik",
          levels = c("loglik", "misclassification"),
          tags = c("train", "importance")),
        conditional = p_lgl(default = FALSE,
          tags = c("train", "importance")),
        threshold = p_dbl(default = 0.2,
          tags = c("train", "importance"))
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
        packages = c("mlr3extralearners", "partykit", "sandwich", "coin"),
        man = "mlr3extralearners::mlr_learners_regr.cforest",
        label = "Conditional Random Forest"
      )
    },
    # #' @description
    # #' The importance scores are calculated using `partykit::varimp()`.
    # #'
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
      preds = invoke(predict, object = self$model, newdata = NULL,
        type = "response", OOB = TRUE, FUN = NULL, simplify = TRUE,
        scale = TRUE)
      mean((self$model$data[[as.character(attr(self$model$data,
        which = "terms")[[2L]])]] - preds)^2L)
    }
  ),

  private = list(
    .train = function(task) {
      train_cforest(self, task)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      preds = invoke(predict, object = self$model, newdata = newdata,
        type = self$predict_type, .args = pars)
      list(response = preds)
    }
  )
)

.extralrns_dict$add("regr.cforest", LearnerRegrCForest)

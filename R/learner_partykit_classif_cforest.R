#' @title Classification Conditional Random Forest Learner
#' @author sumny
#' @name mlr_learners_classif.cforest
#'
#' @template class_learner
#' @templateVar id classif.cforest
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
LearnerClassifCForest = R6Class("LearnerClassifCForest",
  inherit = LearnerClassif, public = list(

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
        applyfun = p_uty(tags = c("train", "importance")),
        cores = p_int(default = NULL, special_vals = list(NULL),
          tags = c("train", "importance")),
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
        maxvar = p_int(lower = 1L, tags = "train"),

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
        id = "classif.cforest",
        param_set = ps,
        # can also predict weights, node, but not really useful here
        predict_types = c("response", "prob"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        # FIXME: importance after bug fixes, strata?
        properties = c("weights", "twoclass", "multiclass", "oob_error"),
        packages = c("partykit", "sandwich", "coin"),
        man = "mlr3extralearners::mlr_learners_classif.cforest"
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
      confusion = table(self$model$data[[as.character(attr(self$model$data,
        which = "terms")[[2L]])]], preds)
      N = sum(confusion)
      diag(confusion) = 0
      sum(confusion) / N
    }
  ),

  private = list(
    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")
      pars_control = pars[which(names(pars) %in%
        setdiff(methods::formalArgs(partykit::ctree_control),
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
      if (self$predict_type == "response") {
        list(response = preds)
      } else {
        list(prob = preds)
      }
    }
  )
)

.extralrns_dict$add("classif.cforest", LearnerClassifCForest)

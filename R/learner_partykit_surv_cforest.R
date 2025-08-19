#' @title Survival Conditional Random Forest Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.cforest
#'
#' @description
#' A random forest based on conditional inference trees ([ctree][partykit::ctree]).
#' Calls [partykit::cforest()] from \CRANpkg{partykit}.
#'
#' @section Prediction types:
#' This learner returns two prediction types:
#' 1. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' Calculated using the internal [partykit::predict.cforest()] function.
#' 2. `crank`: the expected mortality using [mlr3proba::.surv_return()].
#'
#' @template learner
#' @templateVar id surv.cforest
#'
#' @inheritSection mlr_learners_classif.cforest Custom mlr3 parameters
#'
#' @section Initial parameter values:
#' * `cores`: This parameter is initialized to 1 (default is `NULL`) to avoid
#' threading conflicts with \CRANpkg{future}.
#'
#' @references
#' `r format_bib("hothorn_2015", "hothorn_2006")`
#'
#' @export
#' @template seealso_learner
#' @examplesIf learner_is_runnable("surv.cforest")
#' task = tsk("rats")
#' learner = lrn("surv.cforest", ntree = 50)
#' splits = partition(task)
#' learner$train(task, splits$train)
#' pred = learner$predict(task, splits$test)
LearnerSurvCForest = R6Class("LearnerSurvCForest",
  inherit = mlr3proba::LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        ntree = p_int(default = 500L, lower = 1L, tags = "train"),
        replace = p_lgl(default = FALSE, tags = "train"),
        fraction = p_dbl(default = 0.632, lower = 0, upper = 1, tags = "train"),
        # mtry default is actually `ceiling(sqrt(nvar))`
        mtry = p_int(lower = 0L, special_vals = list(Inf), tags = "train"),
        mtryratio = p_dbl(lower = 0, upper = 1, tags = "train"),
        applyfun = p_uty(tags = c("train", "importance")),
        cores = p_int(default = NULL, special_vals = list(NULL), tags = c("train", "importance", "threads")),
        trace = p_lgl(default = FALSE, tags = "train"),
        cluster = p_uty(tags = "train"),
        na.action = p_uty(default = "stats::na.pass", tags = "train"),
        scores = p_uty(tags = "train"),

        teststat = p_fct(default = "quadratic",
                         levels = c("quadratic", "maximum"), tags = "train"),
        splitstat = p_fct(default = "quadratic",
                          levels = c("quadratic", "maximum"), tags = "train"),
        splittest = p_lgl(default = FALSE, tags = "train"),
        testtype = p_fct(default = "Univariate",
                         levels = c("Bonferroni", "MonteCarlo", "Univariate", "Teststatistic"),
                         tags = "train"),
        nmax = p_uty(tags = "train"),
        alpha = p_dbl(default = 0.05, lower = 0, upper = 1, tags = "train"),
        mincriterion = p_dbl(default = 0.95, lower = 0, upper = 1, tags = "train"),
        logmincriterion = p_dbl(default = log(0.95), tags = "train"),
        minsplit = p_int(lower = 1L, default = 20L, tags = "train"),
        minbucket = p_int(lower = 1L, default = 7L, tags = "train"),
        minprob = p_dbl(default = 0.01, lower = 0, upper = 1, tags = "train"),
        stump = p_lgl(default = FALSE, tags = "train"),
        lookahead = p_lgl(default = FALSE, tags = "train"),
        MIA = p_lgl(default = FALSE, tags = "train"),
        nresample = p_int(default = 9999L, lower = 1L, tags = "train"),
        tol = p_dbl(default = sqrt(.Machine$double.eps), lower = 0, tags = "train"),
        maxsurrogate = p_int(default = 0L, lower = 0L, tags = "train"),
        numsurrogate = p_lgl(default = FALSE, tags = "train"),
        maxdepth = p_int(default = Inf, lower = 0L, special_vals = list(Inf), tags = "train"),
        multiway = p_lgl(default = FALSE, tags = "train"),
        splittry = p_int(default = 2L, lower = 0L, tags = "train"),
        intersplit = p_lgl(default = FALSE, tags = "train"),
        majority = p_lgl(default = FALSE, tags = "train"),
        caseweights = p_lgl(default = TRUE, tags = "train"),
        saveinfo = p_lgl(default = FALSE, tags = "train"),
        update = p_lgl(default = FALSE, tags = "train"),
        splitflavour = p_fct(default = "ctree", levels = c("ctree", "exhaustive"), tags = "train"),
        maxvar = p_int(lower = 1L, tags = "train"),

        # predict; missing FUN and simplify (not needed here)
        OOB = p_lgl(default = FALSE, tags = c("predict", "importance")),
        simplify = p_lgl(default = TRUE, tags = "predict"),
        scale = p_lgl(default = TRUE, tags = "predict"),

        # importance; OOB see predict, applyfun, cores see train
        # nperm = p_int(default = 1L, lower = 0L, tags = c("train", "importance")),
        # risk = p_fct(default = "loglik", levels = c("loglik", "misclassification"),
        #   tags = c("train", "importance")),
        # conditional = p_lgl(default = FALSE, tags = c("train", "importance")),
        # threshold = p_dbl(default = 0.2, tags = c("train", "importance")),

        maxpts = p_int(default = 25000L, tags = "train"),
        abseps = p_dbl(default = 0.001, lower = 0, tags = "train"),
        releps = p_dbl(default = 0, lower = 0, tags = "train")
      )

      ps$add_dep("nresample", on = "testtype", cond = CondEqual$new("MonteCarlo"))
      # ps$add_dep("nperm", on = "conditional", cond = CondEqual$new(TRUE))
      # ps$add_dep("threshold", on = "conditional", cond = CondEqual$new(TRUE))

      # set the cforest specific ctree_control parameters
      ps$values$teststat = "quadratic"
      ps$values$testtype = "Univariate"
      ps$values$mincriterion = 0
      ps$values$saveinfo = FALSE

      # set cores to 1
      ps$values$cores = 1

      super$initialize(
        id = "surv.cforest",
        param_set = ps,
        # can also predict weights, node, but not really useful here
        predict_types = c("crank", "distr"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        properties = c("weights"),
        packages = c("mlr3extralearners", "partykit", "sandwich", "coin"),
        man = "mlr3extralearners::mlr_learners_surv.cforest",
        label = "Conditional Random Forest"
      )
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
        type = "prob", .args = pars)

      times = lapply(preds, function(p) p$time)
      utimes = sort(unique(unlist(times)))

      # to use non-exported function from `distr6`
      extend_times = getFromNamespace("C_Vec_WeightedDiscreteCdf", ns = "distr6")
      res = lapply(preds, function(p) {
        # p is a `survfit` object
        cdf = matrix(data = 1 - p$surv, ncol = 1) # 1 observation (column), rows => times
        # extend cdf to 'utimes', return survival
        extend_times(utimes, p$time, cdf = cdf, FALSE, FALSE)
      })
      surv = do.call(cbind, res) # rows => times, columns => obs

      mlr3proba::.surv_return(times = utimes, surv = t(surv))
    }
  )
)

.extralrns_dict$add("surv.cforest", LearnerSurvCForest)

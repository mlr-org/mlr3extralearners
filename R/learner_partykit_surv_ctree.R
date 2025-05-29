#' @title Survival Conditional Inference Tree Learner
#' @author adibender
#' @name mlr_learners_surv.ctree
#'
#' @description
#' Survival Partition Tree where a significance test is used to determine the univariate splits.
#' Calls [partykit::ctree()] from \CRANpkg{partykit}.
#'
#' @section Prediction types:
#' This learner returns two prediction types:
#' 1. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' Calculated using the internal [partykit::predict.party()] function.
#' 2. `crank`: the expected mortality using [mlr3proba::.surv_return()].
#'
#' @template learner
#' @templateVar id surv.ctree
#'
#' @references
#' `r format_bib("hothorn_2015", "hothorn_2006")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerSurvCTree = R6Class("LearnerSurvCTree",
  inherit = mlr3proba::LearnerSurv,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        teststat = p_fct(levels = c("quadratic", "maximum"),
          default = "quadratic", tags = "train"),
        splitstat = p_fct(levels = c("quadratic", "maximum"),
          default = "quadratic", tags = "train"),
        splittest = p_lgl(default = FALSE, tags = "train"),
        testtype = p_fct(levels = c("Bonferroni", "MonteCarlo",
          "Univariate", "Teststatistic"), default = "Bonferroni",
        tags = "train"),
        nmax = p_uty(tags = "train"),
        alpha = p_dbl(lower = 0, upper = 1, default = 0.05,
          tags = "train"),
        mincriterion = p_dbl(lower = 0, upper = 1, default = 0.95,
          tags = "train"),
        logmincriterion = p_dbl(tags = "train"),
        minsplit = p_int(lower = 1L, default = 20L, tags = "train"),
        minbucket = p_int(lower = 1L, default = 7L, tags = "train"),
        minprob = p_dbl(lower = 0, default = 0.01, tags = "train"),
        stump = p_lgl(default = FALSE, tags = "train"),
        lookahead = p_lgl(default = FALSE, tags = "train"),
        MIA = p_lgl(default = FALSE, tags = "train"),
        nresample = p_int(lower = 1L, default = 9999L,
          tags = "train"),
        tol = p_dbl(lower = 0, tags = "train"),
        maxsurrogate = p_int(lower = 0L, default = 0L,
          tags = "train"),
        numsurrogate = p_lgl(default = FALSE, tags = "train"),
        mtry = p_int(lower = 0L, special_vals = list(Inf),
          default = Inf, tags = "train"),
        maxdepth = p_int(lower = 0L, special_vals = list(Inf),
          default = Inf, tags = "train"),
        maxvar = p_int(lower = 1L, tags = "train"),
        multiway = p_lgl(default = FALSE, tags = "train"),
        splittry = p_int(lower = 0L, default = 2L, tags = "train"),
        intersplit = p_lgl(default = FALSE, tags = "train"),
        majority = p_lgl(default = FALSE, tags = "train"),
        caseweights = p_lgl(default = FALSE, tags = "train"),
        applyfun = p_uty(tags = "train"),
        cores = p_int(special_vals = list(NULL), default = NULL,
          tags = c("train", "threads")),
        saveinfo = p_lgl(default = TRUE, tags = "train"),
        update = p_lgl(default = FALSE, tags = "train"),
        splitflavour = p_fct(default = "ctree", # goes into control
          levels = c("ctree", "exhaustive"), tags = "train"),
        cluster = p_uty(tags = "train"),
        scores = p_uty(tags = "train"),
        doFit = p_lgl(default = TRUE, tags = "train"),
        maxpts = p_int(default = 25000L, tags = "train"),
        abseps = p_dbl(default = 0.001, lower = 0, tags = "train"),
        releps = p_dbl(default = 0, lower = 0, tags = "train")
      )

      ps$add_dep("nresample", "testtype", CondEqual$new("MonteCarlo"))

      super$initialize(
        id = "surv.ctree",
        packages = c("mlr3extralearners", "partykit", "coin", "sandwich"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("crank", "distr"),
        param_set = ps,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_surv.ctree",
        label = "Conditional Inference Tree"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      pars_pargs = pars[names(pars) %in% formalArgs(mvtnorm::GenzBretz)]
      pars = pars[names(pars) %nin% formalArgs(mvtnorm::GenzBretz)]
      pars$weights = private$.get_weights(task)
      pars$pargs = invoke(mvtnorm::GenzBretz, pars_pargs)

      invoke(partykit::ctree, formula = task$formula(),
        data = task$data(), .args = pars)
    },

    .predict = function(task) {
      newdata = ordered_features(task, self)
      pars = self$param_set$get_values(tags = "predict")
      preds = invoke(predict, self$model, type = "prob", newdata = newdata,
        .args = pars
      )

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

.extralrns_dict$add("surv.ctree", LearnerSurvCTree)

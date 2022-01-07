#' @title Survival Conditional Random Forest Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.cforest
#'
#' @template class_learner
#' @templateVar id surv.cforest
#' @templateVar caller cforest
#'
#' @inheritSection mlr_learners_classif.cforest Custom mlr3 defaults
#'
#' @references
#' `r format_bib(c("hothorn_2015", "hothorn_2006"))
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerSurvCForest = R6Class("LearnerSurvCForest",
  inherit = mlr3proba::LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps = ps(
        ntree = p_int(default = 500L, lower = 1L, tags = "train"),
        replace = p_lgl(default = FALSE, tags = c("train", "perturb")),
        fraction = p_dbl(default = 0.632, lower = 0, upper = 1,
          tags = c("train", "perturb")),
        mtry = p_int(lower = 0L, special_vals = list(Inf),
          tags = "train"), # default actually "ceiling(sqrt(nvar))"
        mtryratio = p_dbl(lower = 0, upper = 1, tags = "train"),
        applyfun = p_uty(tags = c("train", "importance")),
        cores = p_int(default = NULL, special_vals = list(NULL),
          tags = c("train", "importance")),
        trace = p_lgl(default = FALSE, tags = "train"),
        offset = p_uty(tags = "train"),
        cluster = p_uty(tags = "train"),
        na.action = p_uty(default = stats::na.pass, tags = "train"),
        scores = p_uty(tags = "train"),

        teststat = p_fct(default = "quadratic",
          levels = c("quadratic", "maximum"), tags = c("train", "ctrl")),
        splitstat = p_fct(default = "quadratic",
          levels = c("quadratic", "maximum"), tags = c("train", "ctrl")),
        splittest = p_lgl(default = FALSE, tags = c("train", "ctrl")),
        testtype = p_fct(default = "Univariate",
          levels = c("Bonferroni", "MonteCarlo", "Univariate", "Teststatistic"),
          tags = c("train", "ctrl")),
        nmax = p_uty(tags = c("train", "ctrl")),
        alpha = p_dbl(default = 0.05, lower = 0, upper = 1,
          tags = c("train", "ctrl")),
        mincriterion = p_dbl(default = 0.95, lower = 0, upper = 1,
          tags = c("train", "ctrl")),
        logmincriterion = p_dbl(default = log(0.95), tags = c("train", "ctrl")),
        minsplit = p_int(lower = 1L, default = 20L, tags = c("train", "ctrl")),
        minbucket = p_int(lower = 1L, default = 7L, tags = c("train", "ctrl")),
        minprob = p_dbl(default = 0.01, lower = 0, upper = 1,
          tags = c("train", "ctrl")),
        stump = p_lgl(default = FALSE, tags = c("train", "ctrl")),
        lookahead = p_lgl(default = FALSE, tags = c("train", "ctrl")),
        MIA = p_lgl(default = FALSE, tags = c("train", "ctrl")),
        nresample = p_int(default = 9999L, lower = 1L, tags = c("train", "ctrl")),
        tol = p_dbl(default = sqrt(.Machine$double.eps), lower = 0,
          tags = c("train", "ctrl")),
        maxsurrogate = p_int(default = 0L, lower = 0L, tags = c("train", "ctrl")),
        numsurrogate = p_lgl(default = FALSE, tags = c("train", "ctrl")),
        maxdepth = p_int(default = Inf, lower = 0L,
          special_vals = list(Inf), tags = c("train", "ctrl")),
        multiway = p_lgl(default = FALSE, tags = c("train", "ctrl")),
        splittry = p_int(default = 2L, lower = 0L, tags = c("train", "ctrl")),
        intersplit = p_lgl(default = FALSE, tags = c("train", "ctrl")),
        majority = p_lgl(default = FALSE, tags = c("train", "ctrl")),
        caseweights = p_lgl(default = TRUE, tags = c("train", "ctrl")),
        saveinfo = p_lgl(default = FALSE, tags = c("train", "ctrl")),
        update = p_lgl(default = FALSE, tags = c("train", "ctrl")),
        splitflavour = p_fct(default = "ctree",
          levels = c("ctree", "exhaustive"), tags = c("train", "ctrl")),
        maxvar = p_int(lower = 1L, tags = c("train", "ctrl")),

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

        maxpts = p_int(default = 25000L, tags = c("train", "pargs")),
        abseps = p_dbl(default = 0.001, lower = 0, tags = c("train", "pargs")),
        releps = p_dbl(default = 0, lower = 0, tags = c("train", "pargs"))
      )

      ps$add_dep("nresample", on = "testtype",
        cond = CondEqual$new("MonteCarlo"))
      # ps$add_dep("nperm", on = "conditional", cond = CondEqual$new(TRUE))
      # ps$add_dep("threshold", on = "conditional", cond = CondEqual$new(TRUE))

      # set the cforest specific ctree_control parameters
      ps$values$teststat = "quadratic"
      ps$values$testtype = "Univariate"
      ps$values$mincriterion = 0
      ps$values$saveinfo = FALSE

      super$initialize(
        id = "surv.cforest",
        param_set = ps,
        # can also predict weights, node, but not really useful here
        predict_types = c("distr", "crank"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        properties = c("weights"),
        packages = c("mlr3extralearners", "partykit", "sandwich", "coin"),
        man = "mlr3extralearners::mlr_learners_surv.cforest"
      )
    }
  ),

  private = list(
    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")
      pars = convert_ratio(pars, "mtry", "mtryratio", length(task$feature_names))

      if ("weights" %in% task$properties) {
        pars$weights = task$weights$weight
      }

      pars_perturb = self$param_set$get_values(tags = "perturb")
      perturb = list(
        replace = ifelse(is.null(pars_perturb$replace), FALSE, pars_perturb$replace),
        fraction = ifelse(is.null(pars_perturb$fraction), 0.632, pars_perturb$fraction)
      )

      pars_ctrl = self$param_set$get_values(tags = "ctrl")
      control = mlr3misc::invoke(partykit::ctree_control, .args = pars_ctrl)

      pars_pargs = self$param_set$get_values(tags = "pargs")
      control$pargs = mlr3misc::invoke(mvtnorm::GenzBretz, pars_pargs)

      pars = pars[!(names(pars) %in% c(names(pars_perturb), names(pars_ctrl), names(pars_pargs)))]


      mlr3misc::invoke(partykit::cforest,
        formula = task$formula(),
        data = task$data(),
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
        type = "prob", .args = pars)

      # Define WeightedDiscrete distr6 distribution from the survival function
      x = lapply(preds, function(z) {
        time = c(0, z$time, max(z$time) + 1e-3)
        surv = c(1, z$surv, 0)
        data.frame(x = time, cdf = 1 - surv)
      })
      distr = distr6::VectorDistribution$new(
        distribution = "WeightedDiscrete",
        params       = x,
        decorators   = c("CoreStatistics", "ExoticStatistics"))

      # Define crank as the mean of the survival distribution
      crank = -vapply(x, function(z) sum(z[, 1] * c(z[, 2][1], diff(z[, 2]))), numeric(1))

      list(crank = crank, distr = distr)
    }
  )
)

.extralrns_dict$add("surv.cforest", LearnerSurvCForest)

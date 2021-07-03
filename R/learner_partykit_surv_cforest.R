#' @title Survival Conditional Random Forest Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.cforest
#'
#' @template class_learner
#' @templateVar id surv.cforest
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
LearnerSurvCForest = R6Class("LearnerSurvCForest",
  inherit = mlr3proba::LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps = ps(list(
        p_int("ntree", default = 500L, lower = 1L, tags = "train"),
        p_lgl("replace", default = FALSE, tags = c("train", "perturb")),
        p_dbl("fraction", default = 0.632, lower = 0, upper = 1,
          tags = c("train", "perturb")),
        p_int("mtry", lower = 0L, special_vals = list(Inf),
          tags = "train"), # default actually "ceiling(sqrt(nvar))"
        p_uty("applyfun", tags = c("train", "importance")),
        p_int("cores", default = NULL, special_vals = list(NULL),
          tags = c("train", "importance")),
        p_lgl("trace", default = FALSE, tags = "train"),
        p_uty("offset", tags = "train"),
        p_uty("cluster", tags = "train"),
        p_uty("na.action", default = stats::na.pass, tags = "train"),
        p_uty("scores", tags = "train"),

        p_fct("teststat", default = "quadratic",
          levels = c("quadratic", "maximum"), tags = c("train", "ctrl")),
        p_fct("splitstat", default = "quadratic",
          levels = c("quadratic", "maximum"), tags = c("train", "ctrl")),
        p_lgl("splittest", default = FALSE, tags = c("train", "ctrl")),
        p_fct("testtype", default = "Univariate",
          levels = c("Bonferroni", "MonteCarlo", "Univariate", "Teststatistic"),
          tags = c("train", "ctrl")),
        p_uty("nmax", tags = c("train", "ctrl")),
        p_dbl("alpha", default = 0.05, lower = 0, upper = 1,
          tags = c("train", "ctrl")),
        p_dbl("mincriterion", default = 0.95, lower = 0, upper = 1,
          tags = c("train", "ctrl")),
        p_dbl("logmincriterion", default = log(0.95), tags = c("train", "ctrl")),
        p_int("minsplit", lower = 1L, default = 20L, tags = c("train", "ctrl")),
        p_int("minbucket", lower = 1L, default = 7L, tags = c("train", "ctrl")),
        p_dbl("minprob", default = 0.01, lower = 0, upper = 1,
          tags = c("train", "ctrl")),
        p_lgl("stump", default = FALSE, tags = c("train", "ctrl")),
        p_lgl("lookahead", default = FALSE, tags = c("train", "ctrl")),
        p_lgl("MIA", default = FALSE, tags = c("train", "ctrl")),
        p_int("nresample", default = 9999L, lower = 1L, tags = c("train", "ctrl")),
        p_dbl("tol", default = sqrt(.Machine$double.eps), lower = 0,
          tags = c("train", "ctrl")),
        p_int("maxsurrogate", default = 0L, lower = 0L, tags = c("train", "ctrl")),
        p_lgl("numsurrogate", default = FALSE, tags = c("train", "ctrl")),
        p_int("maxdepth", default = Inf, lower = 0L,
          special_vals = list(Inf), tags = c("train", "ctrl")),
        p_lgl("multiway", default = FALSE, tags = c("train", "ctrl")),
        p_int("splittry", default = 2L, lower = 0L, tags = c("train", "ctrl")),
        p_lgl("intersplit", default = FALSE, tags = c("train", "ctrl")),
        p_lgl("majority", default = FALSE, tags = c("train", "ctrl")),
        p_lgl("caseweights", default = TRUE, tags = c("train", "ctrl")),
        p_lgl("saveinfo", default = FALSE, tags = c("train", "ctrl")),
        p_lgl("update", default = FALSE, tags = c("train", "ctrl")),
        p_fct("splitflavour", default = "ctree",
          levels = c("ctree", "exhaustive"), tags = c("train", "ctrl")),
        p_int("maxvar", lower = 1L, tags = c("train", "ctrl")),

        # predict; missing FUN and simplify (not needed here)
        p_lgl("OOB", default = FALSE, tags = c("predict", "importance")),
        p_lgl("simplify", default = TRUE, tags = "predict"),
        p_lgl("scale", default = TRUE, tags = "predict"),

        # importance; OOB see predict, applyfun, cores see train
        p_int("nperm", default = 1L, lower = 0L, tags = c("train", "importance")),
        p_fct("risk", default = "loglik", levels = c("loglik", "misclassification"),
          tags = c("train", "importance")),
        p_lgl("conditional", default = FALSE, tags = c("train", "importance")),
        p_dbl("threshold", default = 0.2, tags = c("train", "importance")),

        p_int("maxpts", default = 25000L, tags = c("train", "pargs")),
        p_dbl("abseps", default = 0.001, lower = 0, tags = c("train", "pargs")),
        p_dbl("releps", default = 0, lower = 0, tags = c("train", "pargs"))
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
        id = "surv.cforest",
        param_set = ps,
        # can also predict weights, node, but not really useful here
        predict_types = c("distr", "crank"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        properties = c("weights"),
        packages = c("partykit", "sandwich", "coin"),
        man = "mlr3extralearners::mlr_learners_surv.cforest"
      )
    }
  ),

  private = list(
    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")

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

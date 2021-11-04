#' @title Survival Conditional Inference Tree Learner
#' @author adibender
#' @name mlr_learners_surv.ctree
#'
#' @template class_learner
#' @templateVar id surv.ctree
#' @templateVar caller ctree
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
            tags = "train"),
          saveinfo = p_lgl(default = TRUE, tags = "train"),
          update = p_lgl(default = FALSE, tags = "train"),
          splitflavour = p_fct(default = "ctree",
            levels = c("ctree", "exhaustive"), tags = c("train", "control")),
          offset = p_uty(tags = "train"),
          cluster = p_uty(tags = "train"),
          scores = p_uty(tags = "train"),
          doFit = p_lgl(default = TRUE, tags = "train"),
          maxpts = p_int(default = 25000L, tags = c("train", "pargs")),
          abseps = p_dbl(default = 0.001, lower = 0, tags = c("train", "pargs")),
          releps = p_dbl(default = 0, lower = 0, tags = c("train", "pargs"))
      )

      ps$add_dep("nresample", "testtype", CondEqual$new("MonteCarlo"))

      super$initialize(
        id            = "surv.ctree",
        packages      = c("mlr3extralearners", "partykit", "coin", "sandwich"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("distr", "crank"),
        param_set     = ps,
        properties    = "weights",
        man = "mlr3extralearners::mlr_learners_surv.ctree"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")

      if ("weights" %in% task$properties) {
        pars$weights = task$weights$weight
      }

      pars_pargs = self$param_set$get_values(tags = "pargs")
      pars$pargs = mlr3misc::invoke(mvtnorm::GenzBretz, pars_pargs)
      pars = pars[!(names(pars) %in% names(pars_pargs))]

      mlr3misc::invoke(partykit::ctree, formula = task$formula(),
        data = task$data(), .args = pars)
    },

    .predict = function(task) {

      newdata = task$data(cols = task$feature_names)
      preds = mlr3misc::invoke(predict, self$model, type = "prob", newdata = newdata)

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

.extralrns_dict$add("surv.ctree", LearnerSurvCTree)

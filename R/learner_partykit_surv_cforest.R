#' @title Survival Conditional Random Forest Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.cforest
#'
#' @description
#' A random forest based on conditional inference trees ([ctree][partykit::ctree]).
#' Calls [partykit::cforest()] from \CRANpkg{partykit}.
#'
#' @template learner
#' @templateVar id surv.cforest
#'
#' @inheritSection mlr_learners_classif.cforest Initial parameter values
#'
#' @references
#' `r format_bib("hothorn_2015", "hothorn_2006")`
#'
#' @export
#' @template seealso_learner
#' @template example
delayedAssign(
  "LearnerSurvCForest",
  R6Class("LearnerSurvCForest",
    inherit = mlr3proba::LearnerSurv,
    public = list(
      #' @description
      #' Creates a new instance of this [R6][R6::R6Class] class.
      initialize = function() {

        ps = ps(
          ntree = p_int(default = 500L, lower = 1L, tags = "train"),
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
          na.action = p_uty(default = stats::na.pass, tags = "train"),
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
          alpha = p_dbl(default = 0.05, lower = 0, upper = 1,
            tags = "train"),
          mincriterion = p_dbl(default = 0.95, lower = 0, upper = 1,
            tags = "train"),
          logmincriterion = p_dbl(default = log(0.95), tags = "train"),
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
          # nperm = p_int(default = 1L, lower = 0L, tags = c("train", "importance")),
          # risk = p_fct(default = "loglik", levels = c("loglik", "misclassification"),
          #   tags = c("train", "importance")),
          # conditional = p_lgl(default = FALSE, tags = c("train", "importance")),
          # threshold = p_dbl(default = 0.2, tags = c("train", "importance")),

          maxpts = p_int(default = 25000L, tags = "train"),
          abseps = p_dbl(default = 0.001, lower = 0, tags = "train"),
          releps = p_dbl(default = 0, lower = 0, tags = "train")
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
)

.extralrns_dict$add("surv.cforest", function() LearnerSurvCForest$new())

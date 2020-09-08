#' @title Survival Oblique Random Survival Forest Learner
#'
#' @name mlr_learners_surv.obliqueRSF
#' @author RaphaelS1
#'
#' @template class_learner
#' @templateVar id surv.obliqueRSF
#' @templateVar caller ORSF
#'
#' @section Custom mlr3 defaults:
#' - `verbose`:
#'   - Actual default: `TRUE`
#'   - Adjusted default: `FALSE`
#'   - Reason for change: mlr3 already has it's own verbose set to `TRUE` by default
#'
#' @references
#' Jaeger BC, Long DL, Long DM, Sims M, Szychowski JM, Min Y, Mcclure LA, Howard G, Simon N (2019).
#' “Oblique random survival forests.” The Annals of Applied Statistics, 13(3), 1847–1883.
#' ISSN 1932-6157, 1941-7330, doi: 10.1214/19-AOAS1261,
#' https://projecteuclid.org/euclid.aoas/1571277776.
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvObliqueRSF = R6Class("LearnerSurvObliqueRSF",
  inherit = LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamDbl$new(id = "alpha", default = 0.5, tags = "train"),
          ParamInt$new(id = "ntree", default = 100L, lower = 1L, tags = "train"),
          ParamUty$new(id = "eval_times", tags = "train"),
          ParamInt$new(id = "min_events_to_split_node", default = 5L, lower = 1L, tags = "train"),
          ParamInt$new(id = "min_obs_to_split_node", default = 10L, lower = 1L, tags = "train"),
          ParamInt$new(id = "min_obs_in_leaf_node", default = 5L, lower = 1L, tags = "train"),
          ParamInt$new(id = "min_events_in_leaf_node", default = 1L, lower = 1L, tags = "train"),
          ParamInt$new(id = "nsplit", default = 25L, lower = 1, tags = "train"),
          ParamDbl$new(id = "gamma", default = 0.5, lower = 1e-16, tags = "train"),
          ParamDbl$new(
            id = "max_pval_to_split_node", lower = 0, upper = 1, default = 0.5,
            tags = "train"),
          ParamInt$new(id = "mtry", lower = 1, tags = "train"),
          ParamInt$new(id = "dfmax", lower = 1, tags = "train"),
          ParamLgl$new(id = "use.cv", default = FALSE, tags = "train"),
          ParamLgl$new(id = "verbose", default = TRUE, tags = "train"),
          ParamLgl$new(id = "compute_oob_predictions", default = FALSE, tags = "train"),
          ParamInt$new(id = "random_seed", tags = "train")
        )
      )

      ps$values = list(verbose = FALSE)

      super$initialize(
        id = "surv.obliqueRSF",
        packages = c("obliqueRSF", "pracma"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("crank", "distr"),
        param_set = ps,
        properties = c("missings", "oob_error"),
        man = "mlr3extralearners::mlr_learners_surv.obliqueRSF"
      )
    },


    #' @description
    #' Integrated brier score OOB error extracted from the model slot `oob_error`.
    #' Concordance is also available.
    #' @return `numeric()`.
    oob_error = function() {
      self$model$oob_error$integrated_briscr[2, ]
    }

  ),

  private = list(
    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")
      targets = task$target_names

      mlr3misc::invoke(
        obliqueRSF::ORSF,
        data     = as.data.frame(task$data()),
        time     = targets[1L],
        status   = targets[2L],
        .args    = pv
      )
    },

    .predict = function(task) {

      newdata = task$data(cols = task$feature_names)
      pv = self$param_set$get_values(tags = "predict")
      time = self$model$data[[task$target_names[1]]]
      status = self$model$data[[task$target_names[2]]]
      utime = unique(time[status == 1])

      p = mlr3misc::invoke(predict, self$model, newdata = newdata, times = utime, .args = pv)
      cdf = 1 - p
      # define WeightedDiscrete distr6 object from predicted survival function
      x = rep(list(list(x = utime, cdf = 0)), task$nrow)
      for (i in seq_len(task$nrow)) {
        x[[i]]$cdf = cdf[i, ]
      }

      distr = distr6::VectorDistribution$new(
        distribution = "WeightedDiscrete",
        params = x,
        decorators = c("CoreStatistics", "ExoticStatistics"))

      crank = as.numeric(sapply(x, function(y) sum(y$x * c(y$cdf[1], diff(y$cdf)))))

      mlr3proba::PredictionSurv$new(task = task, crank = crank, distr = distr)

    }
  )
)

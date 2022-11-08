#' @title Survival Gradient Boosting Machine Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.gbm
#'
#' @description
#' Gradient Boosting for Survival Analysis.
#' Calls [gbm::gbm()] from \CRANpkg{gbm}.
#'
#' @templateVar id surv.gbm
#' @template learner
#'
#' @section Parameter changes:
#'  - `distribution`:
#'   - Actual default: "bernoulli"
#'   - Adjusted default: "coxph"
#'   - Reason for change: This is the only distribution available for survival.
#' - `keep.data`:
#'   - Actual default: TRUE
#'   - Adjusted default: FALSE
#'   - Reason for change: `keep.data = FALSE` saves memory during model fitting.
#' - `n.cores`:
#'   - Actual default: NULL
#'   - Adjusted default: 1
#'   - Reason for change: Suppressing the automatic internal parallelization if
#'     `cv.folds` > 0.
#'
#' @references
#' `r format_bib("friedman2002stochastic")`
#'
#' @export
#' @template seealso_learner
#' @template example
delayedAssign(
  "LearnerSurvGBM",
  R6Class("LearnerSurvGBM",
    inherit = mlr3proba::LearnerSurv,
    public = list(
      #' @description
      #' Creates a new instance of this [R6][R6::R6Class] class.
      initialize = function() {
        ps = ps(
          distribution = p_fct(levels = c("coxph"), default = "coxph", tags = "train"),
          n.trees = p_int(default = 100L, lower = 1L, tags = c("train", "predict")),
          cv.folds = p_int(default = 0L, lower = 0L, tags = "train"),
          interaction.depth = p_int(default = 1L, lower = 1L, tags = "train"),
          n.minobsinnode = p_int(default = 10L, lower = 1L, tags = "train"),
          shrinkage = p_dbl(default = 0.001, lower = 0, tags = "train"),
          bag.fraction = p_dbl(default = 0.5, lower = 0, upper = 1, tags = "train"),
          train.fraction = p_dbl(default = 1, lower = 0, upper = 1, tags = "train"),
          keep.data = p_lgl(default = FALSE, tags = "train"),
          verbose = p_lgl(default = FALSE, tags = "train"),
          var.monotone = p_uty(tags = "train"),
          n.cores = p_int(default = 1, tags = c("train", "threads")),
          single.tree = p_lgl(default = FALSE, tags = "predict")
        )
        ps$values = list(distribution = "coxph", keep.data = FALSE, n.cores = 1)

        super$initialize(
          id = "surv.gbm",
          param_set = ps,
          predict_types = c("crank", "lp"),
          feature_types = c("integer", "numeric", "factor", "ordered"),
          properties = c("missings", "weights", "importance"),
          man = "mlr3extralearners::mlr_learners_surv.gbm",
          packages = c("mlr3extralearners", "gbm"),
          label = "Gradient Boosting"
        )
      },

      #' @description
      #' The importance scores are extracted from the model slot `variable.importance`.
      #' @return Named `numeric()`.
      importance = function() {
        if (is.null(self$model)) {
          stopf("No model stored")
        }
        sum = summary(self$model, plotit = FALSE)
        relinf = sum$rel.inf
        names(relinf) = sum$var

        relinf
      }
    ),

    private = list(
      .train = function(task) {

        # hacky formula construction as gbm fails when "type" argument specified in Surv()

        tn = task$target_names
        lhs = sprintf("Surv(%s, %s)", tn[1L], tn[2L])
        f = formulate(lhs, task$feature_names, env = getNamespace("survival"))

        # collect arguments for predict
        pars = self$param_set$get_values(tags = "train")
        pars = c(pars, list(weights = task$weights$weight))

        invoke(
          gbm::gbm,
          formula = f,
          data = task$data(),
          .args = pars
        )
      },

      .predict = function(task) {
        pv = self$param_set$get_values(tags = "predict")
        newdata = ordered_features(task, self)

        # predict linear predictor
        lp = invoke(predict, self$model, newdata = newdata, .args = pv)

        list(crank = lp, lp = lp)
      }
    )
  )
)

.extralrns_dict$add("surv.gbm", function() LearnerSurvGBM$new())

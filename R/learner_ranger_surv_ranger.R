#' @title Ranger Survival Learner
#' @author be-marc
#' @name mlr_learners_surv.ranger
#'
#' @description
#' Random survival forest.
#' Calls [ranger::ranger()] from package \CRANpkg{ranger}.
#'
#' @section Initial parameter values:
#' - `mtry`:
#'   - This hyperparameter can alternatively be set via our hyperparameter `mtry.ratio`
#'     as `mtry = max(ceiling(mtry.ratio * n_features), 1)`.
#'     Note that `mtry` and `mtry.ratio` are mutually exclusive.
#'
#' @section Custom mlr3 defaults:
#' - `num.threads`:
#'   - Actual default: `NULL`, triggering auto-detection of the number of CPUs.
#'   - Adjusted value: 1.
#'   - Reason for change: Conflicting with parallelization via \CRANpkg{future}.
#'
#' @templateVar id surv.ranger
#' @template learner
#'
#' @references
#' `r format_bib("wright_2017", "breiman_2001")`
#'
#' @export
#' @template seealso_learner
#' @template example
delayedAssign(
  "LearnerSurvRanger",
  R6Class("LearnerSurvRanger",
    inherit = mlr3proba::LearnerSurv,
    public = list(
      #' @description
      #' Creates a new instance of this [R6][R6::R6Class] class.
      initialize = function() {
        ps = ps(
          alpha                        = p_dbl(default = 0.5, tags = "train"),
          always.split.variables       = p_uty(tags = "train"),
          holdout                      = p_lgl(default = FALSE, tags = "train"), # FIXME: do we need this?
          importance                   = p_fct(c("none", "impurity", "impurity_corrected", "permutation"), tags = "train"),
          keep.inbag                   = p_lgl(default = FALSE, tags = "train"),
          max.depth                    = p_int(default = NULL, lower = 0L, special_vals = list(NULL), tags = "train"),
          min.node.size                = p_int(1L, default = 5L, tags = "train"),
          minprop                      = p_dbl(default = 0.1, tags = "train"),
          mtry                         = p_int(lower = 1L, tags = "train"),
          mtry.ratio                   = p_dbl(lower = 0, upper = 1, tags = "train"),
          num.random.splits            = p_int(1L, default = 1L, tags = "train"), # requires = quote(splitrule == "extratrees")
          num.threads                  = p_int(1L, default = 1L, tags = c("train", "predict", "threads")),
          num.trees                    = p_int(1L, default = 500L, tags = c("train", "predict")),
          oob.error                    = p_lgl(default = TRUE, tags = "train"),
          regularization.factor        = p_uty(default = 1, tags = "train"),
          regularization.usedepth      = p_lgl(default = FALSE, tags = "train"),
          replace                      = p_lgl(default = TRUE, tags = "train"),
          respect.unordered.factors    = p_fct(c("ignore", "order", "partition"), default = "ignore", tags = "train"), # for splitrule == "extratrees", def = partition
          sample.fraction              = p_dbl(0L, 1L, tags = "train"), # for replace == FALSE, def = 0.632
          save.memory                  = p_lgl(default = FALSE, tags = "train"),
          scale.permutation.importance = p_lgl(default = FALSE, tags = "train"), # requires = quote(importance == "permutation")
          seed                         = p_int(default = NULL, special_vals = list(NULL), tags = c("train", "predict")),
          split.select.weights         = p_dbl(0, 1, tags = "train"),
          splitrule                    = p_fct(c("logrank", "extratrees", "C", "maxstat"), default = "logrank", tags = "train"),
          verbose                      = p_lgl(default = TRUE, tags = c("train", "predict")),
          write.forest                 = p_lgl(default = TRUE, tags = "train")
        )

        ps$values = list(num.threads = 1L)

        super$initialize(
          id = "surv.ranger",
          param_set = ps,
          predict_types = c("distr", "crank"),
          feature_types = c("logical", "integer", "numeric", "character", "factor", "ordered"),
          properties = c("weights", "importance", "oob_error"),
          packages = c("mlr3extralearners", "ranger"),
          man = "mlr3extralearners::mlr_learners_surv.ranger",
          label = "Random Forest"
        )
      },

      #' @description
      #' The importance scores are extracted from the model slot `variable.importance`.
      #' @return Named `numeric()`.
      importance = function() {
        if (is.null(self$model)) {
          stopf("No model stored")
        }
        if (self$model$importance.mode == "none") {
          stopf("No importance stored")
        }

        sort(self$model$variable.importance, decreasing = TRUE)
      },

      #' @description
      #' The out-of-bag error is extracted from the model slot `prediction.error`.
      #' @return `numeric(1)`.
      oob_error = function() {
        self$model$prediction.error
      }
    ),

    private = list(
      .train = function(task) {
        pv = self$param_set$get_values(tags = "train")
        pv = convert_ratio(pv, "mtry", "mtry.ratio", length(task$feature_names))
        targets = task$target_names

        invoke(ranger::ranger,
          formula = NULL,
          dependent.variable.name = targets[1L],
          status.variable.name = targets[2L],
          data = task$data(),
          case.weights = task$weights$weight,
          .args = pv
        )
      },

      .predict = function(task) {
        pv = self$param_set$get_values(tags = "predict")
        newdata = ordered_features(task, self)
        prediction = predict(object = self$model, data = newdata)
        mlr3proba::.surv_return(times = prediction$unique.death.times, surv = prediction$survival)
      }
    )
  )
)

.extralrns_dict$add("surv.ranger", function() LearnerSurvRanger$new())

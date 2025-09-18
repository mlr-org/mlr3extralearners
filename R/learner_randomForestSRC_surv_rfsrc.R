#' @title Survival Random Forest SRC Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.rfsrc
#'
#' @description
#' Random survival forest.
#' Calls [randomForestSRC::rfsrc()] from \CRANpkg{randomForestSRC}.
#'
#' @section Prediction types:
#' This learner returns two prediction types:
#' 1. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and (unique event) time points in columns.
#' Calculated using the internal [randomForestSRC::predict.rfsrc()] function.
#' 2. `crank`: the expected mortality using [mlr3proba::.surv_return()].
#'
#' @template learner
#' @templateVar id surv.rfsrc
#'
#' @inheritSection mlr_learners_classif.rfsrc Custom mlr3 parameters
#'
#' @section Custom mlr3 parameters:
#' - `estimator`: Hidden parameter that controls the type of estimator used to
#'   derive the survival function during prediction. The **default** value is `"chf"` which
#'   uses a bootstrapped Nelson-Aalen estimator for the cumulative hazard function
#'   \eqn{H(t)}, (Ishwaran, 2008) from which we calculate \eqn{S(t) = \exp(-H(t))},
#'   whereas `"surv"` uses a bootstrapped Kaplan-Meier estimator to directly estimate
#'   \eqn{S(t)}.
#'
#' @section Initial parameter values:
#' - `ntime`: Number of time points to coerce the observed event times for use in the
#'   estimated survival function during prediction. We changed the default value
#'   of `150` to `0` in order to be in line with other random survival forest
#'   learners and use all the **unique event times from the train set**.
#'
#' @references
#' `r format_bib("ishwaran_2008", "breiman_2001")`
#'
#' @template seealso_learner
#' @examplesIf learner_is_runnable("surv.rfsrc")
#' # Define the Learner
#' learner = lrn("surv.rfsrc", importance = "TRUE")
#' print(learner)
#'
#' # Define a Task
#' task = tsk("grace")
#'
#' # Create train and test set
#' ids = partition(task)
#'
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#'
#' print(learner$model)
#' print(learner$importance())
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()
#' @export
LearnerSurvRandomForestSRC = R6Class("LearnerSurvRandomForestSRC",
  inherit = mlr3proba::LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        ntree          = p_int(default = 500L, lower = 1L, tags = "train"),
        mtry           = p_int(lower = 1L, tags = "train"),
        mtry.ratio     = p_dbl(lower = 0, upper = 1, tags = "train"),
        nodesize       = p_int(default = 15L, lower = 1L, tags = "train"),
        nodedepth      = p_int(lower = 1L, tags = "train"),
        splitrule      = p_fct(levels = c("logrank", "bs.gradient"), default = "logrank", tags = "train"),
        nsplit         = p_int(lower = 0, default = 10, tags = "train"),
        importance     = p_fct(default = "FALSE", levels = c("FALSE", "TRUE", "none", "anti", "permute", "random"), tags = c("train", "predict")), #nolint
        block.size     = p_int(default = 10L, lower = 1L, tags = c("train", "predict")),
        bootstrap      = p_fct(default = "by.root", levels = c("by.root", "by.node", "none", "by.user"), tags = "train"), #nolint
        samptype       = p_fct(default = "swor", levels = c("swor", "swr"), tags = "train"),
        samp           = p_uty(tags = "train"),
        membership     = p_lgl(default = FALSE, tags = c("train", "predict")),
        sampsize       = p_uty(tags = "train"),
        sampsize.ratio = p_dbl(0, 1, tags = "train"),
        na.action      = p_fct(default = "na.omit", levels = c("na.omit", "na.impute"), tags = c("train", "predict")),
        nimpute        = p_int(lower = 1L, default = 1L, special_vals = list(NULL), tags = "train"),
        ntime          = p_int(lower = 0L, default = 150L, init = 0L, special_vals = list(NULL), tags = "train"),
        proximity      = p_fct(default = "FALSE", levels = c("FALSE", "TRUE", "inbag", "oob", "all"), tags = c("train", "predict")), #nolint
        distance       = p_fct(default = "FALSE", levels = c("FALSE", "TRUE", "inbag", "oob", "all"), tags = c("train", "predict")), #nolint
        forest.wt      = p_fct(default = "FALSE", levels = c("FALSE", "TRUE", "inbag", "oob", "all"), tags = c("train", "predict")), #nolint
        xvar.wt        = p_uty(tags = "train"),
        split.wt       = p_uty(tags = "train"),
        forest         = p_lgl(default = TRUE, tags = "train"),
        var.used       = p_fct(default = "FALSE", levels = c("FALSE", "all.trees"), tags = c("train", "predict")), #nolint
        split.depth    = p_fct(default = "FALSE", levels = c("FALSE", "all.trees", "by.tree"), tags = c("train", "predict")), #nolint
        seed           = p_int(upper = -1L, tags = c("train", "predict")),
        do.trace       = p_lgl(default = FALSE, tags = c("train", "predict")),
        statistics     = p_lgl(default = FALSE, tags = c("train", "predict")),
        get.tree       = p_uty(tags = "predict"),
        outcome        = p_fct(default = "train", levels = c("train", "test"), tags = "predict"),
        ptn.count      = p_int(default = 0L, lower = 0L, tags = "predict"),
        estimator      = p_fct(default = "nelson", levels = c("nelson", "kaplan"), tags = "predict"),
        cores          = p_int(default = 1L, lower = 1L, tags = c("train", "predict", "threads")),
        save.memory    = p_lgl(default = FALSE, tags = "train"),
        perf.type      = p_fct(levels = "none", tags = "train"),
        case.depth     = p_lgl(default = FALSE, tags = c("train", "predict")),
        marginal.xvar  = p_uty(default = NULL, tags = "predict")
      )

      super$initialize(
        id = "surv.rfsrc",
        packages = c("mlr3extralearners", "randomForestSRC"),
        feature_types = c("logical", "integer", "numeric", "factor"),
        predict_types = c("crank", "distr"),
        param_set = param_set,
        properties = c("weights", "missings", "importance", "oob_error", "selected_features"),
        man = "mlr3extralearners::mlr_learners_surv.rfsrc",
        label = "Random Survival Forests"
      )
    },

    #' @description
    #' The importance scores are extracted from the model slot `importance`.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model$importance) & !is.null(self$model)) {
        stopf("Set 'importance' to one of: {'TRUE', 'permute', 'random', 'anti'}.")
      }

      sort(self$model$importance, decreasing = TRUE)
    },

    #' @description
    #' Selected features are extracted from the model slot `var.used`.
    #'
    #' **Note**: Due to a known issue in `randomForestSRC`, enabling `var.used = "all.trees"`
    #' causes prediction to fail. Therefore, this setting should be used exclusively
    #' for feature selection purposes and not when prediction is required.
    #' @return `character()`.
    selected_features = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }

      if (is.null(self$model$var.used)) {
        stopf("Set parameter 'var.used' to 'all.trees'.")
      }

      names(self$model$var.used)
    },

    #' @description
    #' OOB error extracted from the model slot `err.rate`.
    #' @return `numeric()`.
    oob_error = function() {
      self$model$err.rate[self$model$ntree]
    }
  ),

  private = list(
    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")
      pv = convert_ratio(pv, "mtry", "mtry.ratio", length(task$feature_names))
      pv = convert_ratio(pv, "sampsize", "sampsize.ratio", task$nrow)
      cores = pv$cores %??% 1L
      pv$cores = NULL
      pv$case.wt = private$.get_weights(task)

      invoke(randomForestSRC::rfsrc,
        formula = task$formula(), data = task$data(),
        .args = pv, .opts = list(rf.cores = cores))
    },

    .predict = function(task) {
      newdata = ordered_features(task, self)
      pv = self$param_set$get_values(tags = "predict")

      if (!is.null(pv$var.used) && pv$var.used == "all.trees") {
        stopf("Prediction is not supported when var.used = 'all.trees'. Use this setting only when extracting selected features.") #nolint
      }

      # default estimator is nelson, hence nelson selected if NULL
      estimator = pv$estimator %??% "nelson"
      pv$estimator = NULL
      cores = pv$cores %??% 1L # additionaly implemented by author
      pv$cores = NULL

      p = invoke(predict, object = self$model, newdata = newdata, .args = pv,
                 .opts = list(rf.cores = cores))

      # rfsrc uses Nelson-Aalen in chf and Kaplan-Meier for survival, as these
      # don't give equivalent results one must be chosen and the relevant functions are transformed
      # as required.
      surv = if (estimator == "nelson") exp(-p$chf) else p$survival

      mlr3proba::.surv_return(times = self$model$time.interest, surv = surv)
    }
  )
)

.extralrns_dict$add("surv.rfsrc", LearnerSurvRandomForestSRC)

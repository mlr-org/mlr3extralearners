#' @title Random Forest Competing Risks Learner
#' @author bblodfon
#' @name mlr_learners_cmprsk.rfsrc
#'
#' @description
#' Random survival forests for competing risks.
#' Calls [randomForestSRC::rfsrc()] from \CRANpkg{randomForestSRC}.
#'
#' @template learner
#' @templateVar id cmprsk.rfsrc
#'
#' @inheritSection mlr_learners_classif.rfsrc Custom mlr3 parameters
#'
#' @section Initial parameter values:
#' - `ntime`: Number of time points to coerce the observed event times for use
#' in the estimated cumulative incidence functions during prediction.
#' We changed the default value of `150` to `0`, meaning we now use all the
#' **unique event times from the train set** across all competing causes.
#'
#' @references
#' `r format_bib("ishwaran2014rsf")`
#'
#' @template seealso_learner
#' @examplesIf learner_is_runnable("cmprsk.rfsrc")
#' # Define the Learner
#' learner = lrn("cmprsk.rfsrc", importance = "TRUE")
#' print(learner)
#'
#' # Define a Task
#' task = tsk("pbc")
#'
#' # Stratification based on event
#' task$set_col_roles(cols = "status", add_to = "stratum")
#'
#' # Create train and test set
#' ids = partition(task)
#'
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#'
#' print(learner$model)
#' print(learner$importance(cause = 1)) # VIMP for cause = 1
#' print(learner$importance(cause = 2)) # VIMP for cause = 2
#' print(learner$oob_error()) # weighted-mean across causes
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()
#' @export
LearnerCompRisksRandomForestSRC = R6Class("LearnerCompRisksRandomForestSRC",
  inherit = mlr3proba::LearnerCompRisks,
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
        splitrule      = p_fct(levels = c("logrankCR", "logrank"), default = "logrankCR", tags = "train"),
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
        cause          = p_uty(tags = "train"),
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
        cores          = p_int(default = 1L, lower = 1L, init = 1, tags = c("train", "predict", "threads")),
        save.memory    = p_lgl(default = FALSE, tags = "train"),
        perf.type      = p_fct(levels = "none", tags = "train"),
        case.depth     = p_lgl(default = FALSE, tags = c("train", "predict")),
        marginal.xvar  = p_uty(default = NULL, tags = "predict")
      )

      super$initialize(
        id = "cmprsk.rfsrc",
        packages = c("mlr3extralearners", "randomForestSRC"),
        feature_types = c("logical", "integer", "numeric", "factor"),
        predict_types = "cif",
        param_set = param_set,
        properties = c("weights", "missings", "importance", "oob_error", "selected_features"),
        man = "mlr3extralearners::mlr_learners_cmprsk.rfsrc",
        label = "Competing Risk Survival Forests"
      )
    },

    #' @description
    #' The importance scores are extracted from the model slot `importance` and
    #' are cause-specific.
    #' @param cause Integer value indicating the event of interest
    #' @return Named `numeric()`.
    importance = function(cause = 1) {
      if (is.null(self$model$importance) & !is.null(self$model)) {
        stopf("Set 'importance' to one of: {'TRUE', 'permute', 'random', 'anti'}.")
      }

      causes = sort(self$model$event.info$event.type)
      if (cause %nin% causes) {
        stopf("Invalid cause. Use one of: %s", paste(causes, collapse = ", "))
      }

      sort(self$model$importance[, cause], decreasing = TRUE)
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
    #' Extracts the out-of-bag (OOB) cumulative incidence function (CIF) error
    #' from the model's `err.rate` slot.
    #'
    #' If `cause = "mean"` (default), the function returns a weighted average
    #' of the cause-specific OOB errors, where the weights correspond to the
    #' observed proportion of events for each cause in the training data.
    #'
    #' @param cause Integer (event type) or `"mean"` (default). Use a specific
    #' event type to retrieve its OOB error, or `"mean"` to compute the weighted
    #' average across causes.
    #' @return `numeric()`.
    oob_error = function(cause = "mean") {
      causes = sort(self$model$event.info$event.type)

      if ((cause != "mean") && (cause %nin% causes)) {
        stopf("Invalid cause. Use one of: %s, or 'mean'", paste(causes, collapse = ", "))
      }

      oob_errors = self$model$err.rate[self$model$ntree, ]

      if (cause == "mean") {
        event = self$model$event.info$event # only event > 0 are included here
        w = prop.table(table(event)) # observed proportions per cause
        sum(w * oob_errors)
      } else {
        oob_errors[cause]
      }
    }
  ),

  private = list(
    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")
      pv = convert_ratio(pv, "mtry", "mtry.ratio", length(task$feature_names))
      pv = convert_ratio(pv, "sampsize", "sampsize.ratio", task$nrow)

      cores = pv$cores # additionaly implemented by author
      pv$cores = NULL
      pv$case.wt = private$.get_weights(task)

      invoke(
        randomForestSRC::rfsrc,
        formula = task$formula(),
        data = task$data(),
        .args = pv,
        .opts = list(rf.cores = cores)
      )
    },

    .predict = function(task) {
      newdata = ordered_features(task, self)
      pv = self$param_set$get_values(tags = "predict")

      if (!is.null(pv$var.used) && pv$var.used == "all.trees") {
        stopf("Prediction is not supported when var.used = 'all.trees'. Use this setting only when extracting selected features.") #nolint
      }

      cores = pv$cores # additionaly implemented by author
      pv$cores = NULL

      prediction = invoke(
        predict,
        object = self$model,
        newdata = newdata,
        .args = pv,
        .opts = list(rf.cores = cores)
      )

      # Extract CIF array: [n_obs x times x causes]
      cif_array = prediction$cif
      dimnames(cif_array)[[2]] = prediction$time.interest

      # Split CIF array into list of matrices per cause
      n_causes = dim(cif_array)[3]
      cif_list = lapply(seq_len(n_causes), function(cause) cif_array[, , cause])
      names(cif_list) = seq_len(n_causes)

      list(cif = cif_list)
    }
  )
)

.extralrns_dict$add("cmprsk.rfsrc", LearnerCompRisksRandomForestSRC)

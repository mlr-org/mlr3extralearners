#' @title Classification Random Forest SRC Learner
#' @author RaphaelS1
#' @name mlr_learners_classif.rfsrc
#'
#' @description
#' Random forest for classification.
#' Calls [randomForestSRC::rfsrc()] from \CRANpkg{randomForestSRC}.
#'
#' @template learner
#' @templateVar id classif.rfsrc
#'
#' @section Custom mlr3 parameters:
#' - `mtry`: This hyperparameter can alternatively be set via the added
#'  hyperparameter `mtry.ratio` as `mtry = max(ceiling(mtry.ratio * n_features), 1)`.
#'  Note that `mtry` and `mtry.ratio` are mutually exclusive.
#' - `sampsize`: This hyperparameter can alternatively be set via the added
#'  hyperparameter `sampsize.ratio` as `sampsize = max(ceiling(sampsize.ratio * n_obs), 1)`.
#'  Note that `sampsize` and `sampsize.ratio` are mutually exclusive.
#' - `cores`: This value is set as the option `rf.cores` during training and is
#' set to 1 by default.
#'
#' @references
#' `r format_bib("breiman_2001")`
#'
#' @template seealso_learner
#' @examplesIf learner_is_runnable("classif.rfsrc")
#' # Define the Learner
#' learner = lrn("classif.rfsrc", importance = "TRUE")
#' print(learner)
#'
#' # Define a Task
#' task = tsk("sonar")
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
LearnerClassifRandomForestSRC = R6Class("LearnerClassifRandomForestSRC",
  inherit = LearnerClassif,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        ntree = p_int(default = 500L, lower = 1L, tags = "train"),
        mtry = p_int(lower = 1L, tags = "train"),
        mtry.ratio = p_dbl(lower = 0, upper = 1, tags = "train"),
        nodesize = p_int(default = 15L, lower = 1L, tags = "train"),
        nodedepth = p_int(lower = 1L, tags = "train"),
        splitrule = p_fct(
          levels = c("gini", "auc", "entropy"),
          default = "gini", tags = "train"),
        nsplit = p_int(lower = 0, default = 10, tags = "train"),
        importance = p_fct(
          default = "FALSE",
          levels = c("FALSE", "TRUE", "none", "permute", "random", "anti"),
          tags = c("train", "predict")),
        block.size = p_int(default = 10L, lower = 1L, tags = c("train", "predict")),
        bootstrap = p_fct(
          default = "by.root",
          levels = c("by.root", "by.node", "none", "by.user"), tags = "train"),
        samptype = p_fct(
          default = "swor", levels = c("swor", "swr"),
          tags = "train"),
        samp = p_uty(tags = "train"),
        membership = p_lgl(default = FALSE, tags = c("train", "predict")),
        sampsize = p_uty(tags = "train"),
        sampsize.ratio = p_dbl(0, 1, tags = "train"),
        na.action = p_fct(
          default = "na.omit", levels = c("na.omit", "na.impute"),
          tags = c("train", "predict")),
        nimpute = p_int(default = 1L, lower = 1L, tags = "train"),
        proximity = p_fct(
          default = "FALSE",
          levels = c("FALSE", "TRUE", "inbag", "oob", "all"),
          tags = c("train", "predict")),
        distance = p_fct(
          default = "FALSE",
          levels = c("FALSE", "TRUE", "inbag", "oob", "all"),
          tags = c("train", "predict")),
        forest.wt = p_fct(
          default = "FALSE",
          levels = c("FALSE", "TRUE", "inbag", "oob", "all"),
          tags = c("train", "predict")),
        xvar.wt = p_uty(tags = "train"),
        split.wt = p_uty(tags = "train"),
        forest = p_lgl(default = TRUE, tags = "train"),
        var.used = p_fct(
          default = "FALSE",
          levels = c("FALSE", "all.trees"), tags = c("train", "predict")),
        split.depth = p_fct(
          default = "FALSE",
          levels = c("FALSE", "all.trees", "by.tree"), tags = c("train", "predict")),
        seed = p_int(upper = -1L, tags = c("train", "predict")),
        do.trace = p_lgl(default = FALSE, tags = c("train", "predict")),
        statistics = p_lgl(default = FALSE, tags = c("train", "predict")),
        get.tree = p_uty(tags = "predict"),
        outcome = p_fct(
          default = "train", levels = c("train", "test"),
          tags = "predict"),
        ptn.count = p_int(default = 0L, lower = 0L, tags = "predict"),
        cores = p_int(default = 1L, lower = 1L, tags = c("train", "predict", "threads")),
        save.memory = p_lgl(default = FALSE, tags = "train"),
        perf.type = p_fct(levels = c("gmean", "misclass", "brier", "none"), tags = "train"), # nolint
        case.depth = p_lgl(default = FALSE, tags = c("train", "predict")),
        marginal.xvar	= p_uty(default = NULL, tags = "predict")
      )

      super$initialize(
        id = "classif.rfsrc",
        packages = c("mlr3extralearners", "randomForestSRC"),
        feature_types = c("logical", "integer", "numeric", "factor"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("weights", "missings", "importance", "oob_error", "selected_features",
                       "twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.rfsrc",
        label = "Random Forest"
      )
    },


    #' @description
    #' The importance scores are extracted from the model slot `importance`, returned for
    #' 'all'.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model$importance) & !is.null(self$model)) {
        stopf("Set 'importance' to one of: {'TRUE', 'permute', 'random', 'anti'}.")
      }

      sort(self$model$importance[, 1], decreasing = TRUE)
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
      as.numeric(self$model$err.rate[self$model$ntree, 1])
    }
  ),

  private = list(
    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")
      pv = convert_ratio(pv, "mtry", "mtry.ratio", length(task$feature_names))
      pv = convert_ratio(pv, "sampsize", "sampsize.ratio", task$nrow)
      cores = pv$cores %??% 1L
      pv$cores = NULL
      pv$case.wt = private$.get_weights(task) # nolint

      invoke(randomForestSRC::rfsrc,
        formula = task$formula(), data = data.table::setDF(task$data()),
        .args = pv, .opts = list(rf.cores = cores))
    },

    .predict = function(task) {
      newdata = data.table::setDF(ordered_features(task, self))
      pv = self$param_set$get_values(tags = "predict")

      if (!is.null(pv$var.used) && pv$var.used == "all.trees") {
        stopf("Prediction is not supported when var.used = 'all.trees'. Use this setting only when extracting selected features.") #nolint
      }

      cores = pv$cores %??% 1L
      pv$cores = NULL

      pred = invoke(predict,
        object = self$model,
        newdata = newdata,
        .args = pv,
        .opts = list(rf.cores = cores))

      if (self$predict_type == "response") {
        list(response = pred$class)
      } else {
        list(prob = pred$predicted)
      }
    }
  )
)

.extralrns_dict$add("classif.rfsrc", LearnerClassifRandomForestSRC)

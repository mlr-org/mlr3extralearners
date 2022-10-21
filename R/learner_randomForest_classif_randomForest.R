#' @title Classification Random Forest Learner
#' @author pat-s
#' @name mlr_learners_classif.randomForest
#'
#' @description
#' Random forest for classification.
#' Calls [randomForest::randomForest()] from \CRANpkg{randomForest}.
#'
#' @template learner
#' @templateVar id classif.randomForest
#'
#' @references
#' `r format_bib("breiman_2001")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerClassifRandomForest = R6Class("LearnerClassifRandomForest",
  inherit = LearnerClassif,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        ntree = p_int(default = 500L, lower = 1L,
          tags = "train"),
        mtry = p_int(lower = 1L, tags = "train"),
        replace = p_lgl(default = TRUE, tags = "train"),
        classwt = p_uty(default = NULL, tags = "train"),
        cutoff = p_uty(tags = "train"),
        strata = p_uty(tags = "train"),
        sampsize = p_uty(tags = "train"),
        nodesize = p_int(default = 1L, lower = 1L,
          tags = "train"),
        maxnodes = p_int(lower = 1L, tags = "train"),
        importance = p_fct(default = FALSE,
          levels = c("accuracy", "gini", "none"),
          special_vals = list(FALSE),
          tags = "train"),
        localImp = p_lgl(default = FALSE, tags = "train"),
        proximity = p_lgl(default = FALSE, tags = c("train", "predict")),
        oob.prox = p_lgl(tags = "train"),
        norm.votes = p_lgl(default = TRUE, tags = c("train", "predict")),
        do.trace = p_lgl(default = FALSE, tags = "train"),
        keep.forest = p_lgl(default = TRUE, tags = "train"),
        keep.inbag = p_lgl(default = FALSE, tags = "train"),
        predict.all = p_lgl(default = FALSE, tags = "predict"),
        nodes = p_lgl(default = FALSE, tags = "predict")
      )

      super$initialize(
        id = "classif.randomForest",
        packages = c("mlr3extralearners", "randomForest"),
        feature_types = c("integer", "numeric", "factor", "ordered", "logical"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("weights", "twoclass", "multiclass", "importance", "oob_error"),
        man = "mlr3extralearners::mlr_learners_classif.randomForest",
        label = "Random Forest"
      )
    },


    #' @description
    #' The importance scores are extracted from the slot `importance`.
    #' Parameter 'importance' must be set to either `"accuracy"` or `"gini"`.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      imp = data.frame(self$model$importance)
      pars = self$param_set$get_values()

      scores = switch(pars[["importance"]],
        "accuracy" = imp[["MeanDecreaseAccuracy"]],
        "gini"     = imp[["MeanDecreaseGini"]],
        stop("No importance available. Try setting 'importance' to 'accuracy' or 'gini'.")
      )

      sort(stats::setNames(scores, rownames(imp)), decreasing = TRUE)
    },

    #' @description
    #' OOB errors are extracted from the model slot `err.rate`.
    #' @return `numeric(1)`.
    oob_error = function() {
      mean(self$model$err.rate[, 1L])
    }
  ),

  private = list(
    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")

      formula = task$formula()
      data = task$data()
      levs = levels(data[[task$target_names]])
      n_levels = length(levs)

      # randomForest() only accepts TRUE and FALSE during fitting and the
      # specific importance methods are honored post-fitting only
      if (!is.null(pars$importance)) {
        pars$importance = TRUE
      }

      if (!"cutoff" %in% names(pars)) {
        cutoff = rep(1 / n_levels, n_levels)
      }
      if ("classwt" %in% names(pars)) {
        classwt = pars[["classwt"]]
        if (is.numeric(classwt) && length(classwt) == n_levels &&
          is.null(names(classwt))) {
          names(classwt) = levs
        }
      } else {
        classwt = NULL
      }
      if (is.numeric(cutoff) && length(cutoff) == n_levels &&
        is.null(names(cutoff))) {
        names(cutoff) = levs
      }
      invoke(randomForest::randomForest,
        formula = formula,
        data = data, classwt = classwt, cutoff = cutoff, .args = pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      type = ifelse(self$predict_type == "response", "response", "prob")

      pred = invoke(predict, self$model,
        newdata = newdata,
        type = type, .args = pars)

      if (self$predict_type == "response") {
        list(response = unname(pred))
      } else {
        list(prob = pred)
      }
    }
  )
)

.extralrns_dict$add("classif.randomForest", LearnerClassifRandomForest)

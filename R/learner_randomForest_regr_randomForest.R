#' @title Regression Random Forest Learner
#' @author pat-s
#' @name mlr_learners_regr.randomForest
#'
#' @description
#' Random forest for regression.
#' Calls [randomForest::randomForest()] from \CRANpkg{randomForest}.
#'
#' @template learner
#' @templateVar id regr.randomForest
#'
#' @references
#' `r format_bib("breiman_2001")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerRegrRandomForest = R6Class("LearnerRegrRandomForest",
  inherit = LearnerRegr,

  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        ntree = p_int(default = 500L, lower = 1L,
          tags = "train"),
        mtry = p_int(lower = 1L, tags = "train"),
        replace = p_lgl(default = TRUE, tags = "train"),
        strata = p_uty(tags = "train"),
        sampsize = p_uty(tags = "train"),
        nodesize = p_int(default = 5L, lower = 1L,
          tags = "train"),
        maxnodes = p_int(lower = 1L, tags = "train"),
        importance = p_fct(default = FALSE,
          levels = c("mse", "nudepurity", "none"),
          special_vals = list(FALSE),
          tags = "train"),
        localImp = p_lgl(default = FALSE, tags = "train"),
        proximity = p_lgl(default = FALSE, tags = c("train", "predict")),
        oob.prox = p_lgl(tags = "train"),
        norm.votes = p_lgl(default = TRUE, tags = "train"),
        do.trace = p_lgl(default = FALSE, tags = "train"),
        keep.forest = p_lgl(default = TRUE, tags = "train"),
        keep.inbag = p_lgl(default = FALSE, tags = "train"),
        predict.all = p_lgl(default = FALSE, tags = "predict"),
        nodes = p_lgl(default = FALSE, tags = "predict")
      )

      super$initialize(
        id = "regr.randomForest",
        packages = c("mlr3extralearners", "randomForest"),
        feature_types = c("integer", "numeric", "factor", "ordered", "logical"),
        predict_types = c("response"),
        param_set = ps,
        properties = c("weights", "importance", "oob_error"),
        man = "mlr3extralearners::mlr_learners_regr.randomForest",
        label = "Random Forest"
      )
    },

    #' @description
    #' The importance scores are extracted from the slot `importance`.
    #' Parameter 'importance' must be set to either `"mse"` or `"nodepurity"`.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      imp = data.frame(self$model$importance)
      colnames(imp)[colnames(imp) == "X.IncMSE"] = "%IncMSE"
      ## correct for language error on special characters
      pars = self$param_set$get_values()

      scores = switch(pars[["importance"]],
        "mse" = imp[["%IncMSE"]],
        "nodepurity" = imp[["IncNodePurity"]],
        stop("No importance available. Try setting 'importance' to 'mse' or 'nodepurity'.")
      )

      sort(stats::setNames(scores, rownames(imp)), decreasing = TRUE)
    },

    #' @description
    #' OOB errors are extracted from the model slot `mse`.
    #' @return `numeric(1)`.
    oob_error = function() {
      mean(self$model$mse)
    }
  ),

  private = list(
    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")
      formula = task$formula()
      data = task$data()

      # randomForest() only accepts TRUE and FALSE during fitting and the
      # specific importance methods are honored post-fitting only
      if (!is.null(pars$importance)) {
        pars$importance = TRUE
      }

      invoke(randomForest::randomForest,
        formula = formula,
        data = data, .args = pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      type = self$predict_type

      pred = invoke(predict, self$model,
        newdata = newdata,
        type = type, .args = pars)

      list(response = pred)
    }
  )
)

.extralrns_dict$add("regr.randomForest", LearnerRegrRandomForest)

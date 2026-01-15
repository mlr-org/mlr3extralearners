#' @title Regression Regularized Random Forest Learner
#'
#' @author awinterstetter
#' @name mlr_learners_regr.RRF
#'
#' @description
#' Regularized random forest for regression.
#' Calls [RRF::RRF()] from \CRANpkg{RRF}.
#'
#' @templateVar id regr.RRF
#' @template learner
#'
#' @references
#' `r format_bib("deng2012rrf", "deng2013grrf")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrRRF = R6Class("LearnerRegrRRF",
  inherit = LearnerRegr,

  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        ntree          = p_int(default = 500L, lower = 1L, tags = "train"),
        mtry           = p_int(lower = 1L, tags = "train"),
        nodesize       = p_int(lower = 1L, tags = "train"),
        replace        = p_lgl(default = TRUE, tags = "train"),
        flagReg        = p_int(default = 1L, lower = 0L, tags = "train"),
        coefReg        = p_dbl(default = 0.8, depends = quote(flagReg == 1L), tags = "train"),
        feaIni         = p_uty(depends = quote(flagReg == 1L), custom_check = function(x) checkmate::checkInteger(x, lower = 0, any.missing = FALSE), tags = "train"),
        corr.bias      = p_lgl(default = FALSE, tags = "train"),
        maxnodes       = p_int(lower = 1L, tags = "train"),
        importance     = p_lgl(default = FALSE, tags = "train"),
        localImp       = p_lgl(default = FALSE, tags = "train"),
        nPerm          = p_int(default = 1L, lower = 1L, tags = "train"),
        proximity      = p_lgl(default = FALSE, tags = c("train", "predict")),
        oob.prox       = p_lgl(default = FALSE, tags = "train"),
        do.trace       = p_lgl(default = FALSE, tags = "train"),
        keep.inbag     = p_lgl(default = FALSE, tags = "train"),
        keep.forest    = p_lgl(default = TRUE, tags = "train"),
        strata         = p_uty(tags = "train"),
        sampsize       = p_uty(tags = "train"),
        predict.all    = p_lgl(default = FALSE, tags = "predict"),
        nodes          = p_lgl(default = FALSE, tags = "predict")
      )

      super$initialize(
        id = "regr.RRF",
        packages = c("mlr3extralearners", "RRF"),
        feature_types = c("integer", "numeric", "factor"),
        predict_types = "response",
        param_set = param_set,
        properties = c("importance", "oob_error"),
        man = "mlr3extralearners::mlr_learners_regr.RRF",
        label = "Regularized Random Forest"
      )
    },

    #' @description
    #' The importance scores are extracted from the slot `importance`.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }

      imp = self$model$importance
      if (is.null(imp)) {
        stop("No importance available. Set 'importance = TRUE' in the parameter set.")
      }

      imp = data.frame(imp)
      colnames(imp)[colnames(imp) == "X.IncMSE"] = "%IncMSE"

      col_keep = intersect(c("%IncMSE", "IncMSE", "IncNodePurity"), colnames(imp))
      scores = imp[[if (length(col_keep)) col_keep[[1L]] else colnames(imp)[1L]]]

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

      mlr3misc::invoke(RRF::RRF,
        formula = task$formula(),
        data = task$data(),
        .args = pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)

      pred = mlr3misc::invoke(predict,
        object = self$model,
        newdata = newdata,
        type = self$predict_type,
        .args = pars)

      list(response = pred)
    }
  )
)

.extralrns_dict$add("regr.RRF", LearnerRegrRRF)

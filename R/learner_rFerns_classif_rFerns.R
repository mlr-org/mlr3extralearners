#' @title Random Ferns Classification Learner
#' @author annanzrv
#' @name mlr_learners_classif.rFerns
#'
#' @description
#' Ensemble machine learning algorithm based on Random Ferns, which are a simplified,
#' faster alternative to Random Forests.
#' Calls [rFerns::rFerns()] from \CRANpkg{rFerns}.
#'
#' @section Initial parameter values:
#' - `importance`:
#'   - Actual default: `FALSE`
#'   - Initial value: `"simple"`
#'   - Reason for change: The default value of `FALSE` will resolve to "none", which
#'     turns importance calculation off. To enable importance calculation by default,
#'     `importance` is set to `"simple"`.
#'
#' @templateVar id classif.rFerns
#' @template learner
#'
#' @references
#' `r format_bib("kursa2014rferns", "ozuyal2010rferns")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifRferns = R6Class("LearnerClassifRferns",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        consistentSeed = p_uty(default = NULL, custom_check = function(p) checkmate::checkInteger(p, len = 2, null.ok = TRUE), tags = "train"),
        depth          = p_int(lower = 1L, upper = 16L, default = 5L, tags = "train"), # can be tuned
        ferns          = p_int(default = 1000L, tags = "train"),
        importance     = p_uty(default = FALSE, tags = "train"),
        saveForest     = p_lgl(default = TRUE, tags = "train"),
        threads        = p_int(default = 0, tags = "train")
      )

      param_set$values = list(importance = "simple")

      super$initialize(
        id = "classif.rFerns",
        packages = "rFerns",
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = "response",
        param_set = param_set,
        properties = c("importance", "missings", "multiclass", "twoclass", "oob_error"),
        man = "mlr3extralearners::mlr_learners_classif.rFerns",
        label = "Random Ferns Classifier"
      )
    },

    #' @description
    #' The importance scores are extracted from the model slot `importance`.
    #' @return Named `numeric()`.
    importance = function() {
      imp = self$model$importance
      if (is.null(imp)) {
        stop("No importance available. Try setting 'importance' to TRUE, 'simple' or 'shadow'.")
      }
      imp["feature"] = rownames(imp)
      sort(stats::setNames(imp$MeanScoreLoss, imp$feature), decreasing = TRUE)
    },

    #' @description
    #' OOB error is extracted from the model slot `oobErr`.
    #' @return `numeric(1)`.
    oob_error = function() {
      self$model$oobErr
    }
  ),
  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      data = task$data()
      X = task$data(cols = task$feature_names)
      y = data[[task$target_names]]
      invoke(
        rFerns::rFerns,
        x = X,
        y = y,
        .args = pars
      )
    },
    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      pred = invoke(predict, self$model, x = newdata, .args = pars)
      list(response = pred)

    }
  )
)

.extralrns_dict$add("classif.rFerns", LearnerClassifRferns)

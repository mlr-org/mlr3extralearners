#' @title Classification Boosting Learner
#' @author annanzrv
#' @name mlr_learners_classif.adabag
#'
#' @description
#' Classification boosting algorithm.
#' Calls `adabag::boosting()` from \CRANpkg{adabag}.
#'
#' @section Initial parameter values:
#' - `xval`:
#'   * Actual default: 10L
#'   * Initial value: 0L
#'   * Reason for change: Set to 0 for speed.
#'
#' @references
#' `r format_bib("adabag2013")`
#'
#' @templateVar id classif.adabag
#' @template learner
#'
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifAdabag = R6Class("LearnerClassifAdabag",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        boos           = p_lgl(default = TRUE, tags = "train"),
        coeflearn      = p_fct(default = "Breiman", levels = c("Breiman", "Freund", "Zhu"), tags = "train"),
        cp             = p_dbl(default = 0.01, lower = 0, upper = 1, tags = "train"),
        maxcompete     = p_int(default = 4L, lower = 0L, tags = "train"),
        maxdepth       = p_int(default = 30L, lower = 1L, upper = 30L, tags = "train"),
        maxsurrogate   = p_int(default = 5L, lower = 0L, tags = "train"),
        mfinal         = p_int(default = 100L, lower = 1L, tags = "train"),
        minbucket      = p_int(lower = 1L, tags = "train"),
        minsplit       = p_int(default = 20L, lower = 1L, tags = "train"),
        newmfinal      = p_int(tags = "predict"),
        surrogatestyle = p_int(default = 0L, lower = 0L, upper = 1L, tags = "train"),
        usesurrogate   = p_int(default = 2L, lower = 0L, upper = 2L, tags = "train"),
        xval           = p_int(default = 0L, lower = 0L, tags = "train")
      )
      param_set$values = list(xval = 0L)

      super$initialize(
        id = "classif.adabag",
        packages = c("adabag", "rpart"),
        feature_types = c("integer", "numeric", "factor"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("importance", "missings", "multiclass", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.adabag",
        label = "Adabag Boosting"
      )
    },
    #' @description
    #' The importance scores are extracted from the model.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      sort(self$model$importance, decreasing = TRUE)
    }
  ),

  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      args_ctrl = formalArgs(rpart::rpart.control)
      pars_ctrl = pars[names(pars) %in% args_ctrl]

      # Create rpart control object
      ctrl = invoke(
        rpart::rpart.control,
        .args = pars_ctrl
      )

      # Remove rpart control parameters from pars
      pars = pars[names(pars) %nin% args_ctrl]

      # Add control to pars
      pars$control = ctrl

      # Get formula and data
      formula = task$formula()
      data = task$data()

      # Train model
      invoke(adabag::boosting,
        formula = formula,
        data = data,
        .args = pars
      )
    },
    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = ordered_features(task, self)

      # Calculate predictions for the selected predict type
      type = self$predict_type

      # adaboost requires target column
      newdata[, "target"] = factor(rep(1, nrow(newdata)), levels = task$class_names)

      pred = invoke(predict, self$model, newdata = newdata, .args = pars)

      if (type == "prob") {
        # Ensure probabilities are ordered according to task class levels
        prob = mlr3misc::set_col_names(pred$prob, task$class_names)
        list(prob = prob)
      } else {
        # Create response factor with correct levels
        response = factor(pred$class, levels = task$class_names)
        list(response = response)
      }
    }
  )
)

.extralrns_dict$add("classif.adabag", LearnerClassifAdabag)

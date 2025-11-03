#' @title Classification Boosting Learner
#' @author annanzrv
#' @name mlr_learners_classif.ada
#'
#' @description
#' Classification using ada.
#' Calls [ada::ada()] from \CRANpkg{ada}.
#'
#' @section Initial parameter values:
#' - `xval` is set to `0` by default for speed.
#'
#' @templateVar id classif.ada
#' @template learner
#'
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifAdaBoosting = R6Class("LearnerClassifAdaBoosting",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        bag.frac       = p_dbl(default = 0.5, lower = 0, upper = 1, tags = "train"),
        bag.shift      = p_lgl(default = FALSE, tags = "train"),
        cp             = p_dbl(default = 0.01, lower = 0, upper = 1, tags = "train"),
        delta          = p_dbl(default = 1e-10, lower = 0, tags = "train"),
        iter           = p_int(default = 50L, lower = 1L, tags = "train"),
        loss           = p_fct(default = "exponential", levels = c("exponential", "logistic"),
                               tags = "train"),
        max.iter       = p_int(default = 20L, lower = 1L, tags = "train"),
        maxcompete     = p_int(default = 4L, lower = 0L, tags = "train"),
        maxdepth       = p_int(default = 30L, lower = 1L, upper = 30L, tags = "train"),
        maxsurrogate   = p_int(default = 5L, lower = 0L, tags = "train"),
        minbucket      = p_int(lower = 1L, tags = "train"),
        minsplit       = p_int(default = 20L, lower = 1L, tags = "train"),
        model.coef     = p_lgl(default = TRUE, tags = "train"),
        n.iter         = p_int(default = 50L, lower = 1L, tags = "predict"),
        nu             = p_dbl(default = 0.1, lower = 0, tags = "train"),
        surrogatestyle = p_int(default = 0L, lower = 0L, upper = 1L, tags = "train"),
        type           = p_fct(default = "discrete", levels = c("discrete", "real", "gentle"),
                               tags = "train"),
        usesurrogate   = p_int(default = 2L, lower = 0L, upper = 2L, tags = "train"),
        verbose        = p_lgl(default = FALSE, tags = "train"),
        xval           = p_int(default = 0L, lower = 0L, tags = "train")

      )

      param_set$values = list(xval = 0L)

      super$initialize(
        id = "classif.ada",
        packages = c("mlr3extralearners", "ada", "rpart"),
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("oob_error", "missings", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.ada",
        label = "ada Boosting"
      )
    },
    #' @description
    #' The oob error is extracted extracted from the model slot `$model$errs`.
    #' @return Named `numeric()`.
    oob_error = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      self$model$model$errs[1L]

    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      # get names of rpart.control args
      args_ctrl = formalArgs(rpart::rpart.control)
      pars_ctrl = pars[names(pars) %in% args_ctrl]
      pars = pars[names(pars) %nin% args_ctrl]

      ada_args = c(pars, control = list(pars_ctrl))
      invoke(
        ada::ada,
        formula = task$formula(),
        data = task$data(),
        .args = ada_args
      )
    },
    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = ordered_features(task, self)

      # Calculate predictions for the selected predict type.
      type = ifelse(self$predict_type == "response", "vector", "probs")
      pred = invoke(predict, self$model, newdata = newdata, type = type, .args = pars)

      if (type == "probs") {
        colnames(pred) = rownames(self$model$confusion)
        list(prob = pred)
      } else {
        list(response = pred)
      }
    }
  )
)

.extralrns_dict$add("classif.ada", LearnerClassifAdaBoosting)

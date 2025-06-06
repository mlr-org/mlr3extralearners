#' @title Regression Priority Lasso Learner
#' @author HarutyunyanLiana
#' @name mlr_learners_regr.priority_lasso
#'
#' @description
#' Patient outcome prediction based on multi-omics data taking practitioners’ preferences into account.
#' Calls [prioritylasso::prioritylasso()] from \CRANpkg{prioritylasso}.
#'
#' @section Initial parameter values:
#' - `family` is set to `"gaussian"` and cannot be changed
#' - `type.measure` set to `"mse"` (cross-validation measure)
#'
#' @templateVar id regr.priority_lasso
#' @template learner
#'
#' @references
#' `r format_bib("klau2018priolasso")`
#'
#' @template seealso_learner
#' @examplesIf requireNamespace("prioritylasso", quietly = TRUE)
#' # Define the Learner and set parameter values
#' learner = lrn("regr.priority_lasso",
#'   blocks = list(bp1 = 1:4, bp2 = 5:9, bp3 = 10:28, bp4 = 29:1028))
#' print(learner)
#'
#' # Define a Task
#' task = mlr3::as_task_regr(prioritylasso::pl_data, target = "pl_out")
#'
#' # Create train and test set
#' ids = mlr3::partition(task)
#'
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#'
#' # print the model
#' print(learner$model)
#'
#'  # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()
#' @export
LearnerRegrPriorityLasso = R6Class("LearnerRegrPriorityLasso",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        blocks               = p_uty(tags = c("train", "required")),
        max.coef             = p_uty(default = NULL, tags = "train"),
        block1.penalization  = p_lgl(default = TRUE, tags = "train"),
        lambda.type          = p_fct(default = "lambda.min", levels = c("lambda.min", "lambda.1se"), tags = c("train", "predict")),
        standardize          = p_lgl(default = TRUE, tags = "train"),
        nfolds               = p_int(default = 5L, lower = 1L, tags = "train"),
        foldid               = p_uty(default = NULL, tags = "train"),
        cvoffset             = p_lgl(default = FALSE, tags = "train"),
        cvoffsetnfolds       = p_int(default = 10, lower = 1L, tags = "train"),
        handle.missingtestdata = p_fct(c("none", "omit.prediction", "set.zero", "impute.block"), tags = "predict"),
        include.allintercepts = p_lgl(default = FALSE, tags = "predict"),
        use.blocks = p_uty(default = "all", tags = "predict"),

        # params from cv.glmnet
        alignment            = p_fct(c("lambda", "fraction"), default = "lambda", tags = "train"),
        alpha                = p_dbl(0, 1, default = 1, tags = "train"),
        big                  = p_dbl(default = 9.9e35, tags = "train"),
        devmax               = p_dbl(0, 1, default = 0.999, tags = "train"),
        dfmax                = p_int(0L, tags = "train"),
        eps                  = p_dbl(0, 1, default = 1.0e-6, tags = "train"),
        epsnr                = p_dbl(0, 1, default = 1.0e-8, tags = "train"),
        exclude              = p_uty(tags = "train"),
        exmx                 = p_dbl(default = 250.0, tags = "train"),
        fdev                 = p_dbl(0, 1, default = 1.0e-5, tags = "train"),
        gamma                = p_uty(tags = "train"),
        grouped              = p_lgl(default = TRUE, tags = "train"),
        intercept            = p_lgl(default = TRUE, tags = "train"),
        keep                 = p_lgl(default = FALSE, tags = "train"),
        lambda               = p_uty(tags = "train"),
        lambda.min.ratio     = p_dbl(0, 1, tags = "train"),
        lower.limits         = p_uty(default = -Inf, tags = "train"),
        maxit                = p_int(1L, default = 100000L, tags = "train"),
        mnlam                = p_int(1L, default = 5L, tags = "train"),
        mxit                 = p_int(1L, default = 100L, tags = "train"),
        mxitnr               = p_int(1L, default = 25L, tags = "train"),
        nlambda              = p_int(1L, default = 100L, tags = "train"),
        offset               = p_uty(default = NULL, tags = "train"),
        parallel             = p_lgl(default = FALSE, tags = "train"),
        penalty.factor       = p_uty(tags = "train"),
        pmax                 = p_int(0L, tags = "train"),
        pmin                 = p_dbl(0, 1, default = 1.0e-9, tags = "train"),
        prec                 = p_dbl(default = 1e-10, tags = "train"),
        standardize.response = p_lgl(default = FALSE, tags = "train"),
        thresh               = p_dbl(0, default = 1e-07, tags = "train"),
        trace.it             = p_int(0, 1, default = 0, tags = "train"),
        type.gaussian        = p_fct(c("covariance", "naive"), tags = "train"),
        type.logistic        = p_fct(c("Newton", "modified.Newton"), default = "Newton", tags = "train"),
        type.multinomial     = p_fct(c("ungrouped", "grouped"), default = "ungrouped", tags = "train"),
        upper.limits         = p_uty(default = Inf, tags = "train"),
        scale.y              = p_lgl(default = FALSE, tags = "train"),
        return.x             = p_lgl(default = TRUE, tags = "train"),
        predict.gamma        = p_dbl(default = "gamma.1se", special_vals = list("gamma.1se", "gamma.min"), tags = "predict"), # nolint
        relax                = p_lgl(default = FALSE, tags = "train"),
        s                    = p_dbl(0, 1, special_vals = list("lambda.1se", "lambda.min"), default = "lambda.1se", tags = "predict") # nolint

      )

      super$initialize(
        id = "regr.priority_lasso",
        packages = "prioritylasso",
        feature_types = c("logical", "integer", "numeric"),
        predict_types = "response",
        param_set = param_set,
        properties = c("weights", "selected_features"),
        man = "mlr3extralearners::mlr_learners_regr.priority_lasso",
        label = "Priority Lasso"
      )
    },

    #' @description
    #' Selected features when coef is positive
    #' @return `character()`.
    selected_features = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      coefs = self$model$coefficients
      coefs = coefs[coefs != 0]
      names(coefs)
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")
      pars$family = "gaussian"
      pars$type.measure = "mse"
      pars$weights = private$.get_weights(task)

      data = as.matrix(task$data(cols = task$feature_names))
      target = task$truth()
      invoke(prioritylasso::prioritylasso,
             X = data, Y = target,
             .args = pars)
    },
    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")
      pars = rename(pars, "predict.gamma", "gamma")

      # get newdata and ensure same ordering in train and predict
      newdata = as.matrix(ordered_features(task, self))

      pred = invoke(predict, self$model, newdata = newdata, type = "response", .args = pars)

      list(response = pred)
    }
  )
)

.extralrns_dict$add("regr.priority_lasso", LearnerRegrPriorityLasso)

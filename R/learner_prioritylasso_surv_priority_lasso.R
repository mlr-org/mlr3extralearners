#' @title Survival Priority Lasso Learner
#' @author HarutyunyanLiana
#' @name mlr_learners_surv.priority_lasso
#'
#' @description
#' Patient outcome prediction based on multi-omics data taking practitioners’ preferences into account.
#' Calls [prioritylasso::prioritylasso()] from \CRANpkg{prioritylasso}.
#' Many parameters for this survival learner are the same as [mlr_learners_surv.cv_glmnet]
#' as `prioritylasso()` calls [glmnet::cv.glmnet()] during training phase.
#' Note that `prioritylasso()` has ways to deal with block-wise missing data,
#' but this feature is not supported currently.
#'
#' @section Prediction types:
#' This learner returns three prediction types:
#' 1. `lp`: a vector containing the linear predictors (relative risk scores),
#' where each score corresponds to a specific test observation.
#' Calculated using [prioritylasso::predict.prioritylasso()].
#' 2. `crank`: same as `lp`.
#' 3. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' Calculated using [mlr3proba::breslow()] where the Breslow estimator is used
#' for computing the baseline hazard.
#'
#' @section Initial parameter values:
#' - `family` is set to `"cox"` for the Cox survival objective and cannot be changed
#' - `type.measure` set to `"deviance"` (cross-validation measure)
#'
#' @templateVar id surv.priority_lasso
#' @template learner
#'
#' @references
#' `r format_bib("klau2018priolasso")`
#'
#' @template seealso_learner
#' @examplesIf learner_is_runnable("surv.priority_lasso")
#' # Define a Task
#' task = tsk("grace")
#' # Create train and test set
#' ids = partition(task)
#' # check task's features
#' task$feature_names
#' # partition features to 2 blocks
#' blocks = list(bl1 = 1:3, bl2 = 4:6)
#' # define learner
#' learner = lrn("surv.priority_lasso", blocks = blocks, block1.penalization = FALSE,
#'               lambda.type = "lambda.1se", standardize = TRUE, nfolds = 5)
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#' # selected features
#' learner$selected_features()
#' # Make predictions for the test observations
#' pred = learner$predict(task, row_ids = ids$test)
#' pred
#' # Score the predictions
#' pred$score()
#' @export
LearnerSurvPriorityLasso = R6Class("LearnerSurvPriorityLasso",
  inherit = mlr3proba::LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        blocks                 = p_uty(tags = c("train", "required")),
        max.coef               = p_uty(default = NULL, tags = "train"),
        block1.penalization    = p_lgl(default = TRUE, tags = "train"),
        lambda.type            = p_fct(default = "lambda.min", levels = c("lambda.min", "lambda.1se"), tags = "train"),
        standardize            = p_lgl(default = TRUE, tags = "train"),
        nfolds                 = p_int(default = 5L, lower = 1L, tags = "train"),
        foldid                 = p_uty(default = NULL, tags = "train"),
        cvoffset               = p_lgl(default = FALSE, tags = "train"),
        cvoffsetnfolds         = p_int(default = 10, lower = 1L, tags = "train"),
        return.x               = p_lgl(default = TRUE, tags = "train"),
        include.allintercepts  = p_lgl(default = FALSE, tags = "predict"),
        use.blocks             = p_uty(default = "all", tags = "predict"),

        # params from cv.glmnet, passed to `prioritylasso()` during `.train()`
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
        relax                = p_lgl(default = FALSE, tags = "train")
      )

      super$initialize(
        id = "surv.priority_lasso",
        packages = "prioritylasso",
        feature_types = c("logical", "integer", "numeric"),
        predict_types = c("crank", "lp", "distr"),
        param_set = param_set,
        properties = c("weights", "selected_features"),
        man = "mlr3extralearners::mlr_learners_surv.priority_lasso",
        label = "Priority Lasso"
      )
    },

    #' @description
    #' Selected features, i.e. those where the coefficient is non-zero.
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
      pars$family = "cox"
      pars$type.measure = "deviance"
      pars$weights = private$.get_weights(task)

      data = as.matrix(task$data(cols = task$feature_names))
      target = task$truth()

      model = invoke(prioritylasso::prioritylasso, X = data, Y = target, .args = pars)
      # add (time, status) of training data for breslow distr prediction
      model$train_times = task$times()
      model$train_status = task$status()

      model
    },

    .predict = function(task) {
      # get newdata and ensure same ordering in train and predict
      newdata = as.matrix(ordered_features(task, self))

      # get parameters with tag "predict"
      pv = self$param_set$get_values(tags = "predict")

      # get linear predictor for train data
      lp_train = as.numeric(
        invoke(predict, self$model, type = "link", .args = pv)
      )

      # get linear predictor for test data
      lp_test = as.numeric(
        invoke(predict, self$model, newdata = newdata, type = "link", .args = pv)
      )

      # get survival probability matrix using the Breslow estimator for the baseline hazard
      surv = mlr3proba::breslow(
        times = self$model$train_times,
        status = self$model$train_status,
        lp_train = lp_train,
        lp_test = lp_test
      )

      mlr3proba::.surv_return(surv = surv, lp = lp_test)
    }
  )
)

.extralrns_dict$add("surv.priority_lasso", LearnerSurvPriorityLasso)

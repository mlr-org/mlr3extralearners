#' @title Classification Priority Lasso Learner
#' @author HarutyunyanLiana
#' @name mlr_learners_classif.priority_lasso
#'
#' @description
#' Patient outcome prediction based on multi-omics data taking practitioners’ preferences into account.
#' Calls [prioritylasso::prioritylasso()] from \CRANpkg{prioritylasso}.
#'
#' @section Initial parameter values:
#' - `family` is set to `"binomial"` and canno be changed
#'
#' @templateVar id classif.priority_lasso
#' @template learner
#'
#' @references
#' `r format_bib("klau2018priolasso")`
#'
#' @template seealso_learner
#' @examplesIf requireNamespace("prioritylasso", quietly = TRUE)
#' # Define the Learner and set parameter values
#' learner = lrn("classif.priority_lasso", type.measure = "auc",
#'   blocks = list(bp1 = 1:4, bp2 = 5:9, bp3 = 10:28, bp4 = 29:1028))
#' print(learner)
#'
#' # Define a Task
#' task = mlr3::as_task_classif(prioritylasso::pl_data, target = "pl_out")
#'
#' # Train the learner
#' learner$train(task)
#'
#' # print the model
#' print(learner$model)
#' @export
LearnerClassifPriorityLasso = R6Class("LearnerClassifPriorityLasso",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        blocks               = p_uty(tags = c("train", "required")),
        type.measure         = p_fct(levels = c("class", "auc"), tags = c("train", "required")),
        max.coef             = p_uty(default = NULL, tags = "train"),
        block1.penalization  = p_lgl(default = TRUE, tags = "train"),
        lambda.type          = p_fct(default = "lambda.min", levels = c("lambda.min", "lambda.1se"), tags = c("train", "predict")), #nolint
        standardize          = p_lgl(default = TRUE, tags = "train"),
        nfolds               = p_int(default = 5L, lower = 1L, tags = "train"),
        foldid               = p_uty(default = NULL, tags = "train"),
        cvoffset             = p_lgl(default = FALSE, tags = "train"),
        cvoffsetnfolds       = p_int(default = 10, lower = 1L, tags = "train"),
        return.x             = p_lgl(default = TRUE, tags = "train"),
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
        predict.gamma        = p_dbl(default = "gamma.1se", special_vals = list("gamma.1se", "gamma.min"), tags = "predict"), #nolint
        relax                = p_lgl(default = FALSE, tags = "train"),
        s                    = p_dbl(0, 1, special_vals = list("lambda.1se", "lambda.min"), default = "lambda.1se", tags = "predict"), #nolint
        standardize.response = p_lgl(default = FALSE, tags = "train"),
        thresh               = p_dbl(0, default = 1e-07, tags = "train"),
        trace.it             = p_int(0, 1, default = 0, tags = "train"),
        type.gaussian        = p_fct(c("covariance", "naive"), tags = "train"),
        type.logistic        = p_fct(c("Newton", "modified.Newton"), default = "Newton", tags = "train"),
        type.multinomial     = p_fct(c("ungrouped", "grouped"), default = "ungrouped", tags = "train"),
        upper.limits         = p_uty(default = Inf, tags = "train")
      )

      super$initialize(
        id = "classif.priority_lasso",
        packages = "prioritylasso",
        feature_types = c("logical", "integer", "numeric"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("weights", "selected_features", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.priority_lasso",
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
      pars$family = "binomial"
      pars$weights = private$.get_weights(task)

      data = as_numeric_matrix(task$data(cols = task$feature_names))
      target = task$truth()
      invoke(prioritylasso::prioritylasso,
             X = data, Y = target,
             .args = pars)
    },
    .predict = function(task) {
      newdata = as_numeric_matrix(ordered_features(task, self))
      pv = self$param_set$get_values(tags = "predict")
      pv = rename(pv, "predict.gamma", "gamma")

      p = invoke(predict, self$model,
        newdata = newdata, type = "response",
        .args = pv)
      p = drop(p)
      classnames = self$model$glmnet.fit[[1L]]$classnames
      if (self$predict_type == "response") {
        response = ifelse(p <= 0.5, classnames[1L], classnames[2L])
        list(response = drop(response))
      } else {
        prob = cbind(1 - p, p)
        colnames(prob) = classnames
        list(prob = prob)
      }
    }
  )
)

.extralrns_dict$add("classif.priority_lasso", LearnerClassifPriorityLasso)

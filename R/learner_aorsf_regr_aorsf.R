#' @title Oblique Random Forest Regressor
#' @author annanzrv
#' @name mlr_learners_regr.aorsf
#'
#' @description
#' Accelerated oblique random regression forest.
#' Calls [aorsf::orsf()] from \CRANpkg{aorsf}.
#' Note that although the learner has the property `"missing"` and it can in
#' principle deal with missing values, the behaviour has to be configured using
#' the parameter `na_action`.
#'
#' @section Initial parameter values:
#' * `n_thread`: This parameter is initialized to 1 (default is 0) to avoid conflicts with the mlr3 parallelization.
#' * `pred_simplify` has to be TRUE, otherwise response is NA in prediction
#'
#' @template seealso_learner
#' @examplesIf learner_is_runnable("regr.aorsf")
#' # Define the Learner
#' learner = lrn("regr.aorsf", importance = "anova")
#' print(learner)
#'
#' # Define a Task
#' task = tsk("mtcars")
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
#'
#' @export
LearnerRegrObliqueRandomForest = R6Class("LearnerRegrObliqueRandomForest",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        attach_data             = p_lgl(default = TRUE, tags = "train"),
        epsilon                 = p_dbl(default = 1e-9, lower = 0, tags = "train"),
        importance              = p_fct(levels = c("none", "anova", "negate", "permute"), default = "anova", tags = "train"),
        importance_max_pvalue   = p_dbl(default = 0.01, lower = 0.0001, upper = .9999, tags = "train"),
        leaf_min_events         = p_int(default = 1L, lower = 1L, tags = "train"),
        leaf_min_obs            = p_int(default = 5L, lower = 1L, tags = "train"),
        max_iter                = p_int(default = 20L, lower = 1, tags = "train"),
        method                  = p_fct(levels = c("glm", "net", "pca", "random"), default = "glm", tags = "train"),
        mtry                    = p_int(default = NULL, lower = 1L, special_vals = list(NULL), tags = "train"),
        mtry_ratio              = p_dbl(lower = 0, upper = 1, tags = "train"),
        n_retry                 = p_int(default = 3L, lower = 0L, tags = "train"),
        n_split                 = p_int(default = 5L, lower = 1L, tags = "train"),
        n_thread                = p_int(init = 1, lower = 0, tags = c("train", "predict", "threads")),
        n_tree                  = p_int(default = 500L, lower = 1L, tags = "train"),
        na_action               = p_fct(levels = c("fail", "impute_meanmode"), default = "fail", tags = c("train", "predict")),
        net_mix                 = p_dbl(default = 0.5, tags = "train"),
        oobag                   = p_lgl(default = FALSE, tags = "predict"),
        oobag_eval_every        = p_int(default = NULL, special_vals = list(NULL), lower = 1, tags = "train"),
        oobag_fun               = p_uty(default = NULL, special_vals = list(NULL), tags = "train", custom_check = function(x) checkmate::checkFunction(x, nargs = 3)),
        oobag_pred_type         = p_fct(levels = c("none", "leaf", "mean"), default = "mean", tags = "train"),
        pred_aggregate          = p_lgl(default = TRUE, tags = "predict"),
        # pred_simplify         = p_lgl(default = TRUE, tags = "predict"),  # can't be FALSE, otherwise response is NA in prediction
        sample_fraction         = p_dbl(lower = 0, upper = 1, default = .632, tags = "train"),
        sample_with_replacement = p_lgl(default = TRUE, tags = "train"),
        scale_x                 = p_lgl(default = FALSE, tags = "train"),
        split_min_events        = p_int(default = 5L, lower = 1L, tags = "train"),
        split_min_obs           = p_int(default = 10, lower = 1L, tags = "train"),
        split_min_stat          = p_dbl(default = NULL, special_vals = list(NULL), lower = 0, tags = "train"),
        split_rule              = p_fct(levels = "variance", default = "variance", tags = "train"),
        target_df               = p_int(default = NULL, lower = 1L, special_vals = list(NULL), tags = "train"),
        tree_seeds              = p_int(default = NULL, lower = 1L, special_vals = list(NULL), tags = "train"),
        verbose_progress        = p_lgl(default = FALSE, tags = "train"))

      super$initialize(
        id = "regr.aorsf",
        packages = c("mlr3extralearners", "aorsf"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = "response",
        param_set = ps,
        properties = c("oob_error", "importance", "missings", "weights"),
        man = "mlr3extralearners::mlr_learners_regr.aorsf",
        label = "Oblique Random Forest Regressor"
      )
    },

    #' @description
    #' OOB concordance error extracted from the model slot
    #' `eval_oobag$stat_values`
    #' @return `numeric()`.
    oob_error = function() {
      nrows = nrow(self$model$eval_oobag$stat_values)
      1 - self$model$eval_oobag$stat_values[nrows, 1L]
    },

    #' @description
    #' The importance scores are extracted from the model.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      sort(aorsf::orsf_vi(self$model, group_factors = TRUE),
           decreasing = TRUE)
    }
  ),

  private = list(
    .train = function(task) {
      # initialize
      args_ctrl = formalArgs(aorsf::orsf_control_classification)
      pv = self$param_set$get_values(tags = "train")
      pv = convert_ratio(pv, "mtry", "mtry_ratio",
                         length(task$feature_names))
      pv_ctrl = pv[names(pv) %in% args_ctrl]
      pv_train = pv[names(pv) %nin% args_ctrl]

      ctrl = invoke(aorsf::orsf_control_regression, .args = pv_ctrl)

      # default value for oobag_eval_every is ntree, but putting
      # default = ntree in p_int() above would be problematic, so:
      if (is.null(pv$oobag_eval_every)) {
        val = pv[["n_tree"]]
        # if value not set, set to default value and pass to oobag_eval_every
        if (is.null(val)) val = self$param_set$default[["ntree"]]
        pv$oobag_eval_every = val
      }

      invoke(
        aorsf::orsf,
        data = task$data(),
        formula = task$formula(),
        weights = private$.get_weights(task),
        control = ctrl,
        no_fit = FALSE,
        .args = pv
      )
    },
    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      pred = invoke(predict, self$model,
                    new_data = newdata,
                    pred_type = "mean",
                    pred_simplify = TRUE,
                    .args = pars)
      list(response = pred)
    }
  )
)

.extralrns_dict$add("regr.aorsf", LearnerRegrObliqueRandomForest)

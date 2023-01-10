#' @title Classification LightGBM Learner
#' @author kapsner
#' @name mlr_learners_classif.lightgbm
#'
#' @description
#' Gradient boosting algorithm.
#' Calls [lightgbm::lightgbm()] from \CRANpkg{lightgbm}.
#' The list of parameters can be found [here](https://lightgbm.readthedocs.io/en/latest/Parameters.html#)
#' and in the documentation of [lightgbm::lgb.train()].
#' Note that lightgbm models have to be saved using `lightgbm::lgb.save`, so you cannot simpliy
#' save the learner using `saveRDS`. This will change in future versions of lightgbm.
#'
#' @template learner
#' @templateVar id classif.lightgbm
#'
#' @section Initial parameter values:
#' * `convert_categorical`:
#'   Additional parameter. If this parameter is set to `TRUE` (default), all factor and logical
#'   columns are converted to integers and the parameter categorical_feature of lightgbm is set to
#'   those columns.
#' * `num_class`:
#'  This parameter is automatically inferred for multiclass tasks and does not have to be set.
#' @section Custom mlr3 defaults:
#' * `num_threads`:
#'   * Actual default: 0L
#'   * Adjusted default: 1L
#'   * Reason for change: Prevents accidental conflicts with `future`.
#' * `verbose`:
#'   * Actual default: 1L
#'   * Adjusted default: -1L
#'   * Reason for change: Prevents accidental conflicts with mlr messaging system.
#' * `objective`:
#'   Depending if the task is binary / multiclass, the default is set to `"binary"` or
#'   `"multiclasss"`.
#' @section Custom mlr3 parameters:
#' * `early_stopping`
#'   Whether to use the test set for early stopping. Default is `FALSE`.
#'
#' @references
#' `r format_bib("ke2017lightgbm")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifLightGBM = R6Class("LearnerClassifLightGBM",
  inherit = LearnerClassif,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        # lgb.train core functions
        num_iterations = p_int(default = 100L, lower = 0L, tags = c("train", "hotstart")),
        objective = p_fct(levels = c("binary", "multiclass", "multiclassova"), tags = "train"),
        eval = p_uty(tags = "train"),
        verbose = p_int(default = 1L, tags = "train"),
        record = p_lgl(default = TRUE, tags = "train"),
        eval_freq = p_int(default = 1L, lower = 1L, tags = "train"),
        early_stopping_rounds = p_int(lower = 1L, tags = "train"),
        # early_stopping is a custom parameter
        early_stopping = p_lgl(default = FALSE, tags = "train"),
        callbacks = p_uty(tags = "train"),
        reset_data = p_lgl(default = FALSE, tags = "train"),
        categorical_feature = p_uty(default = "", tags = "train"),
        convert_categorical = p_lgl(default = TRUE, tags = "train"),
        # other core functions
        boosting = p_fct(default = "gbdt", levels = c("gbdt", "rf", "dart", "goss"), tags = "train"),
        linear_tree = p_lgl(default = FALSE, tags = "train"),
        learning_rate = p_dbl(default = 0.1, lower = 0.0, tags = "train"),
        num_leaves = p_int(default = 31L, lower = 1L, upper = 131072L, tags = "train"),
        tree_learner = p_fct(default = "serial", levels = c("serial", "feature",
          "data", "voting"), tags = "train"),
        num_threads = p_int(default = 0L, lower = 0L, tags = c("train", "threads")),
        device_type = p_fct(default = "cpu", levels = c("cpu", "gpu"), tags = "train"),
        seed = p_int(tags = "train"),
        deterministic = p_lgl(default = FALSE, tags = "train"),
        data_sample_strategy = p_fct(default = "bagging", levels =  c("bagging", "goss"), tags = "train"),

        # Learning control parameters
        force_col_wise = p_lgl(default = FALSE, tags = "train"),
        force_row_wise = p_lgl(default = FALSE, tags = "train"),
        histogram_pool_size = p_dbl(default = -1, tags = "train"),
        max_depth = p_int(default = -1L, tags = "train"),
        min_data_in_leaf = p_int(default = 20L, lower = 0L, tags = "train"),
        min_sum_hessian_in_leaf = p_dbl(default = 1e-3, lower = 0, tags = "train"),
        bagging_fraction = p_dbl(default = 1.0, lower = 0.0, upper = 1.0, tags = "train"),
        pos_bagging_fraction = p_dbl(default = 1.0, lower = 0.0, upper = 1.0, tags = "train"),
        neg_bagging_fraction = p_dbl(default = 1.0, lower = 0.0, upper = 1.0, tags = "train"),
        bagging_freq = p_int(default = 0L, lower = 0L, tags = "train"),
        bagging_seed = p_int(default = 3L, tags = "train"),
        feature_fraction = p_dbl(default = 1.0, lower = 0.0, upper = 1.0, tags = "train"),
        feature_fraction_bynode = p_dbl(default = 1.0, lower = 0.0, upper = 1.0, tags = "train"),
        feature_fraction_seed = p_int(default = 2L, tags = "train"),
        extra_trees = p_lgl(default = FALSE, tags = "train"),
        extra_seed = p_int(default = 6L, tags = "train"),
        first_metric_only = p_lgl(default = FALSE, tags = "train"),
        max_delta_step = p_dbl(default = 0.0, tags = "train"),
        lambda_l1 = p_dbl(default = 0.0, lower = 0.0, tags = "train"),
        lambda_l2 = p_dbl(default = 0.0, lower = 0.0, tags = "train"),
        linear_lambda = p_dbl(default = 0.0, lower = 0.0, tags = "train"),
        min_gain_to_split = p_dbl(default = 0.0, lower = 0.0, tags = "train"),
        drop_rate = p_dbl(default = 0.1, lower = 0.0, upper = 1.0, tags = "train"),
        max_drop = p_int(default = 50L, tags = "train"),
        skip_drop = p_dbl(default = 0.5, lower = 0.0, upper = 1.0, tags = "train"),
        xgboost_dart_mode = p_lgl(default = FALSE, tags = "train"),
        uniform_drop = p_lgl(default = FALSE, tags = "train"),
        drop_seed = p_int(default = 4L, tags = "train"),
        top_rate = p_dbl(default = 0.2, lower = 0.0, upper = 1.0, tags = "train"),
        other_rate = p_dbl(default = 0.1, lower = 0.0, upper = 1.0, tags = "train"),
        min_data_per_group = p_int(default = 100L, lower = 1L, tags = "train"),
        max_cat_threshold = p_int(default = 32L, lower = 1L, tags = "train"),
        cat_l2 = p_dbl(default = 10.0, lower = 0.0, tags = "train"),
        cat_smooth = p_dbl(default = 10.0, lower = 0.0, tags = "train"),
        max_cat_to_onehot = p_int(default = 4L, lower = 1L, tags = "train"),
        top_k = p_int(default = 20L, lower = 1L, tags = "train"),
        monotone_constraints = p_uty(default = NULL, tags = "train"),
        monotone_constraints_method = p_fct(default = "basic", levels = c("basic",
          "intermediate", "advanced"), tags = "train"),
        monotone_penalty = p_dbl(default = 0, lower = 0, tags = "train"),
        feature_contri = p_uty(default = NULL, tags = "train"),
        forcedsplits_filename = p_uty(default = "", tags = "train"),
        refit_decay_rate = p_dbl(default = 0.9, lower = 0, upper = 1, tags = "train"),
        cegb_tradeoff = p_dbl(default = 1.0, lower = 0.0, tags = "train"),
        cegb_penalty_split = p_dbl(default = 0.0, lower = 0.0, tags = "train"),
        cegb_penalty_feature_lazy = p_uty(tags = "train"),
        cegb_penalty_feature_coupled = p_uty(tags = "train"),
        path_smooth = p_dbl(default = 0.0, lower = 0.0, tags = "train"),
        interaction_constraints = p_uty(tags = "train"),

        # dataset parameters
        max_bin = p_int(default = 255L, lower = 2L, tags = "train"),
        max_bin_by_feature = p_uty(default = NULL, tags = "train"),
        min_data_in_bin = p_int(default = 3L, lower = 1L, tags = "train"),
        bin_construct_sample_cnt = p_int(default = 200000L, lower = 1L, tags = "train"),
        data_random_seed = p_int(default = 1L, tags = "train"),
        is_enable_sparse = p_lgl(default = TRUE, tags = "train"),
        enable_bundle = p_lgl(default = TRUE, tags = "train"),
        use_missing = p_lgl(default = TRUE, tags = "train"),
        zero_as_missing = p_lgl(default = FALSE, tags = "train"),
        feature_pre_filter = p_lgl(default = TRUE, tags = "train"),
        pre_partition = p_lgl(default = FALSE, tags = "train"),
        two_round = p_lgl(default = FALSE, tags = "train"),
        forcedbins_filename = p_uty(default = "", tags = "train"),

        # objective parameters
        is_unbalance = p_lgl(default = FALSE, tags = "train"),
        scale_pos_weight = p_dbl(default = 1, lower = 0, tags = "train"),
        sigmoid = p_dbl(default = 1, lower = 0, tags = "train"),
        boost_from_average = p_lgl(default = TRUE, tags = "train"),

        # metric parameters
        eval_at = p_uty(default = 1:5, tags = "train"),
        multi_error_top_k = p_int(default = 1L, lower = 1L, tags = "train"),
        auc_mu_weights = p_uty(default = NULL, tags = "train"),

        # network parameters
        num_machines = p_int(default = 1L, lower = 1L, tags = "train"),
        local_listen_port = p_int(default = 12400L, lower = 1L, tags = "train"),
        time_out = p_int(default = 120L, lower = 1L, tags = "train"),
        machines = p_uty(default = "", tags = "train"),

        # GPU parameters
        gpu_platform_id = p_int(default = -1L, tags = "train"),
        gpu_device_id = p_int(default = -1L, tags = "train"),
        gpu_use_dp = p_lgl(default = FALSE, tags = "train"),
        num_gpu = p_int(default = 1L, lower = 1L, tags = "train"),

        # predict parameters
        start_iteration_predict = p_int(default = 0L, tags = "predict"),
        num_iteration_predict = p_int(default = -1L, tags = "predict"),
        pred_early_stop = p_lgl(default = FALSE, tags = "predict"),
        pred_early_stop_freq = p_int(default = 10L, tags = "predict"),
        pred_early_stop_margin = p_dbl(default = 10, tags = "predict")
      )

      ps$add_dep("pos_bagging_fraction", "objective", CondEqual$new("binary"))
      ps$add_dep("neg_bagging_fraction", "objective", CondEqual$new("binary"))
      ps$add_dep("is_unbalance", "objective", CondAnyOf$new(c("binary", "multiclassova")))
      ps$add_dep("scale_pos_weight", "objective", CondAnyOf$new(c("binary", "multiclassova")))
      ps$add_dep("sigmoid", "objective", CondAnyOf$new(c("binary", "multiclassova")))
      ps$add_dep("boost_from_average", "objective", CondAnyOf$new(c(
        "binary", "multiclassova")))
      ps$add_dep("top_k", "tree_learner", CondEqual$new("voting"))

      ps$add_dep("drop_rate", "boosting", CondEqual$new("dart"))
      ps$add_dep("max_drop", "boosting", CondEqual$new("dart"))
      ps$add_dep("skip_drop", "boosting", CondEqual$new("dart"))
      ps$add_dep("xgboost_dart_mode", "boosting", CondEqual$new("dart"))
      ps$add_dep("uniform_drop", "boosting", CondEqual$new("dart"))
      ps$add_dep("drop_seed", "boosting", CondEqual$new("dart"))
      ps$add_dep("top_rate", "boosting", CondEqual$new("goss"))
      ps$add_dep("other_rate", "boosting", CondEqual$new("goss"))
      ps$add_dep("deterministic", "device_type", CondEqual$new("cpu"))
      ps$add_dep("force_col_wise", "device_type", CondEqual$new("cpu"))
      ps$add_dep("force_row_wise", "device_type", CondEqual$new("cpu"))

      ps$values = list(num_threads = 1L, verbose = -1L, convert_categorical = TRUE)

      super$initialize(
        id = "classif.lightgbm",
        packages = c("mlr3extralearners", "lightgbm"),
        feature_types = c("numeric", "integer", "factor", "logical"),
        predict_types = c("prob", "response"),
        param_set = ps,
        properties = c("weights", "missings", "importance", "twoclass", "multiclass", "hotstart_forward"),
        man = "mlr3extralearners::mlr_learners_classif.lightgbm",
        label = "Gradient Boosting"
      )
    },

    #' @description
    #' The importance scores are extracted from `lbg.importance`.
    #' @return Named `numeric()`.
    importance = function() {
      dt_imp = lightgbm::lgb.importance(self$model, percentage = TRUE)
      if (nrow(dt_imp)) {
        imp = dt_imp$Gain
        names(imp) = dt_imp$Feature
        return(imp)
      } else {
        feature_names = self$state$train_task$feature_names
        return(named_vector(feature_names, 0))
      }
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      train_lightgbm(self, task, "classif", pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      data = encode_lightgbm_predict(task, self$state$data_prototype, self)$X

      pred = invoke(predict, self$model, data, params = pars)

      response = NULL

      if ("multiclass" %in% task$properties) {
        pred = matrix(pred, ncol = length(task$class_names), byrow = TRUE)
        pred_mat = pred
        colnames(pred_mat) = self$state$labels
        if (self$predict_type == "response") {
          which = apply(pred_mat, 1, which.max)
          response = self$state$labels[which]
          pred_mat = NULL
        }
      } else {
        pred_mat = matrix(c(pred, 1 - pred), ncol = 2)
        colnames(pred_mat) = c(task$positive, task$negative)
        if (self$predict_type == "response") {
          which = apply(pred_mat, 1, which.max)
          response = colnames(pred_mat)[which]
          pred_mat = NULL
        }
      }

      list(prob = pred_mat, response = response)
    },
    .hotstart = function(task) {
      pars = self$param_set$get_values(tags = "train")
      pars_train = self$state$param_vals
      pars_train$num_iterations = pars$num_iterations - self$state$param_vals$num_iterations
      train_lightgbm(self, task, "classif", pars_train, self$model)
    }
  )
)

.extralrns_dict$add("classif.lightgbm", LearnerClassifLightGBM)

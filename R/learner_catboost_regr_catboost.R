#' @title Gradient Boosted Decision Trees Regression Learner
#' @author sumny
#' @name mlr_learners_regr.catboost
#'
#' @template class_learner
#' @templateVar id regr.catboost
#' @templateVar caller catboost.train
#'
#' @section Custom mlr3 defaults:
#' - `logging_level`:
#'   - Actual default: "Verbose"
#'   - Adjusted default: "Silent"
#'   - Reason for change: consistent with other mlr3 learners
#' - `thread_count`:
#'   - Actual default: -1
#'   - Adjusted default: 1
#'   - Reason for change: consistent with other mlr3 learners
#' - `allow_writing_files`:
#'   - Actual default: TRUE
#'   - Adjusted default: FALSE
#'   - Reason for change: consistent with other mlr3 learners
#' - `save_snapshot`:
#'   - Actual default: TRUE
#'   - Adjusted default: FALSE
#'   - Reason for change: consistent with other mlr3 learners
#'
#' @references
#' CatBoost: unbiased boosting with categorical features.
#' Liudmila Prokhorenkova, Gleb Guse, Aleksandr Vorobev, Anna Veronika Dorogush and Andrey Gulin.
#' 2017. https://arxiv.org/abs/1706.09516.
#'
#' CatBoost: gradient boosting with categorical features support.
#' Anna Veronika Dorogush, Vasily Ershov and Andrey Gulin.
#' 2018. https://arxiv.org/abs/1810.11363.
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerRegrCatboost = R6Class("LearnerRegrCatboost",
  inherit = LearnerRegr,
  public = list(

    #' @description
    #' Create a `LearnerRegrCatboost` object.
    initialize = function() {

      ps = ParamSet$new(
        params = list(
          # catboost.train
          # https://catboost.ai/docs/concepts/r-reference_catboost-train.html
          # Common parameters
          ParamFct$new(
            id = "loss_function",
            levels = c(
              "MAE", "MAPE", "Poisson", "Quantile", "RMSE",
              "LogLinQuantile", "Lq", "Huber", "Expectile", "Tweedie"),
            default = "RMSE", tags = "train"),
          # custom_loss missing
          # eval_metric missing
          ParamInt$new(
            id = "iterations", lower = 1L, upper = Inf,
            default = 1000, tags = "train"),
          ParamDbl$new(
            id = "learning_rate", lower = 0.001, upper = 1,
            default = 0.03, tags = "train"),
          ParamInt$new(
            id = "random_seed", lower = 0, upper = Inf,
            default = 0, tags = "train"),
          ParamDbl$new(
            id = "l2_leaf_reg", lower = 0, upper = Inf,
            default = 3, tags = "train"),
          ParamFct$new(
            id = "bootstrap_type",
            levels = c("Bayesian", "Bernoulli", "MVS", "Poisson", "No"),
            tags = "train"),
          ParamDbl$new(
            id = "bagging_temperature", lower = 0, upper = Inf,
            default = 1, tags = "train"),
          ParamDbl$new(id = "subsample", lower = 0, upper = 1, tags = "train"),
          ParamFct$new(
            id = "sampling_frequency",
            levels = c("PerTree", "PerTreeLevel"),
            default = "PerTreeLevel", tags = "train"),
          ParamFct$new(
            id = "sampling_unit", levels = c("Object", "Group"),
            default = "Object", tags = "train"),
          ParamDbl$new(id = "mvs_reg", lower = 0, upper = Inf, tags = "train"),
          ParamDbl$new(
            id = "random_strength", lower = 0, upper = Inf,
            default = 1, tags = "train"),
          # use_best_model missing
          # best_model_min_trees missing
          ParamInt$new(
            id = "depth", lower = 1L, upper = 16L,
            default = 6L, tags = "train"),
          ParamFct$new(
            id = "grow_policy",
            levels = c("SymmetricTree", "Depthwise", "Lossguide"),
            default = "SymmetricTree", tags = "train"),
          ParamInt$new(
            id = "min_data_in_leaf", lower = 1L, upper = Inf,
            default = 1L, tags = "train"),
          ParamInt$new(
            id = "max_leaves", lower = 1L, upper = Inf,
            default = 31L, tags = "train"),
          # ignored_features missing
          # one_hot_max_size missing
          ParamLgl$new(id = "has_time", default = FALSE, tags = "train"),
          ParamDbl$new(
            id = "rsm", lower = 0.001, upper = 1,
            default = 1, tags = "train"),
          ParamFct$new(
            id = "nan_mode", levels = c("Min", "Max"),
            default = "Min", tags = "train"), # do not allow "Forbidden"
          ParamInt$new(
            id = "fold_permutation_block",
            lower = 1L, upper = 256L, tags = "train"),
          ParamFct$new(
            id = "leaf_estimation_method",
            levels = c("Newton", "Gradient", "Exact"), tags = "train"),
          ParamInt$new(
            id = "leaf_estimation_iterations",
            lower = 1L, upper = Inf, tags = "train"),
          ParamFct$new(
            id = "leaf_estimation_backtracking",
            levels = c("No", "AnyImprovement", "Armijo"),
            default = "AnyImprovement", tags = "train"),
          # name missing
          ParamDbl$new(
            id = "fold_len_multiplier",
            lower = 1.001, upper = Inf, default = 2, tags = "train"),
          ParamLgl$new(
            id = "approx_on_full_history",
            default = TRUE, tags = "train"),
          ParamFct$new(
            id = "boosting_type",
            levels = c("Ordered", "Plain"), tags = "train"),
          ParamLgl$new("boost_from_average", tags = "train"),
          ParamLgl$new(id = "langevin", default = FALSE, tags = "train"),
          ParamDbl$new(
            id = "diffusion_temperature", lower = 0, upper = Inf,
            default = 10000, tags = "train"),
          # allow_const_label missing
          ParamFct$new(
            id = "score_function",
            levels = c("Cosine", "L2", "NewtonCosine", "NewtonL2"),
            default = "Cosine", tags = "train"),
          # cat_features missing
          ParamUty$new(
            id = "monotone_constraints", tags = "train",
            custom_check = checkmate::check_string),
          ParamUty$new(
            id = "feature_weights", tags = "train",
            custom_check = checkmate::check_string),
          ParamUty$new(
            id = "first_feature_use_penalties", tags = "train",
            custom_check = checkmate::check_string),
          ParamDbl$new(
            id = "penalties_coefficient", lower = 0, upper = Inf,
            default = 1, tags = "train"),
          ParamUty$new(
            id = "per_object_feature_penalties", tags = "train",
            custom_check = checkmate::check_string),
          ParamDbl$new(id = "model_shrink_rate", tags = "train"),
          ParamFct$new(
            id = "model_shrink_mode",
            levels = c("Constant", "Decreasing"), tags = "train"),
          # Overfitting detection settings missing
          # Quantization settings
          ParamDbl$new(id = "target_border", tags = "train"),
          ParamInt$new(
            id = "border_count",
            lower = 1L, upper = 65535L, tags = "train"),
          ParamFct$new(
            id = "feature_border_type",
            levels = c(
              "Median", "Uniform", "UniformAndQuantiles", "MaxLogSum",
              "MinEntropy", "GreedyLogSum"),
            default = "GreedyLogSum", tags = "train"),
          ParamUty$new(
            id = "per_float_feature_quantization", tags = "train",
            custom_check = checkmate::check_string),
          # Performance Settings
          ParamInt$new(
            id = "thread_count",
            lower = -1L, upper = Inf, default = 1L,
            tags = c("train", "predict", "importance")),
          # Processing units settings
          ParamFct$new(
            id = "task_type", levels = c("CPU", "GPU"),
            default = "CPU", tags = "train"),
          ParamUty$new(id = "devices", tags = "train"),
          # Output settings
          ParamFct$new(
            id = "logging_level",
            levels = c("Silent", "Verbose", "Info", "Debug"),
            default = "Silent", tags = "train"),
          ParamInt$new(
            id = "metric_period", lower = 1L, upper = Inf,
            default = 1L, tags = "train"),
          # verbose missing
          ParamUty$new(
            id = "train_dir", default = "catboost_info",
            tags = "train", custom_check = checkmate::check_string),
          ParamDbl$new(
            id = "model_size_reg", lower = 0, upper = 1,
            default = 0.5, tags = "train"),
          ParamLgl$new(
            id = "allow_writing_files",
            default = FALSE, tags = "train"),
          ParamLgl$new(id = "save_snapshot", default = FALSE, tags = "train"),
          ParamUty$new(
            id = "snapshot_file", tags = "train",
            custom_check = checkmate::check_string),
          ParamInt$new(
            id = "snapshot_interval", lower = 1L, upper = Inf,
            default = 600L, tags = "train"),
          # CTR settings
          ParamUty$new(
            id = "simple_ctr", tags = "train",
            custom_check = checkmate::check_string),
          ParamUty$new(
            id = "combinations_ctr", tags = "train",
            custom_check = checkmate::check_string),
          ParamInt$new(
            id = "ctr_target_border_count",
            lower = 1L, upper = 255L, tags = "train"),
          ParamFct$new(
            id = "counter_calc_method",
            levels = c("SkipTest", "Full"), default = "Full", tags = "train"),
          ParamInt$new(
            id = "max_ctr_complexity",
            lower = 1L, upper = Inf, tags = "train"),
          ParamInt$new(
            id = "ctr_leaf_count_limit",
            lower = 1L, upper = Inf, tags = "train"),
          ParamLgl$new(
            id = "store_all_simple_ctr",
            default = FALSE, tags = "train"),
          ParamFct$new(
            id = "final_ctr_computation_mode",
            levels = c("Default", "Skip"), default = "Default", tags = "train"),
          # catboost.predict
          # https://catboost.ai/docs/concepts/r-reference_catboost-predict.html
          ParamLgl$new(id = "verbose", default = FALSE, tags = "predict"),
          ParamInt$new(
            id = "ntree_start", lower = 0L, upper = Inf,
            default = 0L, tags = "predict"),
          ParamInt$new(
            id = "ntree_end", lower = 0L, upper = Inf,
            default = 0L, tags = "predict")
        )
      )
      ps$add_dep(
        id = "mvs_reg", on = "bootstrap_type",
        cond = CondEqual$new("MVS"))
      ps$add_dep(
        id = "min_data_in_leaf", on = "grow_policy",
        cond = CondAnyOf$new(c("Depthwise", "Lossguide")))
      ps$add_dep(
        id = "diffusion_temperature", on = "langevin",
        cond = CondEqual$new(TRUE))

      ps$values$loss_function = "RMSE"
      ps$values$logging_level = "Silent"
      ps$values$thread_count = 1L
      ps$values$allow_writing_files = FALSE
      ps$values$save_snapshot = FALSE

      super$initialize(
        id = "regr.catboost",
        packages = "catboost",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = "response",
        param_set = ps,
        properties = c(
          "missings", "weights", "importance"), # FIXME: parallel
        man = "mlr3extralearners::mlr_learners_regr.catboost"
      )
    },

    #' @description
    #' The importance scores are calculated using
    #' [`catboost.get_feature_importance`][catboost::catboost.get_feature_importance],
    #' setting `type = "FeatureImportance"`, returned for 'all'.
    #' @return Named `numeric()`.
    importance = function() {
      # https://catboost.ai/docs/concepts/r-reference_catboost-get_feature_importance.html
      imp = mlr3misc::invoke(catboost::catboost.get_feature_importance,
        model = self$model,
        type = "FeatureImportance",
        thread_count = self$param_set$values$thread_count)
      names(imp) = self$state$train_task$feature_names
      sort(imp, decreasing = TRUE)
    }
  ),

  private = list(
    .train = function(task) {
      # integer/logical features must be converted to numerics explicitly
      data = task$data(cols = task$feature_names)
      to_numerics = task$feature_types$id[task$feature_types$type %in%
        c("integer", "logical")]
      if (length(to_numerics)) {
        data[, (to_numerics) := lapply(.SD, as.numeric), .SDcols = to_numerics]
      }

      # data must be a dataframe
      learn_pool = mlr3misc::invoke(catboost::catboost.load_pool,
        data = data.table::setDF(data),
        label = task$data(cols = task$target_names)[[1L]],
        weight = task$weights$weight,
        thread_count = self$param_set$values$thread_count)

      mlr3misc::invoke(catboost::catboost.train,
        learn_pool = learn_pool,
        test_pool = NULL,
        params = self$param_set$get_values(tags = "train"))
    },

    .predict = function(task) {
      # integer/logical features must be converted to numerics explicitly

      data = task$data(cols = task$feature_names)
      to_numerics = task$feature_types$id[task$feature_types$type %in%
        c("integer", "logical")]
      if (length(to_numerics)) {
        data[, (to_numerics) := lapply(.SD, as.numeric), .SDcols = to_numerics]
      }

      # data must be a dataframe
      pool = mlr3misc::invoke(catboost::catboost.load_pool,
        data = data.table::setDF(data),
        thread_count = self$param_set$values$thread_count)

      preds = mlr3misc::invoke(catboost::catboost.predict,
        model = self$model,
        pool = pool,
        prediction_type = "RawFormulaVal",
        .args = self$param_set$get_values(tags = "predict"))

      PredictionRegr$new(task = task, response = preds)
    }
  )
)

.extralrns_dict$add("regr.catboost", LearnerRegrCatboost)

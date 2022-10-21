#' @title Gradient Boosted Decision Trees Classification Learner
#' @author sumny
#' @name mlr_learners_classif.catboost
#'
#' @description
#' Gradient boosting algorithm that also supports categorical data.
#' Calls [catboost::catboost.train()] from package 'catboost'.
#'
#' @template learner
#' @templateVar id classif.catboost
#'
#' @section Installation:
#' The easiest way to install catboost is with the helper function
#' [install_catboost].
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
#' `r format_bib("dorogush2018catboost")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerClassifCatboost = R6Class("LearnerClassifCatboost",
  inherit = LearnerClassif,
  public = list(

    #' @description
    #' Create a `LearnerClassifCatboost` object.
    initialize = function() {

      ps = ps(
        # catboost.train
        # https://catboost.ai/docs/concepts/r-reference_catboost-train.html
        # Common parameters
        loss_function_twoclass = p_fct(levels = c("Logloss", "CrossEntropy"), default = "Logloss",
          tags = "train"),
        loss_function_multiclass = p_fct(levels = c("MultiClass", "MultiClassOneVsAll"),
          default = "MultiClass", tags = "train"),
        # custom_loss missing
        # eval_metric missing
        iterations = p_int(lower = 1L, upper = Inf, default = 1000, tags = "train"),
        learning_rate = p_dbl(lower = 0.001, upper = 1, default = 0.03, tags = "train"),
        random_seed = p_int(lower = 0, upper = Inf, default = 0, tags = "train"),
        l2_leaf_reg = p_dbl(lower = 0, upper = Inf, default = 3, tags = "train"),
        bootstrap_type = p_fct(levels = c("Bayesian", "Bernoulli", "MVS", "Poisson", "No"),
          tags = "train"),
        bagging_temperature = p_dbl(lower = 0, upper = Inf, default = 1, tags = "train"),
        subsample = p_dbl(lower = 0, upper = 1, tags = "train"),
        sampling_frequency = p_fct(levels = c("PerTree", "PerTreeLevel"), default = "PerTreeLevel",
          tags = "train"),
        sampling_unit = p_fct(levels = c("Object", "Group"), default = "Object", tags = "train"),
        mvs_reg = p_dbl(lower = 0, upper = Inf, tags = "train"),
        random_strength = p_dbl(lower = 0, upper = Inf, default = 1, tags = "train"),
        # use_best_model missing
        # best_model_min_trees missing
        depth = p_int(lower = 1L, upper = 16L, default = 6L, tags = "train"),
        grow_policy = p_fct(levels = c("SymmetricTree", "Depthwise", "Lossguide"),
          default = "SymmetricTree", tags = "train"),
        min_data_in_leaf = p_int(lower = 1L, upper = Inf, default = 1L, tags = "train"),
        max_leaves = p_int(lower = 1L, upper = Inf, default = 31L, tags = "train"),
        ignored_features = p_uty(default = NULL, tags = "train"),
        one_hot_max_size = p_uty(default = FALSE, tags = "train"),
        has_time = p_lgl(default = FALSE, tags = "train"),
        rsm = p_dbl(lower = 0.001, upper = 1, default = 1, tags = "train"),
        nan_mode = p_fct(levels = c("Min", "Max"), default = "Min", tags = "train"), # do not allow "Forbidden"
        fold_permutation_block = p_int(lower = 1L, upper = 256L, tags = "train"),
        leaf_estimation_method = p_fct(levels = c("Newton", "Gradient", "Exact"), tags = "train"),
        leaf_estimation_iterations = p_int(lower = 1L, upper = Inf, tags = "train"),
        leaf_estimation_backtracking = p_fct(levels = c("No", "AnyImprovement", "Armijo"),
          default = "AnyImprovement", tags = "train"),
        # name missin
        fold_len_multiplier = p_dbl(lower = 1.001, upper = Inf, default = 2, tags = "train"),
        approx_on_full_history = p_lgl(default = TRUE, tags = "train"),
        class_weights = p_uty(tags = "train"),
        auto_class_weights = p_fct(levels = c("None", "Balanced", "SqrtBalanced"), default = "None",
          tags = "train"),
        boosting_type = p_fct(levels = c("Ordered", "Plain"), tags = "train"),
        boost_from_average = p_lgl(tags = "train"),
        langevin = p_lgl(default = FALSE, tags = "train"),
        diffusion_temperature = p_dbl(lower = 0, upper = Inf, default = 10000, tags = "train"),
        # allow_const_label missing
        score_function = p_fct(levels = c("Cosine", "L2", "NewtonCosine", "NewtonL2"),
          default = "Cosine", tags = "train"),
        # cat_features missing
        monotone_constraints = p_uty(tags = "train", custom_check = check_string),
        feature_weights = p_uty(tags = "train", custom_check = check_string),
        first_feature_use_penalties = p_uty(tags = "train", custom_check = check_string),
        penalties_coefficient = p_dbl(lower = 0, upper = Inf, default = 1, tags = "train"),
        per_object_feature_penalties = p_uty(tags = "train", custom_check = check_string),
        model_shrink_rate = p_dbl(tags = "train"),
        model_shrink_mode = p_fct(levels = c("Constant", "Decreasing"), tags = "train"),
        # Overfitting detection settings missing
        # Quantization settings
        target_border = p_dbl(tags = "train"),
        border_count = p_int(lower = 1L, upper = 65535L, tags = "train"),
        feature_border_type = p_fct(levels = c("Median", "Uniform", "UniformAndQuantiles",
          "MaxLogSum", "MinEntropy", "GreedyLogSum"),
        default = "GreedyLogSum", tags = "train"),
        per_float_feature_quantization = p_uty(tags = "train", custom_check = check_string),
        # Multiclassification settings
        classes_count = p_int(lower = 1L, upper = Inf, tags = "train"),
        # Performance Settings
        thread_count = p_int(lower = -1L, upper = Inf, default = 1L, tags = c("train", "predict",
          "importance", "threads")),
        # Processing units settings
        task_type = p_fct(levels = c("CPU", "GPU"), default = "CPU", tags = "train"),
        devices = p_uty(tags = "train"),
        # Output settings
        logging_level = p_fct(levels = c("Silent", "Verbose", "Info", "Debug"), default = "Silent",
          tags = "train"),
        metric_period = p_int(lower = 1L, upper = Inf, default = 1L, tags = "train"),
        # verbose missing
        train_dir = p_uty(default = "catboost_info", tags = "train", custom_check = check_string),
        model_size_reg = p_dbl(lower = 0, upper = 1, default = 0.5, tags = "train"),
        allow_writing_files = p_lgl(default = FALSE, tags = "train"),
        save_snapshot = p_lgl(default = FALSE, tags = "train"),
        snapshot_file = p_uty(tags = "train", custom_check = check_string),
        snapshot_interval = p_int(lower = 1L, upper = Inf, default = 600L, tags = "train"),
        # CTR settings
        simple_ctr = p_uty(tags = "train", custom_check = check_string),
        combinations_ctr = p_uty(tags = "train", custom_check = check_string),
        ctr_target_border_count = p_int(lower = 1L, upper = 255L, tags = "train"),
        counter_calc_method = p_fct(levels = c("SkipTest", "Full"), default = "Full",
          tags = "train"),
        max_ctr_complexity = p_int(lower = 1L, upper = Inf, tags = "train"),
        ctr_leaf_count_limit = p_int(lower = 1L, upper = Inf, tags = "train"),
        store_all_simple_ctr = p_lgl(default = FALSE, tags = "train"),
        final_ctr_computation_mode = p_fct(levels = c("Default", "Skip"), default = "Default",
          tags = "train"),
        # catboost.predict
        # https://catboost.ai/docs/concepts/r-reference_catboost-predict.html
        verbose = p_lgl(default = FALSE, tags = "predict"),
        ntree_start = p_int(lower = 0L, upper = Inf, default = 0L, tags = "predict"),
        ntree_end = p_int(lower = 0L, upper = Inf, default = 0L, tags = "predict")
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

      ps$values$loss_function_twoclass = "Logloss"
      ps$values$loss_function_multiclass = "MultiClass"
      ps$values$logging_level = "Silent"
      ps$values$thread_count = 1L
      ps$values$allow_writing_files = FALSE
      ps$values$save_snapshot = FALSE

      super$initialize(
        id = "classif.catboost",
        packages = c("mlr3extralearners", "catboost"),
        feature_types = c("numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c(
          "missings", "weights", "importance", "twoclass", "multiclass"), # FIXME: parallel
        man = "mlr3extralearners::mlr_learners_classif.catboost",
        label = "Gradient Boosting"
      )
    },

    #' @description
    #' The importance scores are calculated using
    #' [`catboost.get_feature_importance`][catboost::catboost.get_feature_importance],
    #' setting `type = "FeatureImportance"`, returned for 'all'.
    #' @return Named `numeric()`.
    importance = function() {
      # https://catboost.ai/docs/concepts/r-reference_catboost-get_feature_importance.html
      imp = invoke(catboost::catboost.get_feature_importance,
        model = self$model,
        type = "FeatureImportance",
        thread_count = self$param_set$values$thread_count)
      names(imp) = self$state$train_task$feature_names
      sort(imp, decreasing = TRUE)
    }
  ),

  private = list(
    .train = function(task) {

      if (packageVersion("catboost") < "0.21") {
        stop("catboost v0.21 or greater is required, update with install_catboost")
      }

      # target is encoded as integer values from 0
      # if binary, the positive class is 1
      is_binary = length(task$class_names) == 2L
      label = if (is_binary) {
        ifelse(task$data(cols = task$target_names)[[1L]] == task$positive,
          yes = 1L,
          no = 0L)
      } else {
        as.integer(task$data(cols = task$target_names)[[1L]]) - 1L
      }

      # data must be a dataframe
      learn_pool = invoke(catboost::catboost.load_pool,
        data = task$data(cols = task$feature_names),
        label = label,
        weight = task$weights$weight,
        thread_count = self$param_set$values$thread_count)

      # set loss_function correctly
      pars = self$param_set$get_values(tags = "train")
      pars$loss_function = if (is_binary) {
        pars$loss_function_twoclass
      } else {
        pars$loss_function_multiclass
      }
      pars$loss_function_twoclass = NULL
      pars$loss_function_multiclass = NULL

      catboost::catboost.train(learn_pool, NULL, pars)
    },

    .predict = function(task) {

      is_binary = (length(task$class_names) == 2L)

      # data must be a dataframe
      pool = invoke(catboost::catboost.load_pool,
        data = ordered_features(task, self),
        thread_count = self$param_set$values$thread_count)

      prediction_type = if (self$predict_type == "response") {
        "Class"
      } else {
        "Probability"
      }
      preds = invoke(catboost::catboost.predict,
        model = self$model,
        pool = pool,
        prediction_type = prediction_type,
        .args = self$param_set$get_values(tags = "predict"))

      if (self$predict_type == "response") {
        response = if (is_binary) {
          ifelse(preds == 1L, yes = task$positive, no = task$negative)
        } else {
          task$class_names[preds + 1L]
        }
        list(response = as.character(unname(response)))
      } else {

        if (is_binary && is.null(dim(preds))) {
          preds = matrix(c(preds, 1 - preds), ncol = 2L, nrow = length(preds))
          colnames(preds) = c(task$positive, task$negative)
        } else {
          colnames(preds) = self$state$train_task$class_names
        }

        list(prob = preds)
      }
    }
  )
)

.extralrns_dict$add("classif.catboost", LearnerClassifCatboost)

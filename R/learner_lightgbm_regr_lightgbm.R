#' @title Regression Light GBM Learner
#' @author kapsner
#' @name mlr_learners_regr.lightgbm
#'
#' @description
#' Gradient boosting algorithm.
#' Calls [lightgbm::lightgbm()] from \CRANpkg{lightgbm}.
#'
#' @template learner
#' @templateVar id regr.lightgbm
#'
#' @section Custom mlr3 defaults:
#' - `num_threads`:
#'   - Actual default: 0L
#'   - Adjusted default: 1L
#'   - Reason for change: Prevents accidental conflicts with `future`.
#' - `verbose`:
#'   - Actual default: 1L
#'   - Adjusted default: -1L
#'   - Reason for change: Prevents accidental conflicts with mlr messaging system.
#'
#' For categorical features either pre-process data by encoding columns or
#' specify the categorical columns with the `categorical_feature` parameter.
#' For this learner please do not prefix the categorical feature with `name:`.
#' Instead of providing the data that is used for early stopping explicitly, the parameter
#' `early_stopping_split` determines the proportion of the training data that is used for early
#' stopping.
#'
#' @references
#' `r format_bib("ke2017lightgbm")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrLightGBM = R6Class("LearnerRegrLightGBM",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        # lgb.train core functions
        nrounds = p_int(default = 5L, lower = 1L, tags = "train"),
        objective = p_fct(default = "regression", levels = c("regression",
          "regression_l1", "huber", "fair", "poisson", "quantile", "mape", "gamma", "tweedie"),
        tags = "train"),
        metric = p_fct(default = "", levels = c("", "None", "l1", "l2", "rmse",
          "quantile", "mape", "huber", "fair", "poisson", "gamma", "gamma_deviance", "tweedie",
          "ndcg"), tags = "train"),
        custom_eval = p_uty(default = NULL, tags = "train"),
        verbose = p_int(default = 1L, tags = "train"),
        record = p_lgl(default = TRUE, tags = "train"),
        eval_freq = p_int(default = 1L, lower = 1L, tags = "train"),
        init_model = p_uty(default = NULL, tags = "train"),
        early_stopping_rounds = p_int(lower = 1L, tags = "train"),
        early_stopping_split = p_dbl(default = 0, lower = 0, upper = 1, tags = "train"),
        callbacks = p_uty(tags = "train"),
        reset_data = p_lgl(default = FALSE, tags = "train"),
        categorical_feature = p_uty(default = "", tags = "train"),
        # other core functions
        boosting = p_fct(default = "gbdt", levels = c("gbdt", "rf", "dart",
          "goss"), tags = "train"),
        linear_tree = p_lgl(default = FALSE, tags = "train"),
        num_iterations = p_int(default = 100L, lower = 0L, tags = "train"),
        learning_rate = p_dbl(default = 0.1, lower = 0.0, tags = "train"),
        num_leaves = p_int(default = 31L, lower = 1L, upper = 131072L,
          tags = "train"),
        tree_learner = p_fct(default = "serial", levels = c("serial", "feature",
          "data", "voting"), tags = "train"),
        num_threads = p_int(default = 0L, lower = 0L, tags = c("train", "threads")),
        device_type = p_fct(default = "cpu", levels = c("cpu", "gpu"),
          tags = "train"),
        seed = p_int(tags = "train"),
        deterministic = p_lgl(default = FALSE, tags = "train"),
        # Learning control parameters
        force_col_wise = p_lgl(default = FALSE, tags = "train"),
        force_row_wise = p_lgl(default = FALSE, tags = "train"),
        histogram_pool_size = p_int(default = -1L, tags = "train"),
        max_depth = p_int(default = -1L, tags = "train"),
        min_data_in_leaf = p_int(default = 20L, lower = 0L, tags = "train"),
        min_sum_hessian_in_leaf = p_dbl(default = 1e-3, lower = 0, tags = "train"),
        bagging_fraction = p_dbl(default = 1.0, lower = 0.0, upper = 1.0,
          tags = "train"),
        bagging_freq = p_int(default = 0L, lower = 0L, tags = "train"),
        bagging_seed = p_int(default = 3L, tags = "train"),
        feature_fraction = p_dbl(default = 1.0, lower = 0.0, upper = 1.0,
          tags = "train"),
        feature_fraction_bynode = p_dbl(default = 1.0, lower = 0.0, upper = 1.0,
          tags = "train"),
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
        refit_decay_rate = p_dbl(default = 0.9, lower = 0, upper = 1,
          tags = "train"),
        cegb_tradeoff = p_dbl(default = 1.0, lower = 0.0, tags = "train"),
        cegb_penalty_split = p_dbl(default = 0.0, lower = 0.0, tags = "train"),
        cegb_penalty_feature_lazy = p_uty(tags = "train"),
        cegb_penalty_feature_coupled = p_uty(tags = "train"),
        path_smooth = p_dbl(default = 0.0, lower = 0.0, tags = "train"),
        interaction_constraints = p_uty(tags = "train"),
        input_model = p_uty(default = "", tags = "train"),
        output_model = p_uty(default = "LightGBM_model.txt", tags = "train"),
        saved_feature_importance_type = p_int(default = 0L, lower = 0L, upper = 1L,
          tags = "train"),
        snapshot_freq = p_int(default = -1L, tags = "train"),
        # dataset parameters
        max_bin = p_int(default = 255L, lower = 2L, tags = "train"),
        max_bin_by_feature = p_uty(default = NULL, tags = "train"),
        min_data_in_bin = p_int(default = 3L, lower = 1L, tags = "train"),
        bin_construct_sample_cnt = p_int(default = 200000L, lower = 1L,
          tags = "train"),
        data_random_seed = p_int(default = 1L, tags = "train"),
        is_enable_sparse = p_lgl(default = TRUE, tags = "train"),
        enable_bundle = p_lgl(default = TRUE, tags = "train"),
        use_missing = p_lgl(default = TRUE, tags = "train"),
        zero_as_missing = p_lgl(default = FALSE, tags = "train"),
        feature_pre_filter = p_lgl(default = TRUE, tags = "train"),
        pre_partition = p_lgl(default = FALSE, tags = "train"),
        two_round = p_lgl(default = FALSE, tags = "train"),
        header = p_lgl(default = FALSE, tags = "train"),
        group_column = p_uty(default = "", tags = "train"),
        forcedbins_filename = p_uty(default = "", tags = "train"),
        save_binary = p_lgl(default = FALSE, tags = "train"),
        # objective parameters
        boost_from_average = p_lgl(default = TRUE, tags = "train"),
        reg_sqrt = p_lgl(default = FALSE, tags = "train"),
        alpha = p_dbl(default = 0.9, lower = 0.0, tags = "train"),
        fair_c = p_dbl(default = 1.0, lower = 0.0, tags = "train"),
        poisson_max_delta_step = p_dbl(default = 0.7, lower = 0.0, tags = "train"),
        tweedie_variance_power = p_dbl(default = 1.5, lower = 1.0, upper = 2.0, tags = "train"),
        # metric parameters
        metric_freq = p_int(default = 1L, lower = 1L, tags = "train"),
        is_provide_training_metric = p_lgl(default = FALSE, tags = "train"),
        # network parameters
        num_machines = p_int(default = 1L, lower = 1L, tags = "train"),
        local_listen_port = p_int(default = 12400L, lower = 1L, tags = "train"),
        time_out = p_int(default = 120L, lower = 1L, tags = "train"),
        machine_list_filename = p_uty(default = "", tags = "train"),
        machines = p_uty(default = "", tags = "train"),
        # GPU parameters
        gpu_platform_id = p_int(default = -1L, tags = "train"),
        gpu_device_id = p_int(default = -1L, tags = "train"),
        gpu_use_dp = p_lgl(default = FALSE, tags = "train"),
        num_gpu = p_int(default = 1L, lower = 1L, tags = "train"),
        # predict parameters
        start_iteration = p_int(default = 0L, tags = "predict"),
        num_iteration = p_int(default = -1L, tags = "predict"),
        pred_early_stop = p_lgl(default = FALSE, tags = "predict"),
        pred_early_stop_freq = p_int(default = 10L, tags = "predict"),
        pred_early_stop_margin = p_dbl(default = 10, tags = "predict"),
        output_result = p_uty(default = "LightGBM_predict_result.txt", tags = "predict")
      )

      ps$add_dep("reg_sqrt", "objective", CondEqual$new("regression"))
      ps$add_dep("fair_c", "objective", CondEqual$new("fair"))
      ps$add_dep("poisson_max_delta_step", "objective", CondEqual$new("poisson"))
      ps$add_dep("tweedie_variance_power", "objective", CondEqual$new("tweedie"))
      ps$add_dep("alpha", "objective", CondAnyOf$new(c("huber", "quantile", "regression")))
      ps$add_dep("boost_from_average", "objective", CondEqual$new("regression"))

      ps$add_dep("drop_rate", "boosting", CondEqual$new("dart"))
      ps$add_dep("max_drop", "boosting", CondEqual$new("dart"))
      ps$add_dep("skip_drop", "boosting", CondEqual$new("dart"))
      ps$add_dep("xgboost_dart_mode", "boosting", CondEqual$new("dart"))
      ps$add_dep("uniform_drop", "boosting", CondEqual$new("dart"))
      ps$add_dep("drop_seed", "boosting", CondEqual$new("dart"))
      ps$add_dep("top_rate", "boosting", CondEqual$new("goss"))
      ps$add_dep("other_rate", "boosting", CondEqual$new("goss"))

      ps$values = list(num_threads = 1L, verbose = -1L, objective = "regression")

      super$initialize(
        id = "regr.lightgbm",
        packages = c("mlr3extralearners", "lightgbm"),
        feature_types = c("numeric", "integer"),
        predict_types = c("response"),
        param_set = ps,
        properties = c("weights", "missings", "importance"),
        man = "mlr3extralearners::mlr_learners_regr.lightgbm"
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
        return(named_vector(self$state$feature_names, 0))
      }
    }
  ),

  private = list(

    .train = function(task) {
      # set column names to ensure consistency in fit and predict
      self$state$feature_names = task$feature_names

      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      if (!is.null(pars$custom_eval)) {
        pars$metric = pars$custom_eval
        pars$custom_eval = NULL
      }

      early_stopping_split = pars$early_stopping_split
      pars$early_stopping_split = NULL

      if (!is.null(early_stopping_split) && early_stopping_split) {
        # task$nrow = length(task$row_roles$use)
        valid_ids = sample(task$row_roles$use, floor(early_stopping_split * task$nrow))
        train_ids = setdiff(task$row_roles$use, valid_ids)
        # TODO: Update this when the names in mlr3 are changed to test / validation

        dtrain = lightgbm::lgb.Dataset(
          data = as.matrix(task$data(rows = train_ids, cols = task$feature_names)),
          label = as.matrix(task$data(rows = train_ids, cols = task$target_names)),
          free_raw_data = FALSE,
          categorical_feature = pars$categorical_feature
        )

        pars$categorical_feature = NULL


        dvalid = lightgbm::lgb.Dataset.create.valid(
          dataset = dtrain,
          data = as.matrix(task$data(rows = valid_ids, cols = task$feature_names)),
          label = as.matrix(task$data(rows = valid_ids, cols = task$target_names))
        )

        row_id = NULL
        if ("weights" %in% task$properties) {
          dtrain$setinfo("weight", subset(task$weights, row_id %in% train_ids)$weight)
          dvalid$setinfo("weight", subset(task$weights, row_id %in% valid_ids)$weight)
        }

        invoke(lightgbm::lgb.train,
          data = dtrain,
          valids = list(test = dvalid),
          params = pars
        )
      } else {
        dtrain = lightgbm::lgb.Dataset(
          data = as.matrix(task$data(cols = task$feature_names)),
          label = as.matrix(task$data(cols = task$target_names)),
          free_raw_data = FALSE,
          categorical_feature = pars$categorical_feature
        )

        pars$categorical_feature = NULL

        if ("weights" %in% task$properties) {
          dtrain$setinfo("weight", task$weights$weight)
        }

        args = pars[which(names(pars) %in% formalArgs(lightgbm::lgb.train))]
        params = pars[which(names(pars) %nin% formalArgs(lightgbm::lgb.train))]

        invoke(
          lightgbm::lgb.train,
          data = dtrain,
          .args = args,
          params = params
        )
      }

    },

    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = as.matrix(task$data(cols = self$state$feature_names))

      pred = invoke(predict,
        object = self$model,
        data = newdata,
        params = pars
      )

      list(response = pred)
    }
  )
)

.extralrns_dict$add("regr.lightgbm", LearnerRegrLightGBM)

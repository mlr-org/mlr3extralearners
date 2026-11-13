#' @title Regression GPBoost Learner
#' @author floriandl
#' @name mlr_learners_regr.gpboost
#'
#' @description
#' Tree-boosting combined with Gaussian process and grouped random effects models.
#' Calls `gpboost::gpb.train()` from \CRANpkg{gpboost}.
#'
#' The random effects model is specified with the custom parameters `group_data_cols` and `gp_coords_cols`.
#' If neither is set, a plain gradient boosting model is fitted.
#' The boosting parameters are documented [here](https://gpboost.readthedocs.io/en/latest/Parameters.html)
#' and in the documentation of `gpboost::gpb.train()`.
#' The parameters of the random effects model are documented in `gpboost::GPModel()`.
#'
#' @section Custom mlr3 parameters:
#' - `group_data_cols`: Names of features that define grouped random effects, one random intercept per column.
#'   The columns are passed to `gpboost::GPModel()` as `group_data` and are excluded from the tree features.
#' - `gp_coords_cols`: Names of numeric features that are the coordinates of a Gaussian process.
#'   The columns are passed to `gpboost::GPModel()` as `gp_coords` and are excluded from the tree features.
#' - `seed` is passed to the boosting algorithm and to `gpboost::GPModel()`.
#' - `nrounds` sets the number of boosting iterations.
#'   The alias `num_iterations` is not available.
#' - Observation weights are passed to `gpboost::GPModel()` if a random effects model is used
#'   and to `gpboost::gpb.Dataset()` otherwise.
#' - The predict type `"se"` returns the square root of the predictive variance
#'   and requires a random effects model.
#'
#' @section Initial parameter values:
#' - `num_threads` is initialized to 1 to avoid conflicts with parallelization via \CRANpkg{future}.
#' - `verbose` is initialized to -1 to suppress the output of GPBoost.
#'
#' @templateVar id regr.gpboost
#' @template learner
#'
#' @references
#' `r format_bib("sigrist2022gaussian")`
#'
#' @template seealso_learner
#' @template example_gpboost
#' @export
LearnerRegrGPBoost = R6Class("LearnerRegrGPBoost",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        # custom
        group_data_cols = p_uty(tags = "train", custom_check = crate(function(x) {
          check_character(x, any.missing = FALSE, min.len = 1L, unique = TRUE)
        })),
        gp_coords_cols = p_uty(tags = "train", custom_check = crate(function(x) {
          check_character(x, any.missing = FALSE, min.len = 1L, unique = TRUE)
        })),

        # gpb.train
        nrounds = p_int(lower = 1L, default = 100L, tags = "train"),
        verbose = p_int(default = 1L, init = -1L, tags = "train"),
        record = p_lgl(default = TRUE, tags = "train"),
        reset_data = p_lgl(default = FALSE, tags = "train"),
        use_gp_model_for_validation = p_lgl(default = TRUE, tags = "train"),
        train_gp_model_cov_pars = p_lgl(default = TRUE, tags = "train"),

        # GPModel
        likelihood = p_uty(default = "gaussian", tags = "train", custom_check = crate(function(x) check_string(x))),
        cov_function = p_uty(default = "matern", tags = "train", custom_check = crate(function(x) check_string(x))),
        cov_fct_shape = p_dbl(lower = 0, default = 1.5, tags = "train"),
        cov_fct_order = p_int(lower = 1L, upper = 2L, default = 1L, tags = "train"),
        gp_approx = p_fct(default = "none", levels = c("none", "vecchia", "full_scale_vecchia", "tapering", "fitc",
            "full_scale_tapering", "vecchia_latent"), tags = "train"),
        num_parallel_threads = p_int(lower = 1L, default = NULL, special_vals = list(NULL), tags = "train"),
        GPU_use = p_lgl(default = FALSE, tags = "train"),
        matrix_inversion_method = p_fct(default = "default", levels = c("default", "cholesky", "iterative"),
          tags = "train"),
        likelihood_learning_rate = p_dbl(lower = 0, default = 1, tags = "train"),
        cov_fct_taper_range = p_dbl(lower = 0, default = 1, tags = "train"),
        cov_fct_taper_shape = p_dbl(lower = 0, default = 1, tags = "train"),
        num_neighbors = p_int(lower = 1L, default = NULL, special_vals = list(NULL), tags = "train"),
        vecchia_ordering = p_fct(default = "random", levels = c("none", "random", "time", "time_random_space"),
          tags = "train"),
        ind_points_selection = p_fct(default = "kmeans++", levels = c("kmeans++", "cover_tree", "random"),
          tags = "train"),
        num_ind_points = p_int(lower = 1L, default = NULL, special_vals = list(NULL), tags = "train"),
        cover_tree_radius = p_dbl(lower = 0, default = 1, tags = "train"),
        likelihood_additional_param = p_dbl(default = NULL, special_vals = list(NULL), tags = "train"),
        fidelity_specific_mean = p_lgl(default = TRUE, tags = "train"),

        # core parameters
        objective = p_fct(default = "gaussian", levels = c("gaussian", "regression", "regression_l1", "huber",
            "fair", "poisson", "quantile", "mape", "gamma", "tweedie", "tobit", "mean_scale_regression"),
          tags = "train"),
        boosting = p_fct(default = "gbdt", levels = "gbdt", tags = "train"),
        learning_rate = p_dbl(lower = 0, default = 0.1, tags = "train"),
        num_leaves = p_int(lower = 2L, upper = 131072L, default = 31L, tags = "train"),
        tree_learner = p_fct(default = "serial", levels = c("serial", "feature", "data", "voting"), tags = "train"),
        num_threads = p_int(lower = 0L, default = 0L, init = 1L, tags = c("train", "threads")),
        device_type = p_fct(default = "cpu", levels = c("cpu", "gpu"), tags = "train"),
        seed = p_int(tags = "train"),
        deterministic = p_lgl(default = FALSE, tags = "train"),
        line_search_step_length = p_lgl(default = FALSE, tags = "train"),
        reuse_learning_rates_gp_model = p_lgl(default = TRUE, tags = "train"),
        leaves_newton_update = p_lgl(default = FALSE, tags = "train"),
        use_nesterov_acc = p_lgl(default = FALSE, tags = "train"),
        nesterov_acc_rate = p_dbl(lower = 0, default = 0.5, tags = "train"),
        momentum_offset = p_int(lower = 0L, default = 0L, tags = "train"),
        momentum_schedule_version = p_int(lower = 0L, upper = 1L, default = 1L, tags = "train"),
        linear_tree = p_lgl(default = FALSE, tags = "train"),

        # learning control parameters
        force_col_wise = p_lgl(default = FALSE, tags = "train"),
        force_row_wise = p_lgl(default = FALSE, tags = "train"),
        histogram_pool_size = p_dbl(default = -1, tags = "train"),
        max_depth = p_int(default = -1L, tags = "train"),
        min_data_in_leaf = p_int(lower = 0L, default = 20L, tags = "train"),
        min_sum_hessian_in_leaf = p_dbl(lower = 0, default = 1e-3, tags = "train"),
        bagging_fraction = p_dbl(lower = 0, upper = 1, default = 1, tags = "train"),
        bagging_freq = p_int(lower = 0L, default = 0L, tags = "train"),
        bagging_seed = p_int(default = 3L, tags = "train"),
        feature_fraction = p_dbl(lower = 0, upper = 1, default = 1, tags = "train"),
        feature_fraction_bynode = p_dbl(lower = 0, upper = 1, default = 1, tags = "train"),
        feature_fraction_seed = p_int(default = 2L, tags = "train"),
        extra_trees = p_lgl(default = FALSE, tags = "train"),
        extra_seed = p_int(default = 6L, tags = "train"),
        first_metric_only = p_lgl(default = FALSE, tags = "train"),
        max_delta_step = p_dbl(default = 0, tags = "train"),
        lambda_l1 = p_dbl(lower = 0, default = 0, tags = "train"),
        lambda_l2 = p_dbl(lower = 0, default = 0, tags = "train"),
        linear_lambda = p_dbl(lower = 0, default = 0, tags = "train"),
        min_gain_to_split = p_dbl(lower = 0, default = 0, tags = "train"),
        drop_rate = p_dbl(lower = 0, upper = 1, default = 0.1, tags = "train"),
        max_drop = p_int(default = 50L, tags = "train"),
        skip_drop = p_dbl(lower = 0, upper = 1, default = 0.5, tags = "train"),
        xgboost_dart_mode = p_lgl(default = FALSE, tags = "train"),
        uniform_drop = p_lgl(default = FALSE, tags = "train"),
        drop_seed = p_int(default = 4L, tags = "train"),
        top_rate = p_dbl(lower = 0, upper = 1, default = 0.2, tags = "train"),
        other_rate = p_dbl(lower = 0, upper = 1, default = 0.1, tags = "train"),
        min_data_per_group = p_int(lower = 1L, default = 100L, tags = "train"),
        max_cat_threshold = p_int(lower = 1L, default = 32L, tags = "train"),
        cat_l2 = p_dbl(lower = 0, default = 10, tags = "train"),
        cat_smooth = p_dbl(lower = 0, default = 10, tags = "train"),
        max_cat_to_onehot = p_int(lower = 1L, default = 4L, tags = "train"),
        top_k = p_int(lower = 1L, default = 20L, tags = "train"),
        monotone_constraints = p_uty(default = NULL, tags = "train"),
        monotone_constraints_method = p_fct(default = "basic", levels = c("basic", "intermediate", "advanced"),
          tags = "train"),
        monotone_penalty = p_dbl(lower = 0, default = 0, tags = "train"),
        feature_contri = p_uty(default = NULL, tags = "train"),
        forcedsplits_filename = p_uty(default = "", tags = "train"),
        refit_decay_rate = p_dbl(lower = 0, upper = 1, default = 0.9, tags = "train"),
        cegb_tradeoff = p_dbl(lower = 0, default = 1, tags = "train"),
        cegb_penalty_split = p_dbl(lower = 0, default = 0, tags = "train"),
        cegb_penalty_feature_lazy = p_uty(tags = "train"),
        cegb_penalty_feature_coupled = p_uty(tags = "train"),
        path_smooth = p_dbl(lower = 0, default = 0, tags = "train"),
        interaction_constraints = p_uty(tags = "train"),

        # dataset parameters
        max_bin = p_int(lower = 2L, default = 255L, tags = "train"),
        max_bin_by_feature = p_uty(default = NULL, tags = "train"),
        min_data_in_bin = p_int(lower = 1L, default = 3L, tags = "train"),
        bin_construct_sample_cnt = p_int(lower = 1L, default = 200000L, tags = "train"),
        data_random_seed = p_int(default = 1L, tags = "train"),
        is_enable_sparse = p_lgl(default = TRUE, tags = "train"),
        enable_bundle = p_lgl(default = TRUE, tags = "train"),
        use_missing = p_lgl(default = TRUE, tags = "train"),
        zero_as_missing = p_lgl(default = FALSE, tags = "train"),
        feature_pre_filter = p_lgl(default = FALSE, tags = "train"),
        pre_partition = p_lgl(default = FALSE, tags = "train"),
        two_round = p_lgl(default = FALSE, tags = "train"),
        forcedbins_filename = p_uty(default = "", tags = "train"),

        # objective parameters
        boost_from_average = p_lgl(default = TRUE, tags = "train"),
        reg_sqrt = p_lgl(default = FALSE, tags = "train"),
        alpha = p_dbl(lower = 0, default = 0.9, tags = "train"),
        fair_c = p_dbl(lower = 0, default = 1, tags = "train"),
        poisson_max_delta_step = p_dbl(lower = 0, default = 0.7, tags = "train"),
        tweedie_variance_power = p_dbl(lower = 1, upper = 2, default = 1.5, tags = "train"),
        sigma = p_dbl(lower = 0, default = 1, tags = "train"),
        yl = p_dbl(default = -Inf, tags = "train"),
        yu = p_dbl(default = Inf, tags = "train"),

        # network parameters
        num_machines = p_int(lower = 1L, default = 1L, tags = "train"),
        local_listen_port = p_int(lower = 1L, default = 12400L, tags = "train"),
        time_out = p_int(lower = 1L, default = 120L, tags = "train"),
        machines = p_uty(default = "", tags = "train"),

        # GPU parameters
        gpu_platform_id = p_int(default = -1L, tags = "train"),
        gpu_device_id = p_int(default = -1L, tags = "train"),
        gpu_use_dp = p_lgl(default = FALSE, tags = "train"),
        num_gpu = p_int(lower = 1L, default = 1L, tags = "train"),

        # predict
        start_iteration = p_int(lower = 0L, default = NULL, special_vals = list(NULL), tags = "predict"),
        num_iteration = p_int(lower = 1L, default = NULL, special_vals = list(NULL), tags = "predict"),
        ignore_gp_model = p_lgl(default = FALSE, tags = "predict"),
        vecchia_pred_type = p_fct(default = NULL, special_vals = list(NULL), levels = c("order_obs_first_cond_obs_only",
            "order_obs_first_cond_all", "latent_order_obs_first_cond_obs_only", "latent_order_obs_first_cond_all",
            "order_pred_first"), tags = "predict"),
        num_neighbors_pred = p_int(lower = 1L, default = NULL, special_vals = list(NULL), tags = "predict")
      )

      param_set$add_dep("reg_sqrt", "objective", CondEqual$new("regression"))
      param_set$add_dep("fair_c", "objective", CondEqual$new("fair"))
      param_set$add_dep("poisson_max_delta_step", "objective", CondEqual$new("poisson"))
      param_set$add_dep("tweedie_variance_power", "objective", CondEqual$new("tweedie"))
      param_set$add_dep("sigma", "objective", CondEqual$new("tobit"))
      param_set$add_dep("yl", "objective", CondEqual$new("tobit"))
      param_set$add_dep("yu", "objective", CondEqual$new("tobit"))

      super$initialize(
        id = "regr.gpboost",
        packages = c("mlr3extralearners", "gpboost"),
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "se"),
        param_set = param_set,
        properties = c("weights", "missings", "importance", "marshal"),
        man = "mlr3extralearners::mlr_learners_regr.gpboost",
        label = "Gaussian Process Boosting"
      )
    },

    #' @description
    #' The importance scores are extracted with `gpboost::gpb.importance()` and correspond to the total gain of
    #' the splits of a feature.
    #' Features without splits and the columns of the random effects model get an importance of 0.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }

      imp = gpboost::gpb.importance(self$model)
      scores = set_names(rep(0, length(self$state$feature_names)), self$state$feature_names)
      scores[imp$Feature] = imp$Gain
      sort(scores, decreasing = TRUE)
    },

    #' @description
    #' Marshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::marshal_model()`][mlr3::marshaling()].
    marshal = function(...) {
      learner_marshal(.learner = self, ...)
    },

    #' @description
    #' Unmarshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::unmarshal_model()`][mlr3::marshaling()].
    unmarshal = function(...) {
      learner_unmarshal(.learner = self, ...)
    }
  ),

  active = list(
    #' @field marshaled (`logical(1)`)
    #' Whether the learner has been marshaled.
    marshaled = function() {
      learner_marshaled(self)
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      cols = gpboost_random_effect_cols(pars)
      pars$group_data_cols = NULL
      pars$gp_coords_cols = NULL

      missing_cols = setdiff(c(cols$group, cols$coords), task$feature_names)
      if (length(missing_cols)) {
        stopf("Random effect columns %s are not features of the task", str_collapse(missing_cols, quote = "'"))
      }
      coord_types = task$feature_types$type[task$feature_types$id %in% cols$coords]
      if (any(coord_types %nin% c("integer", "numeric"))) {
        stopf("Columns in 'gp_coords_cols' must be numeric")
      }
      feature_cols = setdiff(task$feature_names, c(cols$group, cols$coords))
      if (!length(feature_cols)) {
        stopf("No features left for the tree model after removing the random effect columns")
      }

      data = task$data(cols = task$feature_names)
      weights = private$.get_weights(task)

      gp_model = if (length(c(cols$group, cols$coords))) {
        gp_pars = pars[intersect(names(pars), c(gpboost_gpmodel_args, "seed"))]
        invoke(gpboost::GPModel,
          group_data = if (length(cols$group)) as.matrix(data[, cols$group, with = FALSE]),
          gp_coords = if (length(cols$coords)) as.matrix(data[, cols$coords, with = FALSE]),
          weights = weights,
          .args = gp_pars
        )
      }

      categorical_feature = intersect(
        task$feature_types$id[task$feature_types$type %in% c("factor", "logical")],
        feature_cols
      )
      dtrain = invoke(gpboost::gpb.Dataset,
        data = data.matrix(data[, feature_cols, with = FALSE]),
        label = task$truth(),
        categorical_feature = if (length(categorical_feature)) categorical_feature,
        weight = if (is.null(gp_model)) weights,
        free_raw_data = FALSE
      )

      train_args = pars[intersect(names(pars), gpboost_train_args)]
      params = pars[setdiff(names(pars), c(gpboost_train_args, gpboost_gpmodel_args))]

      invoke(gpboost::gpb.train,
        data = dtrain,
        gp_model = gp_model,
        params = params,
        .args = train_args
      )
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      cols = gpboost_random_effect_cols(self$state$param_vals)
      has_random_effects = length(c(cols$group, cols$coords)) > 0L

      if (self$predict_type == "se" && !has_random_effects) {
        stopf("Predict type 'se' requires a random effects model, set 'group_data_cols' or 'gp_coords_cols'")
      }

      data = ordered_features(task, self)
      feature_cols = setdiff(names(data), c(cols$group, cols$coords))

      pred = invoke(predict,
        self$model,
        data = data.matrix(data[, feature_cols, with = FALSE]),
        group_data_pred = if (length(cols$group)) as.matrix(data[, cols$group, with = FALSE]),
        gp_coords_pred = if (length(cols$coords)) as.matrix(data[, cols$coords, with = FALSE]),
        predict_var = self$predict_type == "se",
        pred_latent = FALSE,
        .args = pars
      )

      if (!has_random_effects) {
        list(response = as.numeric(pred))
      } else if (self$predict_type == "se") {
        list(response = pred$response_mean, se = sqrt(pred$response_var))
      } else {
        list(response = pred$response_mean)
      }
    }
  )
)

# arguments of gpboost::gpb.train() that are not part of the parameter list
gpboost_train_args = c("nrounds", "verbose", "record", "reset_data", "use_gp_model_for_validation",
  "train_gp_model_cov_pars")

# arguments of gpboost::GPModel()
gpboost_gpmodel_args = c("likelihood", "cov_function", "cov_fct_shape", "cov_fct_order", "gp_approx",
  "num_parallel_threads", "GPU_use", "matrix_inversion_method", "likelihood_learning_rate", "cov_fct_taper_range",
  "cov_fct_taper_shape", "num_neighbors", "vecchia_ordering", "ind_points_selection", "num_ind_points",
  "cover_tree_radius", "likelihood_additional_param", "fidelity_specific_mean")

gpboost_random_effect_cols = function(pars) {
  list(group = pars$group_data_cols, coords = pars$gp_coords_cols)
}

#' @export
marshal_model.gpb.Booster = function(model, inplace = FALSE, ...) {
  structure(list(
    marshaled = model$save_model_to_string(save_raw_data = TRUE),
    packages = "mlr3extralearners"
  ), class = c("gpb.Booster_marshaled", "marshaled"))
}

#' @export
unmarshal_model.gpb.Booster_marshaled = function(model, inplace = FALSE, ...) {
  gpboost::gpb.load(model_str = model$marshaled)
}

.extralrns_dict$add("regr.gpboost", LearnerRegrGPBoost)

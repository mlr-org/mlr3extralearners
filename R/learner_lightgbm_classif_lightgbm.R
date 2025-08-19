#' @title Classification LightGBM Learner
#' @author kapsner
#' @name mlr_learners_classif.lightgbm
#'
#' @description
#' Gradient boosting algorithm.
#' Calls [lightgbm::lightgbm()] from \CRANpkg{lightgbm}.
#' The list of parameters can be found [here](https://lightgbm.readthedocs.io/en/latest/Parameters.html#)
#' and in the documentation of [lightgbm::lgb.train()].
#'
#' @template learner
#' @templateVar id classif.lightgbm
#'
#' @section Initial parameter values:
#' * `num_threads`:
#'   * Actual default: 0L
#'   * Initial value: 1L
#'   * Reason for change: Prevents accidental conflicts with `future`.
#' * `verbose`:
#'   * Actual default: 1L
#'   * Initial value: -1L
#'   * Reason for change: Prevents accidental conflicts with mlr messaging system.
#' * `objective`:
#'   * Depends on the task: if binary classification, then this parameter is set to
#'   `"binary"`, otherwise `"multiclasss"` and cannot be changed.
#'
#' @section Custom mlr3 parameters:
#' * `num_class`:
#'  This parameter is automatically inferred for multiclass tasks and does not have to be set.
#'
#' @section Early Stopping and Validation:
#' Early stopping can be used to find the optimal number of boosting rounds.
#' Set `early_stopping_rounds` to an integer value to monitor the performance of the model on the validation set while training.
#' For information on how to configure the validation set, see the *Validation* section of [`mlr3::Learner`].
#' The internal validation measure can be set the `eval` parameter which should be a list of [mlr3::Measure]s, functions, or strings for the internal lightgbm measures.
#' If `first_metric_only = FALSE` (default), the learner stops when any metric fails to improve.
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
        objective = p_fct(levels = c("binary", "multiclass", "multiclassova"), tags = "train"),
        eval = p_uty(tags = "train", custom_check = mlr3misc::crate({function(x) {
          if (!is.character(x) || !is.function(x) || !inherits(x, "Measure") || !is.list(x)) {
            sprintf("Must be of type 'string', 'function, 'Measure' or 'list', not '%s'", class(x))
          }
          if (is.list(x)) {
            check_list(x, types = c("character", "function", "Measure"), min.len = 1, null.ok = FALSE)
          }
          return(TRUE)
        }})),
        verbose = p_int(default = 1L, tags = "train"),
        record = p_lgl(default = TRUE, tags = "train"),
        eval_freq = p_int(default = 1L, lower = 1L, tags = "train"),
        callbacks = p_uty(tags = "train"),
        reset_data = p_lgl(default = FALSE, tags = "train"),
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
        bagging_by_query = p_lgl(default = FALSE, tags = "train"),
        feature_fraction = p_dbl(default = 1.0, lower = 0.0, upper = 1.0, tags = "train"),
        feature_fraction_bynode = p_dbl(default = 1.0, lower = 0.0, upper = 1.0, tags = "train"),
        feature_fraction_seed = p_int(default = 2L, tags = "train"),
        extra_trees = p_lgl(default = FALSE, tags = "train"),
        extra_seed = p_int(default = 6L, tags = "train"),
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
        use_quantized_grad = p_lgl(default = TRUE, tags = "train"),
        num_grad_quant_bins = p_int(default = 4, tags = "train"),
        quant_train_renew_leaf = p_lgl(default = FALSE, tags = "train"),
        stochastic_rounding = p_lgl(default = TRUE, tags = "train"),
        serializable = p_lgl(default = TRUE, tags = "train"),

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
        pred_early_stop_margin = p_dbl(default = 10, tags = "predict"),

        # early_stopping
        num_iterations = p_int(
          lower = 1L,
          upper = Inf,
          default = 100L,
          tags = c("train", "internal_tuning", "hotstart"),
          aggr = crate(function(x) as.integer(ceiling(mean(unlist(x)))), .parent = topenv()),
          in_tune_fn = crate(function(domain, param_vals) {
            if (is.null(param_vals$early_stopping_rounds)) {
              stop("Parameter 'early_stopping_rounds' must be set to use internal tuning.")
            }
            if (is.null(param_vals$eval)) {
              stop("Parameter 'eval' must be explicitly set for internal tuning.")
            }
            assert_integerish(domain$upper, len = 1L, any.missing = FALSE)
          }, .parent = topenv()),
          disable_in_tune = list(
            early_stopping_rounds = NULL,
            early_stopping_min_delta = NULL)
        ),
        early_stopping_rounds = p_int(lower = 1L, tags = "train"),
        early_stopping_min_delta = p_dbl(lower = 0, tags = "train"),
        first_metric_only = p_lgl(default = FALSE, tags = "train")
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

      ps$values = list(num_threads = 1L, verbose = -1L)

      super$initialize(
        id = "classif.lightgbm",
        packages = c("mlr3extralearners", "lightgbm"),
        feature_types = c("numeric", "integer", "factor", "logical"),
        predict_types = c("prob", "response"),
        param_set = ps,
        properties = c(
          "weights",
          "missings",
          "importance",
          "twoclass",
          "multiclass",
          "hotstart_forward",
          "internal_tuning",
          "validation"),
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
    .validate = NULL,

    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")

      # convert data
      x_train = data.matrix(task$data(rows = task$row_roles$use, cols = task$feature_names))
      y_train = task$data(rows = task$row_roles$use, cols = task$target_names)[[1L]]

      # set objective
      # catch incorrect objective setting
      if (!is.null(pars$objective) && pars$objective %in% c("multiclass", "multiclassova") &&
        !("multiclass" %in% task$properties)) {
        stopf("Objective cannot be 'multiclass' or 'multiclassova' if task is not multiclass.")
      }

      # set default objective
      if (is.null(pars$objective)) {
        if ("multiclass" %in% task$properties) {
          pars$objective = "multiclass"
        } else {
          pars$objective = "binary"
        }
      }

      # set number of classes if multiclass and save label ordering
      if (pars$objective %in% c("multiclass", "multiclassova")) {
        pars$num_class = length(task$class_names)
      }

      if (pars$objective %in% c("multiclass", "multiclassova")) {
        y_train = as.integer(y_train) - 1L
      } else {
        y_train = as.integer(y_train == task$positive)
      }

      # create data set
      categorical_feature = if (any(task$feature_types$type %in% c("factor", "logical"))) {
        task$feature_types$id[task$feature_types$type %in% c("factor", "logical")]
      }

      dtrain = lightgbm::lgb.Dataset(
        data = x_train,
        label = y_train,
        free_raw_data = FALSE,
        categorical_feature = categorical_feature,
        weight = private$.get_weights(task)
      )

      # early stopping
      internal_valid_task = task$internal_valid_task

      if (!is.null(pars$early_stopping_rounds) && is.null(internal_valid_task)) {
        stopf("Learner (%s): Configure field 'validate' to enable early stopping.", self$id)
      }

      valids = list()
      if (!is.null(internal_valid_task)) {

        x_valid = data.matrix(internal_valid_task$data(cols = internal_valid_task$feature_names))
        y_valid = internal_valid_task$data(cols = internal_valid_task$target_names)[[1L]]

        if (task$task_type == "classif") {
          if (pars$objective %in% c("multiclass", "multiclassova")) {
            y_valid = as.integer(y_valid) - 1L
          } else {
            y_valid = as.integer(y_valid == internal_valid_task$positive)
          }
        }

        dvalid = lightgbm::lgb.Dataset.create.valid(
          dataset = dtrain,
          data = x_valid,
          label = y_valid,
          weight = private$.get_weights(internal_valid_task),
          params = list(categorical_feature = categorical_feature)
        )

        valids[["test"]] = dvalid
      }

      # set internal validation measure
      if (!is.null(pars$eval)) {
        if (!is.list(pars$eval)) pars$eval = list(pars$eval)
        metrics = map(pars$eval, function(internal_measure) {
          # lightgbm measure and custom function
          if (is.character(internal_measure) || is.function(internal_measure)) return(internal_measure)

          # mlr3 measure to custom function
          if (inherits(internal_measure, "Measure")) {
            n_classes = length(task$class_names)
            measure = internal_measure

            fun = if (pars$objective == "binary" && measure$predict_type == "prob" && inherits(measure, "MeasureBinarySimple")) {
              lightgbm_binary_binary_prob
            } else if (pars$objective == "binary" && measure$predict_type == "prob" && inherits(measure, "MeasureClassifSimple")) {
              lightgbm_binary_classif_prob
            } else if (pars$objective == "binary" && measure$predict_type == "response") {
              lightgbm_binary_response
            } else if (pars$objective == "multiclass" && measure$predict_type == "prob") {
              lightgbm_multiclass_prob
            } else if (pars$objective == "multiclass" && measure$predict_type == "response") {
              lightgbm_multiclass_response
            } else {
              stop("Only 'binary', and 'multiclass' objectives are supported.")
            }

            mlr3misc::crate({function(pred, dtrain) {
              scores = fun(pred, dtrain, measure, n_classes)
              list(name = measure$id, value = scores, higher_better = !measure$minimize)
            }}, n_classes = n_classes, measure = measure, fun = fun)
          }
        })
        # without "None" lightgbm also stops on the default measure
        pars$eval = c(metrics, "None")
      }

      ii = names(pars) %in% formalArgs(lightgbm::lgb.train)
      args = pars[ii]
      params = pars[!ii]

      model = invoke(
        lightgbm::lgb.train,
        data = dtrain,
        valids = valids,
        .args = args,
        params = params
      )
      attr(model, "mlr3_info") = task$levels()[[task$target_names]]
      model
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      data = encode_lightgbm_predict(task, self$state$data_prototype, self)$X

      pred = invoke(predict, self$model, data, params = pars)

      labels = attr(self$model, "mlr3_info")

      response = NULL

      if ("multiclass" %in% task$properties) {
        pred_mat = pred
        colnames(pred_mat) = labels
        if (self$predict_type == "response") {
          which = apply(pred_mat, 1, which.max)
          response = labels[which]
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

      if (!is.null(pars_train$early_stopping_rounds)) {
        stop("The parameter `early_stopping_rounds` is set. Early stopping and hotstarting are incompatible.")
      }

      # calculate additional boosting iterations
      pars_train$num_iterations = pars$num_iterations - self$state$param_vals$num_iterations

      # convert data
      x_train = data.matrix(task$data(rows = task$row_roles$use, cols = task$feature_names))
      y_train = task$data(rows = task$row_roles$use, cols = task$target_names)[[1L]]

      # set default objective
      if (is.null(pars_train$objective)) {
        if ("multiclass" %in% task$properties) {
          pars_train$objective = "multiclass"
        } else {
          pars_train$objective = "binary"
        }
      }

      # set number of classes if multiclass and save label ordering
      if (pars_train$objective %in% c("multiclass", "multiclassova")) {
        pars_train$num_class = length(task$class_names)
      }

      if (pars_train$objective %in% c("multiclass", "multiclassova")) {
        y_train = as.integer(y_train) - 1L
      } else {
        y_train = as.integer(y_train == task$positive)
      }

      # create data set
      categorical_feature = if (any(task$feature_types$type %in% c("factor", "logical"))) {
        task$feature_types$id[task$feature_types$type %in% c("factor", "logical")]
      }

      dtrain = lightgbm::lgb.Dataset(
        data = x_train,
        label = y_train,
        free_raw_data = FALSE,
        categorical_feature = categorical_feature,
        weight = task$weights_learner["row_id" %in% task$row_roles$use, "weight"][[1L]]
      )

      ii = names(pars_train) %in% formalArgs(lightgbm::lgb.train)
      args = pars_train[ii]
      params = pars_train[!ii]

      invoke(
        lightgbm::lgb.train,
        data = dtrain,
        .args = args,
        params = params,
        init_model = self$model
      )
    },

    .extract_internal_tuned_values = function() {
      if (is.null(self$state$param_vals$early_stopping_rounds)) {
        return(named_list())
      }
      list(num_iterations = self$model$best_iter)
    },

    .extract_internal_valid_scores = function() {
      if (is.null(self$model$record_evals$test)) {
        return(named_list())
      }

      map(self$model$record_evals$test, function(metric) {
        metric$eval[[length(metric$eval)]]
      })
    }
  ),

  active = list(
    #' @field internal_valid_scores
    #' The last observation of the validation scores for all metrics.
    #' Extracted from `model$evaluation_log`
    internal_valid_scores = function() {
      self$state$internal_valid_scores
    },

    #' @field internal_tuned_values
    #' Returns the early stopped iterations if `early_stopping_rounds` was set during training.
    internal_tuned_values = function() {
      self$state$internal_tuned_values
    },

    #' @field validate
    #' How to construct the internal validation data. This parameter can be either `NULL`, a ratio, `"test"`, or `"predefined"`.
    validate = function(rhs) {
      if (!missing(rhs)) {
        private$.validate = mlr3::assert_validate(rhs)
      }
      private$.validate
    }
  )
)

.extralrns_dict$add("classif.lightgbm", LearnerClassifLightGBM)


lightgbm_binary_binary_prob = mlr3misc::crate({function(pred, dtrain, measure, ...) {
  # label is a vector of labels (0, 1)
  truth = factor(lightgbm::get_field(dtrain, "label"), levels = c(0, 1))
  measure$fun(truth, pred, positive = "1")
}})

lightgbm_binary_classif_prob = mlr3misc::crate({function(pred, dtrain, measure, ...) {
  # label is a vector of labels (0, 1)
  truth = factor(lightgbm::get_field(dtrain, "label"), levels = c(0, 1))
  # multiclass measure needs a matrix of probabilities
  pred_mat = matrix(c(pred, 1 - pred), ncol = 2)
  colnames(pred_mat) = c("1", "0")
  measure$fun(truth, pred_mat, positive = "1")
}})

lightgbm_binary_response = mlr3misc::crate({ function(pred, dtrain, measure, ...) {
  # label is a vector of labels (0, 1)
  truth = factor(lightgbm::get_field(dtrain, "label"), levels = c(0, 1))

  response = factor(as.integer(pred > 0.5), levels = c(0, 1))
  measure$fun(truth, response)
}})

lightgbm_multiclass_prob = mlr3misc::crate({ function(pred, dtrain, measure, n_classes, ...) {
  # label is a vector of labels (0, 1, ..., n_classes - 1)
  truth = factor(lightgbm::get_field(dtrain, "label"), levels = seq_len(n_classes) - 1L)

  # pred is a vector of probabilities for each class
  # matrix must be filled by columns
  prob = matrix(pred, ncol = n_classes)
  colnames(prob) = levels(truth) # FIXME: How handle missing classes?

  measure$fun(truth, prob)
}})

lightgbm_multiclass_response = mlr3misc::crate({function(pred, dtrain, measure, n_classes, ...) {
  # label is a vector of labels (0, 1, ..., n_classes - 1)
  truth = factor(lightgbm::get_field(dtrain, "label"), levels = seq_len(n_classes) - 1L)

  # pred is a vector of probabilities for each class
  # matrix must be filled by columns
  prob = matrix(pred, ncol = n_classes)  # FIXME: How handle missing classes?

  response = factor(max.col(matrix(pred, ncol = n_classes), ties.method = "random") - 1, levels = levels(truth))
  measure$fun(truth, response)
}})

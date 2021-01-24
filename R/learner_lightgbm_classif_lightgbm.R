#' @title Classification Light GBM Learner
#' @author kapsner
#' @name mlr_learners_classif.lightgbm
#'
#' @template class_learner
#' @templateVar id classif.lightgbm
#' @templateVar caller lgb.train
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
#' @details
#' For categorical features either first transform factor colums with [mlr3pipelines::PipeOpEncode]
#' or convert the columns with `as.integer` and specify the categorical columns with the
#' `categorical_feature` parameter.
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
      ps = ParamSet$new(
        params = list(
          # lgb.train core functions
          ParamInt$new(id = "nrounds", default = 5L, lower = 1L, tags = "train"),
          ParamFct$new(id = "objective", default = "binary", levels = c("binary",
            "multiclass", "multiclassova", "cross_entropy", "cross_entropy_lambda", "lambdarank",
             "rank_xendcg"), tags = "train"),
          ParamFct$new(id = "metric", default = "", levels = c("", "None", "ndcg",
            "map", "auc", "average_precision", "binary_logloss", "binary_error", "auc_mu",
            "multi_logloss", "multi_error", "cross_entropy", "cross_entropy_lambda",
            "kullback_leibler"), tags = "train"),
          ParamUty$new(id = "custom_eval", default = NULL, tags = "train"),
          ParamInt$new(id = "verbose", default = 1L, tags = "train"),
          ParamLgl$new(id = "record", default = TRUE, tags = "train"),
          ParamInt$new(id = "eval_freq", default = 1L, lower = 1L, tags = "train"),
          ParamUty$new(id = "init_model", default = NULL, tags = "train"),
          ParamInt$new(id = "early_stopping_rounds", lower = 1L, tags = "train"),
          ParamUty$new(id = "callbacks", tags = "train"),
          ParamLgl$new(id = "reset_data", default = FALSE, tags = "train"),
          ParamUty$new(id = "categorical_feature", default = "", tags = "train"),
          # other core functions
          ParamFct$new(id = "boosting", default = "gbdt", levels = c("gbdt", "rf", "dart",
            "goss"), tags = "train"),
          ParamLgl$new(id = "linear_tree", default = FALSE, tags = "train"),
          ParamInt$new(id = "num_iterations", default = 100L, lower = 0L, tags = "train"),
          ParamDbl$new(id = "learning_rate", default = 0.1, lower = 0.0, tags = "train"),
          ParamInt$new(id = "num_leaves", default = 31L, lower = 1L, upper = 131072L,
            tags = "train"),
          ParamFct$new(id = "tree_learner", default = "serial", levels = c("serial", "feature",
            "data", "voting"), tags = "train"),
          ParamInt$new(id = "num_threads", default = 0L, lower = 0L, tags = "train"),
          ParamFct$new(id = "device_type", default = "cpu", levels = c("cpu", "gpu"),
            tags = "train"),
          ParamInt$new(id = "seed", tags = "train"),
          ParamLgl$new(id = "deterministic", default = FALSE, tags = "train"),
          # Learning control parameters
          ParamLgl$new(id = "force_col_wise", default = FALSE, tags = "train"),
          ParamLgl$new(id = "force_row_wise", default = FALSE, tags = "train"),
          ParamInt$new(id = "histogram_pool_size", default = -1L, tags = "train"),
          ParamInt$new(id = "max_depth", default = -1L, tags = "train"),
          ParamInt$new(id = "min_data_in_leaf", default = 20L, lower = 0L, tags = "train"),
          ParamDbl$new(id = "min_sum_hessian_in_leaf", default = 1e-3, lower = 0, tags = "train"),
          ParamDbl$new(id = "bagging_fraction", default = 1.0, lower = 0.0, upper = 1.0,
            tags = "train"),
          ParamDbl$new(id = "pos_bagging_fraction", default = 1.0, lower = 0.0, upper = 1.0,
            tags = "train"),
          ParamDbl$new(id = "neg_bagging_fraction", default = 1.0, lower = 0, upper = 1.0,
            tags = "train"),
          ParamInt$new(id = "bagging_freq", default = 0L, lower = 0L, tags = "train"),
          ParamInt$new(id = "bagging_seed", default = 3L, tags = "train"),
          ParamDbl$new(id = "feature_fraction", default = 1.0, lower = 0.0, upper = 1.0,
            tags = "train"),
          ParamDbl$new(id = "feature_fraction_bynode", default = 1.0, lower = 0.0, upper = 1.0,
            tags = "train"),
          ParamInt$new(id = "feature_fraction_seed", default = 2L, tags = "train"),
          ParamLgl$new(id = "extra_trees", default = FALSE, tags = "train"),
          ParamInt$new(id = "extra_seed", default = 6L, tags = "train"),
          ParamLgl$new(id = "first_metric_only", default = FALSE, tags = "train"),
          ParamDbl$new(id = "max_delta_step", default = 0.0, tags = "train"),
          ParamDbl$new(id = "lambda_l1", default = 0.0, lower = 0.0, tags = "train"),
          ParamDbl$new(id = "lambda_l2", default = 0.0, lower = 0.0, tags = "train"),
          ParamDbl$new(id = "linear_lambda", default = 0.0, lower = 0.0, tags = "train"),
          ParamDbl$new(id = "min_gain_to_split", default = 0.0, lower = 0.0, tags = "train"),
          ParamDbl$new(id = "drop_rate", default = 0.1, lower = 0.0, upper = 1.0, tags = "train"),
          ParamInt$new(id = "max_drop", default = 50L, tags = "train"),
          ParamDbl$new(id = "skip_drop", default = 0.5, lower = 0.0, upper = 1.0, tags = "train"),
          ParamLgl$new(id = "xgboost_dart_mode", default = FALSE, tags = "train"),
          ParamLgl$new(id = "uniform_drop", default = FALSE, tags = "train"),
          ParamInt$new(id = "drop_seed", default = 4L, tags = "train"),
          ParamDbl$new(id = "top_rate", default = 0.2, lower = 0.0, upper = 1.0, tags = "train"),
          ParamDbl$new(id = "other_rate", default = 0.1, lower = 0.0, upper = 1.0, tags = "train"),
          ParamInt$new(id = "min_data_per_group", default = 100L, lower = 1L, tags = "train"),
          ParamInt$new(id = "max_cat_threshold", default = 32L, lower = 1L, tags = "train"),
          ParamDbl$new(id = "cat_l2", default = 10.0, lower = 0.0, tags = "train"),
          ParamDbl$new(id = "cat_smooth", default = 10.0, lower = 0.0, tags = "train"),
          ParamInt$new(id = "max_cat_to_onehot", default = 4L, lower = 1L, tags = "train"),
          ParamInt$new(id = "top_k", default = 20L, lower = 1L, tags = "train"),
          ParamUty$new(id = "monotone_constraints", default = NULL, tags = "train"),
          ParamFct$new(id = "monotone_constraints_method", default = "basic", levels = c("basic",
            "intermediate", "advanced"), tags = "train"),
          ParamDbl$new(id = "monotone_penalty", default = 0, lower = 0, tags = "train"),
          ParamUty$new(id = "feature_contri", default = NULL, tags = "train"),
          ParamUty$new(id = "forcedsplits_filename", default = "", tags = "train"),
          ParamDbl$new(id = "refit_decay_rate", default = 0.9, lower = 0, upper = 1,
            tags = "train"),
          ParamDbl$new(id = "cegb_tradeoff", default = 1.0, lower = 0.0, tags = "train"),
          ParamDbl$new(id = "cegb_penalty_split", default = 0.0, lower = 0.0, tags = "train"),
          ParamUty$new(id = "cegb_penalty_feature_lazy", tags = "train"),
          ParamUty$new(id = "cegb_penalty_feature_coupled", tags = "train"),
          ParamDbl$new(id = "path_smooth", default = 0.0, lower = 0.0, tags = "train"),
          ParamUty$new(id = "interaction_constraints", tags = "train"),
          ParamUty$new(id = "input_model", default = "", tags = "train"),
          ParamUty$new(id = "output_model", default = "LightGBM_model.txt", tags = "train"),
          ParamInt$new(id = "saved_feature_importance_type", default = 0L, lower = 0L, upper = 1L,
            tags = "train"),
          ParamInt$new(id = "snapshot_freq", default = -1L, tags = "train"),
          # dataset parameters
          ParamInt$new(id = "max_bin", default = 255L, lower = 2L, tags = "train"),
          ParamUty$new(id = "max_bin_by_feature", default = NULL, tags = "train"),
          ParamInt$new(id = "min_data_in_bin", default = 3L, lower = 1L, tags = "train"),
          ParamInt$new(id = "bin_construct_sample_cnt", default = 200000L, lower = 1L,
            tags = "train"),
          ParamInt$new(id = "data_random_seed", default = 1L, tags = "train"),
          ParamLgl$new(id = "is_enable_sparse", default = TRUE, tags = "train"),
          ParamLgl$new(id = "enable_bundle", default = TRUE, tags = "train"),
          ParamLgl$new(id = "use_missing", default = TRUE, tags = "train"),
          ParamLgl$new(id = "zero_as_missing", default = FALSE, tags = "train"),
          ParamLgl$new(id = "feature_pre_filter", default = TRUE, tags = "train"),
          ParamLgl$new(id = "pre_partition", default = FALSE, tags = "train"),
          ParamLgl$new(id = "two_round", default = FALSE, tags = "train"),
          ParamLgl$new(id = "header", default = FALSE, tags = "train"),
          ParamUty$new(id = "group_column", default = "", tags = "train"),
          ParamUty$new(id = "forcedbins_filename", default = "", tags = "train"),
          ParamLgl$new(id = "save_binary", default = FALSE, tags = "train"),
          # objective parameters
          ParamInt$new(id = "objective_seed", default = 5L, tags = "train"),
          ParamLgl$new(id = "is_unbalance", default = FALSE, tags = "train"),
          ParamDbl$new(id = "scale_pos_weight", default = 1, lower = 0, tags = "train"),
          ParamDbl$new(id = "sigmoid", default = 1, lower = 0, tags = "train"),
          ParamLgl$new(id = "boost_from_average", default = TRUE, tags = "train"),
          ParamInt$new(id = "lambdarank_truncation_level", default = 30L, lower = 1L,
            tags = "train"),
          ParamLgl$new(id = "lambdarank_norm", default = TRUE, tags = "train"),
          ParamUty$new(id = "label_gain", tags = "train"),
          # metric parameters
          ParamInt$new(id = "metric_freq", default = 1L, lower = 1L, tags = "train"),
          ParamLgl$new(id = "is_provide_training_metric", default = FALSE, tags = "train"),
          ParamUty$new(id = "eval_at", default = 1:5, tags = "train"),
          ParamInt$new(id = "multi_error_top_k", default = 1L, lower = 1L, tags = "train"),
          ParamUty$new(id = "auc_mu_weights", default = NULL, tags = "train"),
          # network parameters
          ParamInt$new(id = "num_machines", default = 1L, lower = 1L, tags = "train"),
          ParamInt$new(id = "local_listen_port", default = 12400L, lower = 1L, tags = "train"),
          ParamInt$new(id = "time_out", default = 120L, lower = 1L, tags = "train"),
          ParamUty$new(id = "machine_list_filename", default = "", tags = "train"),
          ParamUty$new(id = "machines", default = "", tags = "train"),
          # GPU parameters
          ParamInt$new(id = "gpu_platform_id", default = -1L, tags = "train"),
          ParamInt$new(id = "gpu_device_id", default = -1L, tags = "train"),
          ParamLgl$new(id = "gpu_use_dp", default = FALSE, tags = "train"),
          ParamInt$new(id = "num_gpu", default = 1L, lower = 1L, tags = "train"),
          # predict parameters
          ParamInt$new("start_iteration", default = 0L, tags = "predict"),
          ParamInt$new("num_iteration", default = -1L, tags = "predict"),
          ParamLgl$new("pred_early_stop", default = FALSE, tags = "predict"),
          ParamInt$new("pred_early_stop_freq", default = 10L, tags = "predict"),
          ParamDbl$new("pred_early_stop_margin", default = 10, tags = "predict"),
          ParamUty$new("output_result", default = "LightGBM_predict_result.txt", tags = "predict")
        )
      )

      ps$add_dep("pos_bagging_fraction", "objective", CondEqual$new("binary"))
      ps$add_dep("neg_bagging_fraction", "objective", CondEqual$new("binary"))
      ps$add_dep("objective_seed", "objective", CondEqual$new("rank_xendcg"))
      ps$add_dep("is_unbalance", "objective", CondAnyOf$new(c("binary", "multiclassova")))
      ps$add_dep("scale_pos_weight", "objective", CondAnyOf$new(c("binary", "multiclassova")))
      ps$add_dep("sigmoid", "objective", CondAnyOf$new(c("binary", "multiclassova", "lambdarank")))
      ps$add_dep("lambdarank_truncation_level", "objective", CondEqual$new("lambdarank"))
      ps$add_dep("lambdarank_norm", "objective", CondEqual$new("lambdarank"))
      ps$add_dep("label_gain", "objective", CondEqual$new("lambdarank"))
      ps$add_dep("boost_from_average", "objective", CondAnyOf$new(c(
        "binary", "multiclassova",
        "cross_entropy"
      )))
      ps$add_dep("eval_at", "metric", CondAnyOf$new(c("ndcg", "map")))
      ps$add_dep("multi_error_top_k", "metric", CondEqual$new("multi_error"))
      ps$add_dep("auc_mu_weights", "metric", CondEqual$new("auc_mu"))

      ps$add_dep("drop_rate", "boosting", CondEqual$new("dart"))
      ps$add_dep("max_drop", "boosting", CondEqual$new("dart"))
      ps$add_dep("skip_drop", "boosting", CondEqual$new("dart"))
      ps$add_dep("xgboost_dart_mode", "boosting", CondEqual$new("dart"))
      ps$add_dep("uniform_drop", "boosting", CondEqual$new("dart"))
      ps$add_dep("drop_seed", "boosting", CondEqual$new("dart"))
      ps$add_dep("top_rate", "boosting", CondEqual$new("goss"))
      ps$add_dep("other_rate", "boosting", CondEqual$new("goss"))

      ps$values = list(num_threads = 1L, verbose = -1L)

      super$initialize(
        id = "classif.lightgbm",
        packages = "lightgbm",
        feature_types = c("numeric", "integer"),
        predict_types = c("prob", "response"),
        param_set = ps,
        properties = c("weights", "missings", "importance", "twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.lightgbm"
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
        return(mlr3misc::named_vector(self$state$feature_names, 0))
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

      # catch incorrect objective setting
      if (!is.null(pars$objective) && pars$objective %in% c("multiclass", "multiclassova") &&
          !("multiclass" %in% task$properties)) {
            stop("Objective cannot be 'multiclass' or 'multiclassova' if task is not multiclass.")
      }

      # set default objective
      if (is.null(pars$objective)) {
        if ("multiclass" %in% task$properties)  {
          pars$objective = "multiclass"
        } else {
          pars$objective = "binary"
        }
      }

      # set number of classes if multiclass and save label ordering
      if (pars$objective %in% c("multiclass", "multiclassova")) {
        pars$num_class = length(task$class_names)
        self$state$labels = unique(task$truth())
      }

      if (length(task$row_roles$validation)) {
        train_ids = setdiff(seq(task$nrow), task$row_roles$validation)
        valid_ids = task$row_roles$validation

        if (pars$objective %in% c("multiclass", "multiclassova")) {
          train_label = as.integer(task$truth(rows = train_ids)) - 1
          valid_label = as.integer(task$truth(rows = valid_ids)) - 1
        } else {
          train_label = as.integer(task$truth(rows = train_ids) == task$positive)
          valid_label = as.integer(task$truth(rows = valid_ids) == task$positive)
        }

        dtrain = lightgbm::lgb.Dataset(
          data = as.matrix(task$data(rows = train_ids, cols = task$feature_names)),
          label = train_label,
          free_raw_data = FALSE
        )

        dtest = lightgbm::lgb.Dataset.create.valid(
          dataset = dtrain,
          data = as.matrix(task$data(rows = valid_ids, cols = task$feature_names)),
          label = valid_label
        )

        if ("weights" %in% task$properties) {
          dtrain$setinfo("weight", subset(task$weights, row_id %in% train_ids)$weight)
          dtest$setinfo("weight", subset(task$weights, row_id %in% valid_ids)$weight)
        }

        mlr3misc::invoke(
          lightgbm::lgb.train,
          data = dtrain,
          valids = list(test = dtest),
          .args = pars
        )

      } else {

        if (pars$objective %in% c("multiclass", "multiclassova")) {
          train_label = as.integer(task$truth()) - 1
        } else {
          train_label = as.integer(task$truth() == task$positive)
        }

        dtrain = lightgbm::lgb.Dataset(
          data = as.matrix(task$data(cols = task$feature_names)),
          label = train_label,
          free_raw_data = FALSE
        )

        if ("weights" %in% task$properties) {
          dtrain$setinfo("weight", task$weights$weight)
        }

        mlr3misc::invoke(
          lightgbm::lgb.train,
          data = dtrain,
          .args = pars
        )
      }

    },

    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = as.matrix(task$data(cols = self$state$feature_names))

      pred = mlr3misc::invoke(predict,
        object = self$model,
        data = newdata,
        reshape = TRUE,
        .args = pars
      )

      response = NULL

      if ("multiclass" %in% task$properties) {
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
    }
  )
)

.extralrns_dict$add("classif.lightgbm", LearnerClassifLightGBM)

#' @title Extreme Gradient Boosting AFT Survival Learner
#' @author bblodfon
#' @name mlr_learners_surv.xgboost.aft
#'
#' @description
#' eXtreme Gradient Boosting regression using an **Accelerated Failure Time**
#' objective.
#' Calls [xgboost::xgb.train()] from package \CRANpkg{xgboost} with `objective`
#' set to `survival:aft` and `eval_metric` to `aft-nloglik`.
#'
#' @section Prediction types:
#' This learner returns three prediction types:
#' 1. `response`: the estimated survival time \eqn{T} for each test observation.
#' 2. `lp`: a vector of linear predictors (relative risk scores), one per
#' observation, estimated as \eqn{-log(T)}.
#' Higher survival time denotes lower risk.
#' 3. `crank`: same as `lp`.
#'
#' @template note_xgboost
#'
#' @section Initial parameter values:
#' - `nrounds` is initialized to 1000.
#' - `nthread` is initialized to 1 to avoid conflicts with parallelization via \CRANpkg{future}.
#' - `verbose` is initialized to 0.
#'
#' @template section_early_stopping
#' @templateVar id surv.xgboost.aft
#' @template learner
#'
#' @references
#' `r format_bib("chen_2016", "barnwal2022")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvXgboostAFT = R6Class("LearnerSurvXgboostAFT",
  inherit = mlr3proba::LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      p_nrounds = p_int(1L,
        tags = c("train", "hotstart", "internal_tuning"),
        aggr = crate(function(x) as.integer(ceiling(mean(unlist(x)))), .parent = topenv()),
        in_tune_fn = crate(function(domain, param_vals) {
          if (is.null(param_vals$early_stopping_rounds)) {
            stop("Parameter 'early_stopping_rounds' must be set to use internal tuning.")
          }
          assert_integerish(domain$upper, len = 1L, any.missing = FALSE) }, .parent = topenv()),
        disable_in_tune = list(early_stopping_rounds = NULL)
      )

      ps = ps(
        aft_loss_distribution       = p_fct(c("normal", "logistic", "extreme"), default = "normal", tags = "train"),
        aft_loss_distribution_scale = p_dbl(tags = "train"),
        alpha                       = p_dbl(0, default = 0, tags = "train"),
        base_score                  = p_dbl(default = 0.5, tags = "train"),
        booster                     = p_fct(c("gbtree", "gblinear", "dart"), default = "gbtree", tags = "train"),
        callbacks                   = p_uty(default = list(), tags = "train"),
        colsample_bylevel           = p_dbl(0, 1, default = 1, tags = "train"),
        colsample_bynode            = p_dbl(0, 1, default = 1, tags = "train"),
        colsample_bytree            = p_dbl(0, 1, default = 1, tags = "train"),
        disable_default_eval_metric = p_lgl(default = FALSE, tags = "train"),
        early_stopping_rounds       = p_int(1L, default = NULL, special_vals = list(NULL), tags = "train"),
        eta                         = p_dbl(0, 1, default = 0.3, tags = "train"),
        feature_selector            = p_fct(c("cyclic", "shuffle", "random", "greedy", "thrifty"), default = "cyclic", tags = "train"), #nolint
        feval                       = p_uty(default = NULL, tags = "train"),
        gamma                       = p_dbl(0, default = 0, tags = "train"),
        grow_policy                 = p_fct(c("depthwise", "lossguide"), default = "depthwise", tags = "train"),
        interaction_constraints     = p_uty(tags = "train"),
        iterationrange              = p_uty(tags = "predict"),
        lambda                      = p_dbl(0, default = 1, tags = "train"),
        lambda_bias                 = p_dbl(0, default = 0, tags = "train"),
        max_bin                     = p_int(2L, default = 256L, tags = "train"),
        max_delta_step              = p_dbl(0, default = 0, tags = "train"),
        max_depth                   = p_int(0L, default = 6L, tags = "train"),
        max_leaves                  = p_int(0L, default = 0L, tags = "train"),
        maximize                    = p_lgl(default = NULL, special_vals = list(NULL), tags = "train"),
        min_child_weight            = p_dbl(0, default = 1, tags = "train"),
        missing                     = p_dbl(default = NA, tags = c("train", "predict"), special_vals = list(NA, NA_real_, NULL)), #nolint
        monotone_constraints        = p_int(-1L, 1L, default = 0L, tags = "train"),
        normalize_type              = p_fct(c("tree", "forest"), default = "tree", tags = "train"),
        nrounds                     = p_nrounds,
        nthread                     = p_int(1L, default = 1L, tags = c("train", "threads")),
        ntreelimit                  = p_int(1L, tags = "predict"),
        num_parallel_tree           = p_int(1L, default = 1L, tags = "train"),
        one_drop                    = p_lgl(default = FALSE, tags = "train"),
        print_every_n               = p_int(1L, default = 1L, tags = "train"),
        process_type                = p_fct(c("default", "update"), default = "default", tags = "train"),
        rate_drop                   = p_dbl(0, 1, default = 0, tags = "train"),
        refresh_leaf                = p_lgl(default = TRUE, tags = "train"),
        sampling_method             = p_fct(c("uniform", "gradient_based"), default = "uniform", tags = "train"),
        sample_type                 = p_fct(c("uniform", "weighted"), default = "uniform", tags = "train"),
        save_name                   = p_uty(tags = "train"),
        save_period                 = p_int(0L, tags = "train"),
        scale_pos_weight            = p_dbl(default = 1, tags = "train"),
        seed_per_iteration          = p_lgl(default = FALSE, tags = "train"),
        skip_drop                   = p_dbl(0, 1, default = 0, tags = "train"),
        strict_shape                = p_lgl(default = FALSE, tags = "predict"),
        subsample                   = p_dbl(0, 1, default = 1, tags = "train"),
        top_k                       = p_int(0, default = 0, tags = "train"),
        tree_method                 = p_fct(c("auto", "exact", "approx", "hist", "gpu_hist"), default = "auto", tags = "train"), #nolint
        tweedie_variance_power      = p_dbl(1, 2, default = 1.5, tags = "train"),
        updater                     = p_uty(tags = "train"), # Default depends on the selected booster
        verbose                     = p_int(0L, 2L, default = 1L, tags = "train"),
        watchlist                   = p_uty(default = NULL, tags = "train"),
        xgb_model                   = p_uty(tags = "train"),
        device                      = p_uty(tags = "train")
      )
      # param deps
      ps$add_dep("print_every_n", "verbose", CondEqual$new(1L))
      ps$add_dep("sample_type", "booster", CondEqual$new("dart"))
      ps$add_dep("normalize_type", "booster", CondEqual$new("dart"))
      ps$add_dep("rate_drop", "booster", CondEqual$new("dart"))
      ps$add_dep("skip_drop", "booster", CondEqual$new("dart"))
      ps$add_dep("one_drop", "booster", CondEqual$new("dart"))
      ps$add_dep("tree_method", "booster", CondAnyOf$new(c("gbtree", "dart")))
      ps$add_dep("grow_policy", "tree_method", CondEqual$new("hist"))
      ps$add_dep("max_leaves", "grow_policy", CondEqual$new("lossguide"))
      ps$add_dep("max_bin", "tree_method", CondEqual$new("hist"))
      ps$add_dep("feature_selector", "booster", CondEqual$new("gblinear"))
      ps$add_dep("top_k", "booster", CondEqual$new("gblinear"))
      ps$add_dep("top_k", "feature_selector", CondAnyOf$new(c("greedy", "thrifty")))

      # custom defaults
      ps$values = list(nrounds = 1000L, nthread = 1L, verbose = 0L)

      super$initialize(
        id = "surv.xgboost.aft",
        param_set = ps,
        predict_types = c("crank", "lp", "response"),
        feature_types = c("integer", "numeric"),
        properties = c("weights", "missings", "importance", "validation", "internal_tuning"),
        packages = c("mlr3extralearners", "xgboost"),
        man = "mlr3extralearners::mlr_learners_surv.xgboost.aft",
        label = "Extreme Gradient Boosting AFT"
      )
    },

    #' @description
    #' The importance scores are calculated with [xgboost::xgb.importance()].
    #'
    #' @return Named `numeric()`.
    importance = function() {
      xgb_imp(self$model)
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
    #' How to construct the internal validation data. This parameter can be either `NULL`,
    #' a ratio, `"test"`, or `"predefined"`.
    validate = function(rhs) {
      if (!missing(rhs)) {
        private$.validate = mlr3::assert_validate(rhs)
      }
      private$.validate
    }
  ),
  private = list(
    .validate = NULL,
    .extract_internal_tuned_values = function() {
      if (is.null(self$state$param_vals$early_stopping_rounds)) {
        return(NULL)
      }
      list(nrounds = self$model$niter)
    },

    .extract_internal_valid_scores = function() {
      if (is.null(self$model$evaluation_log)) {
        return(named_list())
      }
      patterns = NULL
      as.list(self$model$evaluation_log[
        get(".N"),
        set_names(get(".SD"), gsub("^test_", "", colnames(get(".SD")))),
        .SDcols = patterns("^test_")
      ])
    },
    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")
      # manually add 'objective' and 'eval_metric'
      pv = c(pv, objective = "survival:aft", eval_metric = "aft-nloglik")

      data = get_xgb_mat(task, pv$objective, private)

      internal_valid_task = task$internal_valid_task
      if (!is.null(pv$early_stopping_rounds) && is.null(internal_valid_task)) {
        stopf("Learner (%s): Configure field 'validate' to enable early stopping.", self$id)
      }
      if (!is.null(internal_valid_task)) {
        test_data = get_xgb_mat(internal_valid_task, pv$objective, private)
        # XGBoost uses the last element in the watchlist as
        # the early stopping set
        pv$watchlist = c(pv$watchlist, list(test = test_data))
      }

      invoke(xgboost::xgb.train, data = data, .args = pv)
    },

    .predict = function(task) {
      pv = self$param_set$get_values(tags = "predict")
      # manually add 'objective'
      pv = c(pv, objective = "survival:aft")
      model = self$model
      newdata = as_numeric_matrix(ordered_features(task, self))

      # prediction returns survival time, see discussion below:
      # https://discuss.xgboost.ai/t/understanding-xgboost-aft-predictions-question/3544
      surv_time = invoke(
        predict,
        model,
        newdata = newdata,
        .args = pv
      )

      # AFT formula: log(T) = lp + error => T = exp(lp + error)
      # the '-' is due to AFT-style prediction, since
      # higher values (survival times) => lower risk
      lp = -log(surv_time)

      mlr3proba::.surv_return(crank = lp, lp = lp, response = surv_time)
    }
  )
)

.extralrns_dict$add("surv.xgboost.aft", LearnerSurvXgboostAFT)

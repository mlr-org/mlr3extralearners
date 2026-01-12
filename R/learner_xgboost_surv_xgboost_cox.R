#' @title Extreme Gradient Boosting Cox Survival Learner
#' @author bblodfon
#' @name mlr_learners_surv.xgboost.cox
#'
#' @description
#' eXtreme Gradient Boosting regression using a **Cox Proportional Hazards**
#' objective.
#' Calls [xgboost::xgb.train()] from package \CRANpkg{xgboost} with `objective`
#' set to `survival:cox` and `eval_metric` to `cox-nloglik`.
#'
#' @section Prediction types:
#' Three types of prediction are returned for this learner:
#' 1. `lp`: a vector of linear predictors (relative risk scores), one per
#' observation.
#' 2. `crank`: same as `lp`.
#' 3. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' By default, the Breslow estimator is used via [mlr3proba::breslow()].
#'
#' @template note_xgboost
#'
#' @section Initial parameter values:
#' - `nrounds` is initialized to 1000.
#' - `nthread` is initialized to 1 to avoid conflicts with parallelization via \CRANpkg{future}.
#' - `verbose` and `verbosity` are both initialized to 0.
#'
#' @templateVar id surv.xgboost.cox
#' @template learner
#' @template section_early_stopping
#'
#' @references
#' `r format_bib("chen_2016")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvXgboostCox = R6Class("LearnerSurvXgboostCox",
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
          assert_integerish(domain$upper, len = 1L, any.missing = FALSE)}, .parent = topenv()),
        disable_in_tune = list(early_stopping_rounds = NULL),
        init = 1000L
      )
      ps = ps(
        alpha                       = p_dbl(0, default = 0, tags = "train"),
        base_score                  = p_dbl(default = 0.5, tags = "train"),
        booster                     = p_fct(c("gbtree", "gblinear", "dart"), default = "gbtree", tags = "train"),
        callbacks                   = p_uty(default = list(), tags = "train"),
        seed                        = p_int(tags = "train"),
        colsample_bylevel           = p_dbl(0, 1, default = 1, tags = "train", depends = quote(booster == "gbtree")),
        colsample_bynode            = p_dbl(0, 1, default = 1, tags = "train", depends = quote(booster == "gbtree")),
        colsample_bytree            = p_dbl(0, 1, default = 1, tags = "train", depends = quote(booster == "gbtree")),
        disable_default_eval_metric = p_lgl(default = FALSE, tags = "train"),
        early_stopping_rounds       = p_int(1L, default = NULL, special_vals = list(NULL), tags = "train"),
        evals                       = p_uty(default = NULL, tags = "train"),
        learning_rate               = p_dbl(0, 1, default = 0.3, tags = "train"),
        feature_selector            = p_fct(c("cyclic", "shuffle", "random", "greedy", "thrifty"), default = "cyclic", tags = "train", depends = quote(booster == "gblinear")), #nolint
        gamma                       = p_dbl(0, default = 0, tags = "train"),
        grow_policy                 = p_fct(c("depthwise", "lossguide"), default = "depthwise", tags = "train", depends = quote(booster == "gbtree" && tree_method %in% c("hist", "approx"))),
        interaction_constraints     = p_uty(tags = "train", depends = quote(booster == "gbtree")),
        iterationrange              = p_uty(tags = "predict"),
        lambda                      = p_dbl(0, default = 1, tags = "train"),
        max_bin                     = p_int(2L, default = 256L, tags = "train", depends = quote(tree_method %in% c("hist", "approx"))),
        max_delta_step              = p_dbl(0, default = 0, tags = "train", depends = quote(booster == "gbtree")),
        max_depth                   = p_int(0L, default = 6L, tags = "train", depends = quote(booster == "gbtree")),
        max_leaves                  = p_int(0L, default = 0L, tags = "train", depends = quote(booster == "gbtree")),
        maximize                    = p_lgl(default = NULL, special_vals = list(NULL), tags = "train"),
        min_child_weight            = p_dbl(0, default = 1, tags = "train", depends = quote(booster == "gbtree")),
        monotone_constraints        = p_int(-1L, 1L, default = 0L, tags = "train", depends = quote(booster == "gbtree")),
        normalize_type              = p_fct(c("tree", "forest"), default = "tree", tags = "train", depends = quote(booster == "dart")),
        nrounds                     = p_nrounds,
        nthread                     = p_int(1L, init = 1L, tags = c("train", "threads")),
        num_parallel_tree           = p_int(1L, default = 1L, tags = "train", depends = quote(booster == "gbtree")),
        one_drop                    = p_lgl(default = FALSE, tags = "train", depends = quote(booster == "dart")),
        print_every_n               = p_int(1L, default = 1L, tags = "train", depends = quote(verbose == 1L)),
        rate_drop                   = p_dbl(0, 1, default = 0, tags = "train", depends = quote(booster == "dart")),
        refresh_leaf                = p_lgl(default = TRUE, tags = "train", depends = quote(booster == "gbtree")),
        sampling_method             = p_fct(c("uniform", "gradient_based"), default = "uniform", tags = "train", depends = quote(booster == "gbtree")),
        sample_type                 = p_fct(c("uniform", "weighted"), default = "uniform", tags = "train", depends = quote(booster == "dart")),
        save_name                   = p_uty(tags = "train"),
        save_period                 = p_int(0L, tags = "train"),
        scale_pos_weight            = p_dbl(default = 1, tags = "train", depends = quote(booster == "gbtree")),
        seed_per_iteration          = p_lgl(default = FALSE, tags = "train"),
        skip_drop                   = p_dbl(0, 1, default = 0, tags = "train", depends = quote(booster == "dart")),
        use_rmm                     = p_lgl(default = FALSE, tags = "train"),
        max_cached_hist_node        = p_int(default = NULL, special_vals = list(NULL), tags = "train", depends = quote(tree_method %in% c("hist", "approx"))),
        extmem_single_page          = p_lgl(default = FALSE, tags = "train", depends = quote(tree_method %in% c("hist", "approx"))),
        max_cat_to_onehot           = p_int(default = 4L, tags = "train", depends = quote(tree_method %in% c("hist", "approx"))),
        max_cat_threshold           = p_int(default = 64L, tags = "train", depends = quote(tree_method %in% c("hist", "approx"))),
        subsample                   = p_dbl(0, 1, default = 1, tags = "train", depends = quote(booster == "gbtree")),
        top_k                       = p_int(0, default = 0, tags = "train", depends = quote(feature_selector %in% c("greedy", "thrifty") && booster == "gblinear")),
        tree_method                 = p_fct(c("auto", "exact", "approx", "hist", "gpu_hist"), default = "auto", tags = "train", depends = quote(booster %in% c("gbtree", "dart"))), #nolint
        updater                     = p_uty(tags = "train"), # Default depends on the selected booster
        verbose                     = p_int(0L, 2L, init = 0L, tags = "train"),
        verbosity                   = p_int(0L, 2L, init = 0L, tags = "train"),
        xgb_model                   = p_uty(tags = "train"),
        device                      = p_uty(tags = "train"),
        missing                     = p_dbl(default = NA, tags = "predict", special_vals = list(NA, NA_real_, NULL)),
        validate_features           = p_lgl(default = TRUE, tags = "predict")
      )

      super$initialize(
        id = "surv.xgboost.cox",
        param_set = ps,
        predict_types = c("crank", "lp", "distr"),
        feature_types = c("integer", "numeric"),
        properties = c("weights", "missings", "importance", "validation", "internal_tuning"),
        packages = c("mlr3extralearners", "xgboost"),
        man = "mlr3extralearners::mlr_learners_surv.xgboost.cox",
        label = "Extreme Gradient Boosting Cox"
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
    #' @field internal_valid_scores (named `list()` or `NULL`)
    #' Validation metrics extracted from the xgboost model's `evaluation_log`.
    #' If early stopping is enabled, the scores correspond to the
    #' `best_iteration` selected by early stopping. Otherwise, the scores are
    #' taken from the final boosting round (`nrounds`).
    internal_valid_scores = function() {
      self$state$internal_valid_scores
    },

    #' @field internal_tuned_values (named `list()` or `NULL`)
    #' If early stopping is activated, this returns a list with the early stopped
    #' iterations (`nrounds`), which is extracted from the best iteration of the model.
    #' Otherwise `NULL`.
    internal_tuned_values = function() {
      self$state$internal_tuned_values
    },

    #' @field validate
    #' How to construct the internal validation data.
    #' This parameter can be either `NULL`, a ratio, `"test"`, or `"predefined"`.
    validate = function(rhs) {
      if (!missing(rhs)) {
        private$.validate = mlr3::assert_validate(rhs)
      }
      private$.validate
    },

    #' @field model (any)\cr
    #' The fitted model. Only available after `$train()` has been called.
    model = function(rhs) {
      if (!missing(rhs)) {
        if (inherits(rhs, "xgb.Booster")) {
          rhs = list(
            structure("wrapper", model = rhs)
          )
        }
        self$state$model = rhs
      }
      # workaround https://github.com/Rdatatable/data.table/issues/7456
      attributes(self$state$model[[1]])$model
    }
  ),

  private = list(
    .validate = NULL,

    .extract_internal_tuned_values = function() {
      if (is.null(self$state$param_vals$early_stopping_rounds)) {
        return(NULL)
      }
      list(nrounds = attributes(self$model)$early_stop$best_iteration)
    },

    .extract_internal_valid_scores = function() {
      model = self$model
      if (is.null(attributes(model)$evaluation_log)) {
        return(named_list())
      }

      iter = attributes(model)$early_stop$best_iteration
      if (is.null(iter)) {
        iter = xgboost::xgb.get.num.boosted.rounds(model)
      }
      log = attributes(model)$evaluation_log
      patterns = NULL # silence data.table note
      as.list(log[
        iter,
        set_names(get(".SD"), gsub("^test_", "", colnames(get(".SD")))),
        .SDcols = patterns("^test_")
      ])
    },

    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")
      # manually add 'objective' and 'eval_metric'
      pv = c(pv, objective = "survival:cox", eval_metric = "cox-nloglik")
      weights = private$.get_weights(task)
      data = get_xgb_mat(task, pv$objective, weights)

      internal_valid_task = task$internal_valid_task
      if (!is.null(pv$early_stopping_rounds) && is.null(internal_valid_task)) {
        stopf("Learner (%s): Configure field 'validate' to enable early stopping.", self$id)
      }

      if (!is.null(internal_valid_task)) {
        test_weights = private$.get_weights(internal_valid_task)
        test_data = get_xgb_mat(internal_valid_task, pv$objective, test_weights)
        # XGBoost uses the last element in the watchlist as the early stopping set
        pv$evals = c(pv$evals, list(test = test_data))
      }

      model = xgboost::xgb.train(
          params = pv[names(pv) %in% formalArgs(xgboost::xgb.params)],
          data = data,
          nrounds = pv$nrounds,
          evals = pv$evals,
          verbose = pv$verbose,
          print_every_n = pv$print_every_n,
          early_stopping_rounds = pv$early_stopping_rounds,
          maximize = pv$maximize,
          save_period = pv$save_period,
          save_name = pv$save_name,
          callbacks = pv$callbacks %??% list()
      )

      # get linear predictor on train set (natural scale)
      attributes(model)$lp_train = log(invoke(predict, model, newdata = data))
      # extract (times, status) from train task
      attributes(model)$times = task$times()
      attributes(model)$status = task$status()

      # workaround https://github.com/Rdatatable/data.table/issues/7456
      list(
        structure("wrapper", model = model)
      )
    },

    .predict = function(task) {
      pv = self$param_set$get_values(tags = "predict")
      pv = c(pv, objective = "survival:cox") # manually add 'objective'

      model = self$model
      newdata = as_numeric_matrix(ordered_features(task, self))

      # linear predictor on the test set
      lp_test = log(invoke(predict, model, newdata = newdata, .args = pv))

      # extract back necessary objects from training
      times = attributes(model)$times
      status = attributes(model)$status
      lp_train = attributes(model)$lp_train
      # construct survival predictions via Breslow estimator
      surv = mlr3proba::breslow(times = times, status = status,
                                lp_train = lp_train, lp_test = lp_test)

      mlr3proba::surv_return(surv = surv, crank = lp_test, lp = lp_test)
    }
  )
)

.extralrns_dict$add("surv.xgboost.cox", LearnerSurvXgboostCox)

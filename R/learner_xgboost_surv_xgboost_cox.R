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
#' @section Saving this learner:
#' In order to save a `LearnerSurvXgboostCox` for later usage,
#' it is necessary to call the `$marshal()` method on the `Learner`
#' before writing it to disk, as the object will otherwise not be saved correctly.
#' After loading a marshaled `LearnerSurvXgboostCox` into R again,
#' you then need to call `$unmarshal()` to transform it into a useable state.
#'
#' @section Initial parameter values:
#' - `nrounds` is initialized to 1000.
#' - `nthread` is initialized to 1 to avoid conflicts with parallelization via \CRANpkg{future}.
#' - `verbose` is initialized to 0.
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
        disable_in_tune = list(early_stopping_rounds = NULL)
      )
      ps = ps(
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
        id = "surv.xgboost.cox",
        param_set = ps,
        predict_types = c("crank", "lp", "distr"),
        feature_types = c("integer", "numeric"),
        properties = c("weights", "missings", "importance", "validation", "internal_tuning", "marshal"),
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
      xgb_imp(self$model$model)
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
    },
    #' @field marshaled (`logical(1)`)\cr
    #' Whether the learner has been marshaled.
    marshaled = function() {
      learner_marshaled(self)
    }
  ),

  private = list(
    .validate = NULL,
    .extract_internal_tuned_values = function() {
      if (is.null(self$state$param_vals$early_stopping_rounds)) {
        return(NULL)
      }
      list(nrounds = self$model$model$niter)
    },

    .extract_internal_valid_scores = function() {
      if (is.null(self$model$model$evaluation_log)) {
        return(named_list())
      }
      patterns = NULL
      as.list(self$model$model$evaluation_log[
        get(".N"),
        set_names(get(".SD"), gsub("^test_", "", colnames(get(".SD")))),
        .SDcols = patterns("^test_")
      ])
    },
    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")
      # manually add 'objective' and 'eval_metric'
      pv = c(pv, objective = "survival:cox", eval_metric = "cox-nloglik")

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

      structure(list(
        model = invoke(xgboost::xgb.train, data = data, .args = pv),
        train_data = data # for breslow
      ), class = "xgboost_cox_model")
    },

    .predict = function(task) {
      pv = self$param_set$get_values(tags = "predict")
      # manually add 'objective'
      pv = c(pv, objective = "survival:cox")

      model = self$model$model
      newdata = as_numeric_matrix(ordered_features(task, self))
      # linear predictor on the test set
      lp_test = log(invoke(
        predict, model,
        newdata = newdata,
        .args = pv
      ))

      # linear predictor on the train set
      train_data = self$model$train_data
      lp_train = log(invoke(
        predict, model,
        newdata = train_data,
        .args = pv,
      ))

      # extract (times, status) from train data
      truth = xgboost::getinfo(train_data, "label")
      times = abs(truth)
      status = as.integer(truth > 0) # negative times => censored
      surv = mlr3proba::breslow(times = times, status = status,
                                lp_train = lp_train, lp_test = lp_test)

      mlr3proba::.surv_return(surv = surv, crank = lp_test, lp = lp_test)
    }
  )
)

.extralrns_dict$add("surv.xgboost.cox", LearnerSurvXgboostCox)


#' @export
marshal_model.xgboost_cox_model = function(model, inplace = FALSE, ...) {
  # xgb.DMatrix cannot be saved to a raw vector, but only to a file,
  # so we save it to a temporary file and then read it back as a raw vector.
  on.exit(unlink(tmp), add = TRUE)
  tmp = tempfile(fileext = ".buffer")
  xgboost::xgb.DMatrix.save(model$train_data, "xgb.data")
  train_data = readBin("xgb.data", what = "raw", n = file.info("xgb.data")$size)

  structure(list(
    # The booster object (model$model) itself can be saved and loaded directly.
    # See https://xgboost.readthedocs.io/en/stable/R-package/migration_guide.html#migrating-code-from-previous-xgboost-versions,  # nolint
    # bullet point "Booster objects".
    model = model$model,
    train_data = train_data,
    packages = c("mlr3extralearners", "xgboost")
  ), class = c("xgboost_cox_model_marshaled", "marshaled"))
}

#' @export
unmarshal_model.xgboost_cox_model_marshaled = function(model, ...) {
  # xgb.DMatrix cannot be read from a raw vector, but only from a file,
  # so we write the stored raw vector to a temporary file and then read it back.
  on.exit(unlink(tmp), add = TRUE)
  tmp = tempfile(fileext = ".buffer")
  writeBin(model$train_data, tmp)
  train_data = xgboost::xgb.DMatrix(tmp)

  structure(list(
    model = model$model,
    train_data = train_data
  ), class = "xgboost_cox_model")
}

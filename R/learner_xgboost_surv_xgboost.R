#' @title Extreme Gradient Boosting Survival Learner
#' @author be-marc
#' @name mlr_learners_surv.xgboost
#'
#' @description
#' eXtreme Gradient Boosting regression.
#' Calls [xgboost::xgb.train()] from package \CRANpkg{xgboost}.
#'
#' @template note_xgboost
#'
#' @section Custom mlr3 defaults:
#' - `nrounds`:
#'   - Actual default: no default.
#'   - Adjusted default: 1.
#'   - Reason for change: Without a default construction of the learner
#'     would error. Just setting a nonsense default to workaround this.
#'     `nrounds` needs to be tuned by the user.
#' - `nthread`:
#'   - Actual value: Undefined, triggering auto-detection of the number of CPUs.
#'   - Adjusted value: 1.
#'   - Reason for change: Conflicting with parallelization via \CRANpkg{future}.
#' - `verbose`:
#'   - Actual default: 1.
#'   - Adjusted default: 0.
#'   - Reason for change: Reduce verbosity.
#' - `objective`:
#'   - Actual default: `reg:squarederror`.
#'   - Adjusted default: `survival:cox`.
#'   - Reason for change: Changed to a survival objective.
#'
#' @templateVar id surv.xgboost
#' @template learner
#'
#' @references
#' `r format_bib("chen_2016")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerSurvXgboost = R6Class("LearnerSurvXgboost",
  inherit = mlr3proba::LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

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
        feature_selector            = p_fct(c("cyclic", "shuffle", "random", "greedy", "thrifty"), default = "cyclic", tags = "train"),
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
        missing                     = p_dbl(default = NA, tags = c("train", "predict"), special_vals = list(NA, NA_real_, NULL)),
        monotone_constraints        = p_int(-1L, 1L, default = 0L, tags = "train"),
        normalize_type              = p_fct(c("tree", "forest"), default = "tree", tags = "train"),
        nrounds                     = p_int(1L, tags = "train"),
        nthread                     = p_int(1L, default = 1L, tags = c("train", "threads")),
        ntreelimit                  = p_int(1L, tags = "predict"),
        num_parallel_tree           = p_int(1L, default = 1L, tags = "train"),
        objective                   = p_fct(c("survival:cox", "survival:aft"), default = "survival:cox", tags = c("train", "predict")),
        one_drop                    = p_lgl(default = FALSE, tags = "train"),
        predictor                   = p_fct(c("cpu_predictor", "gpu_predictor"), default = "cpu_predictor", tags = "train"),
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
        sketch_eps                  = p_dbl(0, 1, default = 0.03, tags = "train"),
        skip_drop                   = p_dbl(0, 1, default = 0, tags = "train"),
        strict_shape                = p_lgl(default = FALSE, tags = "predict"),
        subsample                   = p_dbl(0, 1, default = 1, tags = "train"),
        top_k                       = p_int(0, default = 0, tags = "train"),
        tree_method                 = p_fct(c("auto", "exact", "approx", "hist", "gpu_hist"), default = "auto", tags = "train"),
        tweedie_variance_power      = p_dbl(1, 2, default = 1.5, tags = "train"),
        updater                     = p_uty(tags = "train"), # Default depends on the selected booster
        verbose                     = p_int(0L, 2L, default = 1L, tags = "train"),
        watchlist                   = p_uty(default = NULL, tags = "train"),
        xgb_model                   = p_uty(tags = "train")
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
      ps$add_dep("sketch_eps", "tree_method", CondEqual$new("approx"))
      ps$add_dep("feature_selector", "booster", CondEqual$new("gblinear"))
      ps$add_dep("top_k", "booster", CondEqual$new("gblinear"))
      ps$add_dep("top_k", "feature_selector", CondAnyOf$new(c("greedy", "thrifty")))
      ps$add_dep("aft_loss_distribution", "objective", CondEqual$new("survival:aft"))
      ps$add_dep("aft_loss_distribution_scale", "objective", CondEqual$new("survival:aft"))

      ps$values = list(nrounds = 1L, nthread = 1L, verbose = 0L)

      super$initialize(
        id = "surv.xgboost",
        param_set = ps,
        predict_types = c("crank", "lp"),
        feature_types = c("integer", "numeric"),
        properties = c("weights", "missings", "importance"),
        packages = c("mlr3extralearners", "xgboost"),
        man = "mlr3extralearners::mlr_learners_surv.xgboost"
      )
    },

    #' @description
    #' The importance scores are calculated with [xgboost::xgb.importance()].
    #'
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }

      imp = xgboost::xgb.importance(
        feature_names = self$model$features,
        model = self$model
      )
      set_names(imp$Gain, imp$Feature)
    }
  ),

  private = list(
    .train = function(task) {

      pv = self$param_set$get_values(tags = "train")

      if (is.null(pv$objective)) {
        pv$objective = "survival:cox"
      }

      data = task$data(cols = task$feature_names)
      target = task$data(cols = task$target_names)
      targets = task$target_names
      label = target[[targets[1]]]
      status = target[[targets[2]]]

      if (pv$objective == "survival:cox") {
        pv$eval_metric = "cox-nloglik"
        label[status != 1] = -1L * label[status != 1]
        data = xgboost::xgb.DMatrix(
          data = as_numeric_matrix(data),
          label = label)
      } else {
        pv$eval_metric = "aft-nloglik"
        y_lower_bound = y_upper_bound = label
        y_upper_bound[status == 0] = Inf

        data = xgboost::xgb.DMatrix(as_numeric_matrix(data))
        xgboost::setinfo(data, "label_lower_bound", y_lower_bound)
        xgboost::setinfo(data, "label_upper_bound", y_upper_bound)
      }

      if ("weights" %in% task$properties) {
        xgboost::setinfo(data, "weight", task$weights$weight)
      }

      if (is.null(pv$watchlist)) {
        pv$watchlist = list(train = data)
      }

      invoke(xgboost::xgb.train, data = data, .args = pv)
    },

    .predict = function(task) {
      pv = self$param_set$get_values(tags = "predict")
      model = self$model
      newdata = as_numeric_matrix(ordered_features(task, self))
      lp = log(invoke(
        predict, model,
        newdata = newdata,
        .args = pv
      ))

      if (!is.null(pv$objective) && pv$objective == "survival:aft") {
        lp = -lp
      }

      list(crank = lp, lp = lp)
    }
  )
)
.extralrns_dict$add("surv.xgboost", LearnerSurvXgboost)

#' @title Accelerated Oblique Random Survival Forest Learner
#' @name mlr_learners_surv.aorsf
#' @author bcjaeger
#'
#' @description
#' Accelerated oblique random survival forest.
#' Calls [aorsf::orsf()] from \CRANpkg{aorsf}.
#' Note that although the learner has the property `"missing"` and it can in
#' principle deal with missing values, the behaviour has to be configured using
#' the parameter `na_action`.
#'
#' @section Initial parameter values:
#' * `n_thread`: This parameter is initialized to 1 (default is 0) to avoid conflicts with the mlr3 parallelization.
#'
#' @section Prediction types:
#' This learner returns three prediction types:
#' 1. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and (unique event) time points in columns.
#' Calculated using the internal `predict.ObliqueForest()` function.
#' 2. `response`: the restricted mean survival time of each test observation,
#' derived from the survival matrix prediction (`distr`).
#' 3. `crank`: the expected mortality using [mlr3proba::.surv_return()].
#'
#' @template learner
#' @templateVar id surv.aorsf
#'
#' @section Initial parameter values:
#' - `mtry`:
#'   - This hyperparameter can alternatively be set via the added hyperparameter `mtry_ratio`
#'     as `mtry = max(ceiling(mtry_ratio * n_features), 1)`.
#'     Note that `mtry` and `mtry_ratio` are mutually exclusive.
#'
#' @references
#' `r format_bib("jaeger_2019", "jaeger_2022")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvAorsf = R6Class("LearnerSurvAorsf",
  inherit = mlr3proba::LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        n_tree = p_int(default = 500L, lower = 1L, tags = "train"),
        n_split = p_int(default = 5L, lower = 1L, tags = "train"),
        n_retry = p_int(default = 3L, lower = 0L, tags = "train"),
        n_thread = p_int(init = 1, lower = 0, tags = c("train", "predict", "threads")),
        pred_aggregate = p_lgl(default = TRUE, tags = "predict"),
        pred_simplify = p_lgl(default = FALSE, tags = "predict"),
        oobag = p_lgl(default = FALSE, tags = 'predict'),
        mtry = p_int(default = NULL, lower = 1L, special_vals = list(NULL), tags = "train"),
        mtry_ratio = p_dbl(lower = 0, upper = 1, tags = "train"),
        sample_with_replacement = p_lgl(default = TRUE, tags = "train"),
        sample_fraction = p_dbl(lower = 0, upper = 1, default = .632, tags = "train"),
        control_type = p_fct(levels = c("fast", "cph", "net", "custom"), default = "fast", tags = "train"),
        control_custom_fun = p_uty(custom_check = function(x) checkmate::checkFunction(x, nargs = 3),
                                   depends = quote(control_type == "custom"), tags = "train"),
        split_rule = p_fct(levels = c("logrank", "cstat"), default = "logrank", tags = "train"),
        control_fast_do_scale = p_lgl(default = FALSE, tags = "train"),
        control_fast_ties = p_fct(levels = c("efron", "breslow"), default = "efron", tags = "train"),
        control_cph_ties = p_fct(levels = c("efron", "breslow"), default = "efron", tags = "train"),
        control_cph_eps = p_dbl(default = 1e-9, lower = 0, tags = "train"),
        control_cph_iter_max = p_int(default = 20L, lower = 1, tags = "train"),
        control_net_alpha = p_dbl(default = 0.5, tags = "train"),
        control_net_df_target = p_int(default = NULL, lower = 1L,
          special_vals = list(NULL),
          tags = "train"),
        leaf_min_events = p_int(default = 1L, lower = 1L, tags = "train"),
        leaf_min_obs = p_int(default = 5L, lower = 1L, tags = "train"),
        split_min_events = p_int(default = 5L, lower = 1L, tags = "train"),
        split_min_obs = p_int(default = 10, lower = 1L, tags = "train"),
        split_min_stat = p_dbl(default = NULL, special_vals = list(NULL), lower = 0, tags = "train"),
        oobag_pred_type = p_fct(levels = c("none", "surv", "risk", "chf", "mort"), default = "risk", tags = "train"),
        importance = p_fct(levels = c("none", "anova", "negate", "permute"), default = "anova", tags = "train"),
        importance_max_pvalue = p_dbl(default = 0.01, lower = 0.0001, upper = .9999, tags = "train"),
        tree_seeds = p_int(default = NULL, lower = 1L, special_vals = list(NULL), tags = "train"),
        oobag_pred_horizon = p_dbl(default = NULL, special_vals = list(NULL), tags = "train", lower = 0),
        oobag_eval_every = p_int(default = NULL, special_vals = list(NULL), lower = 1, tags = "train"),
        oobag_fun = p_uty(default = NULL, special_vals = list(NULL), tags = "train",
                          custom_check = function(x) checkmate::checkFunction(x, nargs = 3)),
        attach_data = p_lgl(default = TRUE, tags = "train"),
        verbose_progress = p_lgl(default = FALSE, tags = "train"),
        na_action = p_fct(levels = c("fail", "impute_meanmode"), default = "fail", tags = c("train", "predict"))
      )

      super$initialize(
        id = "surv.aorsf",
        packages = c("mlr3extralearners", "aorsf"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("crank", "distr", "response"),
        param_set = ps,
        properties = c("oob_error", "importance", "missings", "weights"),
        man = "mlr3extralearners::mlr_learners_surv.aorsf",
        label = "Oblique Random Forest"
      )
    },
    #' @description
    #' OOB concordance error extracted from the model slot
    #' `eval_oobag$stat_values`
    #' @return `numeric()`.
    oob_error = function() {
      nrows = nrow(self$model$eval_oobag$stat_values)
      1 - self$model$eval_oobag$stat_values[nrows, 1L]
    },
    #' @description
    #' The importance scores are extracted from the model.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      sort(aorsf::orsf_vi(self$model, group_factors = TRUE),
        decreasing = TRUE)
    }
  ),
  private = list(
    .train = function(task) {
      # initialize
      pv = self$param_set$get_values(tags = "train")
      pv = convert_ratio(pv, "mtry", "mtry_ratio",
        length(task$feature_names))
      # helper function to organize aorsf control function inputs
      dflt_if_null = function(params, slot_name) {
        out = params[[slot_name]]
        if (is.null(out)) out = self$param_set$default[[slot_name]]
        out
      }
      # default value for oobag_eval_every is ntree, but putting
      # default = ntree in p_int() above would be problematic, so:
      if (is.null(pv$oobag_eval_every)) {
        pv$oobag_eval_every = dflt_if_null(pv, "n_tree")
      }
      control = switch(
        dflt_if_null(pv, "control_type"),
        "fast" = {
          aorsf::orsf_control_survival(
            method = "glm",
            scale_x = dflt_if_null(pv, "control_fast_do_scale"),
            ties = dflt_if_null(pv, "control_fast_ties"),
            max_iter = 1
          )
        },
        "cph" = {
          aorsf::orsf_control_survival(
            method = "glm",
            scale_x = TRUE, # should always scale with max_iter > 1
            ties = dflt_if_null(pv, "control_cph_ties"),
            epsilon = dflt_if_null(pv, "control_cph_eps"),
            max_iter = dflt_if_null(pv, "control_cph_iter_max")
          )
        },
        "net" = {
          aorsf::orsf_control_survival(
            method = "net",
            net_mix = dflt_if_null(pv, "control_net_alpha"),
            target_df = dflt_if_null(pv, "control_net_df_target")
          )
        },
        "custom" = {
          aorsf::orsf_control_survival(
            method = pv$control_custom_fun
          )
        }
      )
      # these parameters are used to organize the control arguments
      # above but are not used directly by aorsf::orsf(), so:
      pv = remove_named(pv, c("control_type",
                              "control_fast_do_scale",
                              "control_fast_ties",
                              "control_cph_ties",
                              "control_cph_eps",
                              "control_cph_iter_max",
                              "control_net_alpha",
                              "control_net_df_target",
                              "control_custom_fun"))
      invoke(
        aorsf::orsf,
        data = task$data(),
        formula = task$formula(),
        weights = private$.get_weights(task),
        control = control,
        no_fit = FALSE,
        .args = pv
      )
    },
    .predict = function(task) {
      pv = self$param_set$get_values(tags = "predict")
      # estimate S(t) on the unique event times from the train set
      utime = self$model$event_times
      surv = mlr3misc::invoke(predict,
        self$model,
        new_data = ordered_features(task, self),
        pred_horizon = utime,
        pred_type = "surv",
        .args = pv
      )

      diffs_time = c(utime[1], diff(utime))
      response = apply(surv, MARGIN = 1, FUN = function(x){
        sum(diffs_time * x)
      })

      pred_list = mlr3proba::.surv_return(times = utime, surv = surv)
      # provide `response` here so that we keep the expected mortality for `crank`
      pred_list$response = response
      pred_list
    }
  )
)

.extralrns_dict$add("surv.aorsf", function() LearnerSurvAorsf$new())

#' @title Accelerated Oblique Random Survival Forest Learner
#' @name mlr_learners_surv.aorsf
#' @author bcjaeger
#'
#' @description
#' Accelerated oblique random survival forest.
#' Calls [aorsf::orsf()] from \CRANpkg{aorsf}.
#' Note that although the learner has the property `"missing"` and it can in principle deal with missing values,
#' the behaviour has to be configured using the parameter `na_action`.
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
#' `r format_bib("jaeger_2019")`
#'
#' `r format_bib("jaeger_2022")`
#'
#'
#' @template seealso_learner
#' @template example
#' @export
delayedAssign(
  "LearnerSurvAorsf",
  R6Class("LearnerSurvAorsf",
    inherit = mlr3proba::LearnerSurv,
    public = list(
      #' @description
      #' Creates a new instance of this [R6][R6::R6Class] class.
      initialize = function() {
        ps = ps(
          n_tree = p_int(default = 500L, lower = 1L, tags = "train"),
          n_split = p_int(default = 5L, lower = 1L, tags = "train"),
          n_retry = p_int(default = 3L, lower = 0L, tags = "train"),
          mtry = p_int(default = NULL, lower = 1L,
            special_vals = list(NULL), tags = "train"),
          mtry_ratio = p_dbl(lower = 0, upper = 1, tags = "train"),
          control_type = p_fct(levels = c("fast", "cph", "net"),
            default = "fast", tags = "train"),
          control_fast_do_scale = p_lgl(default = TRUE, tags = "train"),
          control_fast_method = p_fct(levels = c("efron", "breslow"),
            default = "efron", tags = "train"),
          control_cph_method = p_fct(levels = c("efron", "breslow"),
            default = "efron", tags = "train"),
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
          split_min_stat = p_dbl(default = 3.841459, lower = 0, tags = "train"),
          oobag_pred_type = p_fct(levels = c("none", "surv", "risk", "chf"),
            default = "surv", tags = "train"),
          importance = p_fct(levels = c("none", "anova", "negate", "permute"),
            default = "anova", tags = "train"),
          oobag_pred_horizon = p_dbl(default = NULL, special_vals = list(NULL),
            tags = "train", lower = 0),
          oobag_eval_every = p_int(default = NULL, special_vals = list(NULL),
            lower = 1, tags = "train"),
          attach_data = p_lgl(default = TRUE, tags = "train"),
          verbose_progress = p_lgl(default = FALSE, tags = "train"),
          na_action = p_fct(levels = c("fail", "omit", "impute_meanmode"), default = "fail", tags = "train"))

        super$initialize(
          id = "surv.aorsf",
          packages = c("mlr3extralearners", "aorsf", "pracma"),
          feature_types = c("integer", "numeric", "factor", "ordered"),
          predict_types = c("crank", "distr"),
          param_set = ps,
          properties = c("oob_error", "importance", "missings"),
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
          if (is.null(out)) out <- self$param_set$default[[slot_name]]
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
            aorsf::orsf_control_fast(
              method = dflt_if_null(pv, "control_fast_method"),
              do_scale = dflt_if_null(pv, "control_fast_do_scale")
            )
          },
          "cph" = {
            aorsf::orsf_control_cph(
              method = dflt_if_null(pv, "control_cph_method"),
              eps = dflt_if_null(pv, "control_cph_eps"),
              iter_max = dflt_if_null(pv, "control_cph_iter_max")
            )
          },
          "net" = {
            aorsf::orsf_control_net(
              alpha = dflt_if_null(pv, "control_net_alpha"),
              df_target = dflt_if_null(pv, "control_net_df_target")
            )
          }
        )
        # these parameters are used to organize the control arguments
        # above but are not used directly by aorsf::orsf(), so:
        pv$control_type = NULL
        pv$control_fast_do_scale = NULL
        pv$control_fast_method = NULL
        pv$control_cph_method = NULL
        pv$control_cph_eps = NULL
        pv$control_cph_iter_max = NULL
        pv$control_net_alpha = NULL
        pv$control_net_df_target = NULL
        invoke(
          aorsf::orsf,
          data = task$data(),
          formula = task$formula(),
          weights = task$weights,
          control = control,
          no_fit = FALSE,
          .args = pv
        )
      },
      .predict = function(task) {
        pv = self$param_set$get_values(tags = "predict")
        time = self$model$data[[task$target_names[1]]]
        status = self$model$data[[task$target_names[2]]]
        utime = sort(unique(time[status == 1]), decreasing = FALSE)
        surv = mlr3misc::invoke(predict,
          self$model,
          new_data = ordered_features(task, self),
          pred_horizon = utime,
          pred_type = "surv",
          .args = pv
        )
        mlr3proba::.surv_return(times = utime, surv = surv)
      }
    )
  )
)

.extralrns_dict$add("surv.aorsf", function() LearnerSurvAorsf$new())

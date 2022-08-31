#' @title Accelerated Oblique Random Survival Forest Learner
#' @name mlr_learners_surv.aorsf
#' @author bcjaeger
#'
#' @description
#' Accelerated oblique random survival forest.
#' Calls [aorsf::orsf()] from \CRANpkg{aorsf}.
#' @template learner
#' @templateVar id surv.aorsf
#'
#' @section Custom mlr3 parameters:
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
                n_tree = p_int(default = 500L, lower = 1L, tags = 'train'),
                n_split = p_int(default = 5L, lower = 1L, tags = 'train'),
                n_retry = p_int(default = 3L, lower = 0L, tags = 'train'),
                mtry = p_int(lower = 1L, tags = 'train'),
                control_type = p_fct(levels = c("fast", "cph", "net"),
                                     default = "fast", tags = "train"),
                control_fast_do_scale = p_lgl(default = TRUE, tags = "train"),
                control_fast_method = p_fct(levels = c("efron", "breslow"),
                                            default = "breslow", tags = "train"),
                control_cph_method = p_fct(levels = c("efron", "breslow"),
                                           default = "breslow", tags = "train"),
                control_cph_eps = p_dbl(default = 1e-9, lower = 0, tags = "train"),
                control_cph_iter_max = p_int(default = 20L, lower = 1, tags = "train"),
                control_net_alpha = p_dbl(default = 0.5, tags = "train"),
                control_net_df_target = p_int(lower = 1L, tags = 'train'),
                mtry_ratio = p_dbl(lower = 0, upper = 1, tags = "train"),
                leaf_min_events = p_int(default = 1L, lower = 1L, tags = 'train'),
                leaf_min_obs = p_int(default = 5L, lower = 1L, tags = 'train'),
                split_min_events = p_int(default = 5L, lower = 1L, tags = 'train'),
                split_min_obs = p_int(default = 10, lower = 1L, tags = 'train'),
                split_min_stat = p_dbl(default = 3.841459, lower = 0, tags = 'train'),
                oobag_pred_type = p_fct(levels = c("none", "surv", "risk", "chf"),
                                        default = "surv", tags = 'train'),
                importance = p_fct(levels = c("none", "anova", "negate", "permute"),
                                   default = "anova", tags = 'train'),
                oobag_pred_horizon = p_uty(tags = "train"),
                oobag_eval_every = p_int(lower = 1, tags = "train"),
                attach_data = p_lgl(default = TRUE, tags = "train")
              )

              super$initialize(
                id = "surv.aorsf",
                packages = c("mlr3extralearners", "aorsf", "pracma"),
                feature_types = c("integer", "numeric", "factor", "ordered"),
                predict_types = c("crank", "distr"),
                param_set = ps,
                properties = c("oob_error", "importance"),
                man = "mlr3extralearners::mlr_learners_surv.aorsf",
                label = "Oblique Random Forest"
              )
            },

            #' @description
            #' OOB concordance error extracted from the model slot
            #' `eval_oobag$stat_values`
            #' @return `numeric()`.
            oob_error = function() {
              nrows <- nrow(self$model$eval_oobag$stat_values)
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
              # start w/defaults
              ps <- self$param_set$default
              # pull in user specified values
              pv = self$param_set$get_values(tags = "train")
              # if user specified a value, put it into the param set
              for( i in names(ps) ){
                if(!is.null(pv[[i]])) ps[[i]] <- pv[[i]]
              }
              for( i in names(pv) ){
                if( !(i %in% names(ps)) ) ps[[i]] <- pv[[i]]
              }
              ps = convert_ratio(ps,
                                 target = "mtry",
                                 ratio = "mtry_ratio",
                                 length(task$feature_names))
              ps = c(ps, list(weights = task$weights$weight))
              switch(
                ps$control_type,
                "fast" = {
                  control <- aorsf::orsf_control_fast(
                    method = ps$control_fast_method,
                    do_scale = ps$control_fast_do_scale
                  )
                },
                "cph" = {
                  control <- aorsf::orsf_control_cph(
                    method = ps$control_cph_method,
                    eps = ps$control_cph_eps,
                    iter_max = ps$control_cph_iter_max
                  )
                },
                "net" = {
                  control <- aorsf::orsf_control_net(
                    alpha = ps$control_net_alpha,
                    df_target = ps$control_net_df_target
                  )
                }
              )

              ps$control_type <- NULL
              ps$control_fast_do_scale <- NULL
              ps$control_fast_method <- NULL
              ps$control_cph_method <- NULL
              ps$control_cph_eps <- NULL
              ps$control_cph_iter_max <- NULL
              ps$control_net_alpha <- NULL
              ps$control_net_df_target <- NULL

              invoke(
                aorsf::orsf,
                data = task$data(),
                formula = task$formula(),
                control = control,
                no_fit = FALSE,
                .args = ps
              )

            },

            .predict = function(task) {

              time = self$model$data[[task$target_names[1]]]
              status = self$model$data[[task$target_names[2]]]
              utime = sort(unique(time[status == 1]), decreasing = FALSE)

              surv = mlr3misc::invoke(predict,
                                      self$model,
                                      new_data = ordered_features(task, self),
                                      pred_horizon = utime,
                                      pred_type = 'surv')

              mlr3proba::.surv_return(times = utime, surv = surv)

            }

          )
  )
)

.extralrns_dict$add("surv.aorsf", function() LearnerSurvAorsf$new())
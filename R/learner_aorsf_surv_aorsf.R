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
#' Jaeger BC, Welden S, Lenoir K, Speiser JL, Segar MW, Pandey A, Pajewski NM (2022).
#'  "Accelerated and interpretable oblique random survival forests."
#'  _arXiv e-prints_. Aug 3:arXiv-2208.
#'  doi: 10.48550/arXiv.2208.01129
#'  (URL: https://doi.org/10.48550/arXiv.2208.01129)
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
                mtry = p_int(lower = 1L,
                             tags = 'train'),
                mtry_ratio = p_dbl(0, 1, tags = "train"),
                leaf_min_events = p_int(default = 1L, lower = 1L, tags = 'train'),
                leaf_min_obs = p_int(default = 5L, lower = 1L, tags = 'train'),
                split_min_events = p_int(default = 5L, lower = 1L, tags = 'train'),
                split_min_obs = p_int(default = 10, lower = 1L, tags = 'train'),
                split_min_stat = p_dbl(default = 3.841459, lower = 0, tags = 'train'),
                oobag_pred_type = p_fct(levels = c("none", "surv", "risk", "chf"),
                                        default = "none",
                                        tags = 'train'),
                oobag_pred_horizon = p_uty(tags = "train")
              )

              super$initialize(
                id = "surv.aorsf",
                packages = c("mlr3extralearners", "aorsf", "pracma"),
                feature_types = c("integer", "numeric", "factor", "ordered"),
                predict_types = c("crank", "distr"),
                param_set = ps,
                properties = c("oob_error"),
                man = "mlr3extralearners::mlr_learners_surv.aorsf",
                label = "Oblique Random Forest"
              )
            },

            #' @description
            #' OOB concordance error extracted from the model slot `oob_error`.
            #' @return `numeric()`.
            oob_error = function() {

              nrows <- nrow(self$eval_oobag$stat_values)
              1 - self$eval_oobag$stat_values[nrows, 1L]

            }
          ),

          private = list(
            .train = function(task) {

              pv = self$param_set$get_values(tags = "train")
              pv = convert_ratio(pv, "mtry", "mtry_ratio", length(task$feature_names))
              pv = c(pv, list(weights = task$weights$weight))

              tn = task$target_names
              lhs = sprintf("Surv(%s, %s)", tn[1L], tn[2L])
              f = formulate(lhs, task$feature_names, env = getNamespace("survival"))

              invoke(
                aorsf::orsf,
                data = task$data(),
                formula = f,
                .args = pv
              )

            },

            .predict = function(task) {

              time = self$model$data[[task$target_names[1]]]
              status = self$model$data[[task$target_names[2]]]
              utime = sort(unique(time[status == 1]), decreasing = FALSE)

              surv = mlr3misc::invoke(predict,
                                      self$model,
                                      new_data = task$data(cols = task$feature_names),
                                      pred_horizon = utime,
                                      pred_type = 'surv')

              mlr3proba::.surv_return(times = utime, surv = surv)

            }

          )
  )
)

.extralrns_dict$add("surv.aorsf", function() LearnerSurvAorsf$new())
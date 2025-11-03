#' @title Survival Akritas Estimator Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.akritas
#'
#' @description
#' Survival akritas estimator.
#' Calls [survivalmodels::akritas()] from package 'survivalmodels'.
#'
#' @section Prediction types:
#' This learner returns two prediction types:
#' 1. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' Calculated using the internal [survivalmodels::predict.akritas()] function.
#' The survival matrix uses the unique time points from the training set.
#' We advise to set the parameter `ntime` which allows to adjust the granularity
#' of these time points to a reasonable number (e.g. `150`).
#' This avoids large execution times during prediction.
#' 2. `crank`: the expected mortality using [survivalmodels::surv_to_risk()].
#'
#' @template learner
#' @templateVar id surv.akritas
#'
#' @template install_survivalmodels
#'
#' @references
#' `r format_bib("akritas1994nearest")`
#'
#' @template seealso_learner
#' @export
LearnerSurvAkritas = R6Class("LearnerSurvAkritas",
  inherit = mlr3proba::LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        lambda = p_dbl(default = 0.5, lower = 0, upper = 1, tags = "predict"),
        reverse = p_lgl(default = FALSE, tags = "train"),
        ntime = p_int(lower = 1, default = NULL, special_vals = list(NULL), tags = "predict"),
        round_time = p_int(default = 2, lower = 0, special_vals = list(FALSE), tags = "predict")
      )

      super$initialize(
        id = "surv.akritas",
        feature_types = c("logical", "integer", "character", "numeric", "factor"),
        predict_types = c("crank", "distr"),
        param_set = ps,
        packages = c("mlr3extralearners", "survivalmodels"),
        man = "mlr3extralearners::mlr_learners_surv.akritas",
        label = "Akritas Estimator"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")
      invoke(
        survivalmodels::akritas,
        data = data.table::setDF(task$data()),
        time_variable = task$target_names[1L],
        status_variable = task$target_names[2L],
        .args = pv
      )
    },

    .predict = function(task) {
      pv = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)

      # use train set times
      times = self$model$y[, "time"]
      # coerce times points to an `ntime` grid
      times = gridify_times(times, pv$ntime)

      pred = invoke(
        predict,
        self$model,
        newdata = newdata,
        times = times,
        distr6 = FALSE,
        type = "all",
        .args = pv
      )

      list(crank = pred$risk, distr = pred$surv)
    }
  )
)

.extralrns_dict$add("surv.akritas", LearnerSurvAkritas)

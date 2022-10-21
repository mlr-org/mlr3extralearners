#' @title Survival Akritas Estimator Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.akritas
#'
#' @description
#' Survival akritas estimator.
#' Calls [survivalmodels::akritas()] from package 'survivalmodels'.
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
#' @template example
#' @export
delayedAssign(
  "LearnerSurvAkritas",
  R6Class("LearnerSurvAkritas",
    inherit = mlr3proba::LearnerSurv,

    public = list(
      #' @description
      #' Creates a new instance of this [R6][R6::R6Class] class.
      initialize = function() {
        ps = ps(
          lambda = p_dbl(default = 0.5, lower = 0, upper = 1, tags = "predict"),
          reverse = p_lgl(default = FALSE, tags = "train")
        )

        super$initialize(
          id = "surv.akritas",
          feature_types = c("logical", "integer", "character", "numeric", "factor"),
          predict_types = c("crank", "distr"),
          param_set = ps,
          packages = c("mlr3extralearners", "survivalmodels", "distr6"),
          man = "mlr3extralearners::mlr_learners_surv.akritas",
          label = "Akritas Estimator"
        )
      }
    ),

    private = list(
      .train = function(task) {
        pars = self$param_set$get_values(tags = "train")
        invoke(
          survivalmodels::akritas,
          data = data.table::setDF(task$data()),
          time_variable = task$target_names[1L],
          status_variable = task$target_names[2L],
          .args = pars
        )
      },

      .predict = function(task) {
        pars = self$param_set$get_values(tags = "predict")
        newdata = ordered_features(task, self)

        pred = invoke(
          predict,
          self$model,
          newdata = newdata,
          distr6 = FALSE,
          type = "all",
          .args = pars
        )

        list(crank = pred$risk, distr = pred$surv)
      }
    )
  )
)

.extralrns_dict$add("surv.akritas", function() LearnerSurvAkritas$new())

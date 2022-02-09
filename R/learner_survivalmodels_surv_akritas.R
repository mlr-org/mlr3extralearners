#' @title Survival Akritas Estimator Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.akritas
#'
#' @template class_learner
#' @templateVar id surv.akritas
#' @templateVar caller akritas
#'
#' @references
#' Akritas, M. G. (1994).
#' Nearest Neighbor Estimation of a Bivariate Distribution Under Random Censoring.
#' Ann. Statist., 22(3), 1299–1327.
#' \doi{10.1214/aos/1176325630}
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvAkritas = R6Class("LearnerSurvAkritas",
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
        man = "mlr3extralearners::mlr_learners_surv.akritas"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      mlr3misc::invoke(
        survivalmodels::akritas,
        data = data.table::setDF(task$data()),
        time_variable = task$target_names[1L],
        status_variable = task$target_names[2L],
        .args = pars
      )
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = task$data(cols = task$feature_names)

      pred = mlr3misc::invoke(
        predict,
        self$model,
        newdata = newdata,
        distr6 = TRUE,
        type = "all",
        .args = pars
      )

      list(crank = pred$risk, distr = pred$surv)
    }
  )
)

.extralrns_dict$add("surv.akritas", LearnerSurvAkritas)

#' @title Survival Akritas Estimator Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.akritas
#'
#' @description
#' Implements the Akritas estimator. Calls [akritas()].
#'
#' @templateVar id surv.akritas
#' @template class_learner_custom
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
  inherit = LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps <- ParamSet$new(
        params = list(
          ParamDbl$new("lambda", default = 0.5, lower = 0, upper = 1, tags = "predict"),
          ParamLgl$new("reverse", default = FALSE, tags = "train")
        )
      )

      super$initialize(
        id = "surv.akritas",
        feature_types = c("logical", "integer", "character", "numeric", "factor"),
        predict_types = c("crank", "distr"),
        param_set = ps,
        packages = "pracma",
        man = "mlr3extralearners::mlr_learners_surv.akritas"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars <- self$param_set$get_values(tags = "train")
      mlr3misc::invoke(akritas,
        formula = task$formula(), data = as.data.frame(task$data()),
        .args = pars)
    },

    .predict = function(task) {
      pars <- self$param_set$get_values(tags = "predict")
      newdata <- task$data(cols = task$feature_names)

      pred <- mlr3misc::invoke(predict, self$model,
        newdata = newdata, distr6 = TRUE,
        type = "all", .args = pars
      )

      PredictionSurv$new(task = task, crank = pred$risk, distr = pred$distr)
    }
  )
)

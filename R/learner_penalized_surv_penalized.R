#' @title Survival L1 and L2 Penalized Regression Learner
#' @author RaphaelS1
#'
#' @name mlr_learners_surv.penalized
#'
#' @template class_learner
#' @templateVar id surv.penalized
#' @templateVar caller penalized
#'
#' @details
#' The `penalized` and `unpenalized` arguments in the learner are implemented slightly
#' differently than in [penalized::penalized()]. Here, there is no parameter for `penalized` but
#' instead it is assumed that every variable is penalized unless stated in the `unpenalized`
#' parameter, see examples.
#'
#' @references
#' Goeman JJ (2009). “L1Penalized Estimation in the Cox Proportional Hazards Model.”
#' Biometrical Journal
#' doi: 10.1002/bimj.200900028.
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvPenalized = R6Class("LearnerSurvPenalized",
  inherit = LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamUty$new(id = "unpenalized", tags = c("train", "predict")),
          ParamUty$new(id = "lambda1", default = 0, tags = "train"),
          ParamUty$new(id = "lambda2", default = 0, tags = "train"),
          ParamLgl$new(id = "positive", default = FALSE, tags = "train"),
          ParamLgl$new(id = "fusedl", default = FALSE, tags = "train"),
          ParamDbl$new(id = "startbeta", tags = "train"),
          ParamDbl$new(id = "startgamma", tags = "train"),
          ParamInt$new(id = "steps", lower = 1L, default = 1L, tags = "train"),
          ParamDbl$new(id = "epsilon", default = 1.0e-10, lower = 0, upper = 1, tags = "train"),
          ParamInt$new(id = "maxiter", lower = 1, tags = "train"),
          ParamLgl$new(id = "standardize", default = FALSE, tags = "train"),
          ParamLgl$new(id = "trace", default = TRUE, tags = "train")
        )
      )

      super$initialize(
        # see the mlr3book for a description: https://mlr3book.mlr-org.com/extending-mlr3.html
        id = "surv.penalized",
        packages = c("penalized", "pracma"),
        feature_types = c("integer", "numeric", "factor", "logical"),
        predict_types = c("distr", "crank"),
        param_set = ps,
        # the help file name is the one used as @name in the roxygen2 block
        man = "mlr3extralearners::mlr_learners_surv.penalized"
      )
    }
  ),

  private = list(
    .train = function(task) {

      # Checks missing data early to prevent crashing, which is not caught earlier by task/train

      if (any(task$missings() > 0)) {
        stop("Missing data is not supported by ", self$id)
      }

      # Changes the structure of the penalized and unpenalized parameters to be more user friendly.
      # Now the user supplies the column names as a vector and these are added to the formula as
      # required.
      pars = self$param_set$get_values(tags = "train")
      if (length(pars$unpenalized) == 0) {
        penalized = formulate(rhs = task$feature_names)
      } else {
        penalized = formulate(rhs = task$feature_names[task$feature_names %nin% pars$unpenalized])
        pars$unpenalized = formulate(rhs = pars$unpenalized)
      }

      mlr3misc::with_package("penalized", {
        mlr3misc::invoke(penalized::penalized,
          response = task$truth(), penalized = penalized,
          data = task$data(cols = task$feature_names), model = "cox", .args = pars)
      })
    },

    .predict = function(task) {
      # Again the penalized and unpenalized covariates are automatically converted to the
      # correct formula

      pars = self$param_set$get_values(tags = "predict")
      if (length(pars$unpenalized) == 0) {
        penalized = formulate(rhs = task$feature_names)
      } else {
        penalized = formulate(rhs = task$feature_names[task$feature_names %nin% pars$unpenalized])
        pars$unpenalized = formulate(rhs = pars$unpenalized)
      }

      surv = mlr3misc::with_package("penalized", {
        mlr3misc::invoke(penalized::predict, self$model,
          penalized = penalized,
          data = task$data(cols = task$feature_names),
          .args = pars)
      })

      .surv_return(times = surv@time, surv = surv@curves)
    }
  )
)

.extralrns_dict$add("surv.penalized", LearnerSurvPenalized)

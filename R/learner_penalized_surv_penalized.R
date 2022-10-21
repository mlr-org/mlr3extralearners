#' @title Survival L1 and L2 Penalized Regression Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.penalized
#'
#' @description
#' Penalized (L1 and L2) generalized linear models.
#' Calls [penalized::penalized()] from \CRANpkg{penalized}.
#'
#' @template learner
#' @templateVar id surv.penalized
#'
#' @details
#' The `penalized` and `unpenalized` arguments in the learner are implemented slightly
#' differently than in [penalized::penalized()]. Here, there is no parameter for `penalized` but
#' instead it is assumed that every variable is penalized unless stated in the `unpenalized`
#' parameter, see examples.
#'
#' @references
#' `r format_bib("goeman2010l1")`
#'
#' @template seealso_learner
#' @template example
#' @export
delayedAssign(
  "LearnerSurvPenalized",
  R6Class("LearnerSurvPenalized",
    inherit = mlr3proba::LearnerSurv,

    public = list(
      #' @description
      #' Creates a new instance of this [R6][R6::R6Class] class.
      initialize = function() {
        ps = ps(
          unpenalized = p_uty(tags = c("train", "predict")),
          lambda1 = p_uty(default = 0, tags = "train"),
          lambda2 = p_uty(default = 0, tags = "train"),
          positive = p_lgl(default = FALSE, tags = "train"),
          fusedl = p_lgl(default = FALSE, tags = "train"),
          startbeta = p_dbl(tags = "train"),
          startgamma = p_dbl(tags = "train"),
          steps = p_int(lower = 1L, default = 1L, tags = "train"),
          epsilon = p_dbl(default = 1.0e-10, lower = 0, upper = 1, tags = "train"),
          maxiter = p_int(lower = 1, tags = "train"),
          standardize = p_lgl(default = FALSE, tags = "train"),
          trace = p_lgl(default = TRUE, tags = "train")
        )

        super$initialize(
          id = "surv.penalized",
          packages = c("mlr3extralearners", "penalized", "pracma"),
          feature_types = c("integer", "numeric", "factor", "logical"),
          predict_types = c("distr", "crank"),
          param_set = ps,
          man = "mlr3extralearners::mlr_learners_surv.penalized",
          label = "Penalized Regression"
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

        with_package("penalized", {
          invoke(penalized::penalized,
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

        surv = with_package("penalized", {
          invoke(penalized::predict, self$model,
            penalized = penalized,
            data = ordered_features(task, self),
            .args = pars)
        })

        mlr3proba::.surv_return(times = surv@time, surv = surv@curves)
      }
    )
  )
)

.extralrns_dict$add("surv.penalized", function() LearnerSurvPenalized$new())

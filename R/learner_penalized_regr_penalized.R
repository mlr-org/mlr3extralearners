#' @title Regression L1 and L2 Penalized Learner
#' @author annanzrv
#' @name mlr_learners_regr.penalized
#'
#' @description
#' Penalized (L1 and L2) Logistic Regression.
#' Calls [penalized::penalized()] from: \CRANpkg{penalized}.
#'
#' @section Initial parameter values:
#' - `trace` is set to `"FALSE"` to disable printing output during model training.
#'
#' @templateVar id regr.penalized
#' @template learner
#'
#' @details
#' The `penalized` and `unpenalized` arguments in the learner are implemented slightly
#' differently than in [penalized::penalized()]. Here, there is no parameter for `penalized` but
#' instead it is assumed that every variable is penalized unless stated in the `unpenalized`
#' parameter.
#'
#' @references
#' `r format_bib("goeman2010l1")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrPenalized = R6Class("LearnerRegrPenalized",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        epsilon     = p_dbl(default = 1e-10, lower = 0, tags = c("train")),
        fusedl      = p_lgl(default = FALSE, tags = c("train")),
        lambda1     = p_dbl(default = 0, lower = 0, tags = c("train")),
        lambda2     = p_dbl(default = 0, lower = 0, tags = c("train")),
        maxiter     = p_int(lower = 1L, tags = c("train")),
        model       = p_fct(default = "linear", levels = c("linear", "poisson"), tags = c("train")),
        positive    = p_uty(default = FALSE, tags = c("train")),
        standardize = p_lgl(default = FALSE, tags = c("train")),
        startbeta   = p_uty(tags = c("train")),
        startgamma  = p_uty(tags = c("train")),
        steps       = p_uty(default = 1L, tags = c("train")),
        trace       = p_lgl(default = TRUE, tags = c("train")),
        unpenalized = p_uty(tags = c("train", "predict"))
      )

      param_set$values = list(trace = FALSE)

      super$initialize(
        id = "regr.penalized",
        packages = "penalized",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response"),
        param_set = param_set,
        man = "mlr3extralearners::mlr_learners_classif.penalized",
        label = "Penalized  Regression"
      )
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")
      if (length(pars$unpenalized) == 0) {
        # if no "unpenalized" features, penalize all (no need to set `pars$unpenalized`)
        penalized = formulate(rhs = task$feature_names)
      } else {
        if (any(pars$unpenalized %nin% task$feature_names)) {
          stopf("Parameter 'unpenalized' contains values not present in task")
        }
        # if some "unpenalized" features exist, penalize the rest
        penalized = formulate(rhs = task$feature_names[task$feature_names %nin% pars$unpenalized])
        pars$unpenalized = formulate(rhs = pars$unpenalized)
      }

      data = task$data(cols = task$feature_names)

      with_package("penalized", {
        invoke(
          penalized::penalized,
          response = task$truth(),
          penalized = penalized,
          data = data,
          .args = pars
        )
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

      # get newdata and ensure same ordering in train and predict
      newdata = ordered_features(task, self)
      type = ifelse(self$predict_type == "prob", "response", "class")
      # The penalized package does not have a 'type' argument for predict, so we
      # always get the numeric prediction:
      with_package("penalized", {
        pred = penalized::predict(self$model, penalized = penalized, data = newdata)
      })
      list(response = pred[, "mu"])
    }
  )
)

.extralrns_dict$add("regr.penalized", LearnerRegrPenalized)

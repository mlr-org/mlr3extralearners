#' @title Survival Flexible Parametric Spline Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.flexible
#'
#' @description
#' Flexible parametric spline learner.
#' Calls [flexsurv::flexsurvspline()] from \CRANpkg{flexsurv}.
#'
#' @template learner
#' @templateVar id surv.flexible
#'
#' @section Prediction types:
#' This learner returns three prediction types:
#' 1. `lp`: a vector containing the linear predictors (relative risk scores),
#' where each score corresponds to a specific test observation.
#' Calculated using [flexsurv::flexsurvspline()] and the estimated coefficients.
#' For fitted coefficients, \eqn{\hat{\beta} = (\hat{\beta_0},...,\hat{\beta_P})},
#' and the test data covariates \eqn{X^T = (X_0,...,X_P)^T}, where \eqn{X_0}{X0}
#' is a column of \eqn{1}s, the linear predictor vector is \eqn{lp = \hat{\beta} X^T}.
#' 2. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' Calculated using `predict.flexsurvreg()`.
#' 3. `crank`: same as `lp`.
#'
#' @section Initial parameter values:
#' - `k`:
#'   - Actual default: `0`
#'   - Initial value: `1`
#'   - Reason for change: The default value of `0` is equivalent to, and a much less efficient
#'   implementation of, [LearnerSurvParametric].
#'
#' @references
#' `r format_bib("royston2002flexible")`
#'
#' @template seealso_learner
#' @template simple_example
#' @export
LearnerSurvFlexible = R6Class("LearnerSurvFlexible",
  inherit = mlr3proba::LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        bhazard = p_uty(tags = "train"),
        k = p_int(default = 0L, lower = 0L, tags = "train"),
        knots = p_uty(tags = "train"),
        bknots = p_uty(tags = "train"),
        scale = p_fct(default = "hazard", levels = c("hazard", "odds", "normal"), tags = "train"),
        timescale = p_fct(default = "log", levels = c("log", "identity"), tags = "train"),
        spline = p_fct(default = "rp", levels = c("rp", "splines2ns"), tags = "train"),
        inits = p_uty(tags = "train"),
        rtrunc = p_uty(tags = "train"),
        fixedpars = p_uty(tags = "train"),
        cl = p_dbl(default = 0.95, lower = 0, upper = 1, tags = "train"),
        maxiter = p_int(default = 30L, tags = "train"),
        rel.tolerance = p_dbl(default = 1e-09, tags = "train"),
        toler.chol = p_dbl(default = 1e-10, tags = "train"),
        debug = p_int(default = 0, lower = 0, upper = 1, tags = "train"),
        outer.max = p_int(default = 10L, tags = "train")
      )

      # value of k is changed as the default is equivalent (and a much more inefficient)
      # implementation of `surv.parametric`
      ps$values = list(k = 1)

      super$initialize(
        id = "surv.flexible",
        packages = c("mlr3extralearners", "flexsurv"),
        feature_types = c("logical", "integer", "factor", "numeric"),
        predict_types = c("crank", "lp", "distr"),
        param_set = ps,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_surv.flexible",
        label = "Flexible Parametric Splines"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars_train = self$param_set$get_values(tags = "train")
      args_ctrl = formalArgs(survival::survreg.control)
      pars_ctrl = pars_train[names(pars_train) %in% args_ctrl]
      pars_train = pars_train[names(pars_train) %nin% args_ctrl]
      pars_train$sr.control = invoke(survival::survreg.control, .args = pars_ctrl)
      pars_train$weights = private$.get_weights(task)

      invoke(flexsurv::flexsurvspline,
        formula = task$formula(task$feature_names),
        data = task$data(), .args = pars_train)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      pred = invoke(predict_flexsurvreg, self$model, task, .args = pars, learner = self)

      mlr3proba::.surv_return(surv = pred$surv, lp = pred$lp)
    }
  )
)

predict_flexsurvreg = function(object, task, learner, ...) {
  newdata = ordered_features(task, learner)
  if (any(is.na(newdata))) {
    stopf("Learner %s on task %s failed to predict: Missing values in new data (line(s) %s)\n", learner$id, task$id)
  }

  X = stats::model.matrix(formulate(rhs = task$feature_names),
                          data = newdata,
                          xlev = task$levels())

  # collect the auxiliary arguments for the fitted object
  args = object$aux
  args$knots = as.numeric(args$knots)

  # define matrix of coeffs coefficients
  coeffs = matrix(object$coefficients[c("gamma0", colnames(X)[-1])], nrow = 1)

  # collect fitted parameters
  pars = matrix(object$res.t[object$dlist$pars, "est"],
    nrow = nrow(newdata),
    ncol = length(object$dlist$pars), byrow = TRUE)
  colnames(pars) = object$dlist$pars

  # calculate the linear predictor as X*beta
  # Note: intercept not included in `model.matrix`, so we added manually
  pars[, "gamma0"] = coeffs %*% t(X)

  # if any inverse transformations exist then apply them
  invs = sapply(object$dlist$inv.transforms, function(tr) body(tr) != "x")
  if (any(invs)) {
    for (i in which(invs)) {
      pars[, i] = object$dlist$inv.transforms[[i]](pars[, i])
    }
  }

  # once inverse transformed we can collect the linear predictor
  lp = pars[, "gamma0"]

  # get survival probabilities in a list
  p = invoke(predict, learner$model, type = "survival", newdata = newdata)$.pred

  times = p[[1]]$.eval_time
  ut = unique(times)

  # remove survival probabilities at duplicated time points
  dup = !duplicated(times)
  surv = t(vapply(
    p, function(.x) .x$.pred_survival[dup],
    numeric(length(ut))
  ))
  colnames(surv) = ut

  list(lp = lp, surv = surv)
}

.extralrns_dict$add("surv.flexible", LearnerSurvFlexible)

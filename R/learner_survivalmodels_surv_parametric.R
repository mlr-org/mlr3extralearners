#' @title Survival Fully Parametric Learner
#' @name mlr_learners_surv.parametric
#' @author bblodfon
#'
#' @description
#' Parametric survival model.
#' Calls [survivalmodels::parametric()] from package 'survivalmodels'.
#'
#' @section Prediction types:
#' This learner returns three prediction types:
#' 1. `lp`: a vector of linear predictors (relative risk scores), one per test
#' observation.
#' `lp` is predicted using the formula \eqn{lp = X\beta} where \eqn{X} are the
#' variables in the test data set and \eqn{\beta} are the fitted coefficients.
#' 2. `crank`: same as `lp`.
#' 3. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' The distribution `distr` is composed using the `lp` predictions and specifying
#' a model form in the `form` hyper-parameter, see Details.
#' The survival matrix uses the unique time points from the training set.
#' The parameter `ntime` allows to adjust the granularity of these time points
#' to any number (e.g. `150`).
#'
#' @template learner
#' @templateVar id surv.parametric
#' @template install_survivalmodels
#'
#' @details
#' This learner allows you to choose a **distribution** and a **model form** to compose
#' a predicted survival probability distribution \eqn{S(t)}.
#'
#' The predict method is implemented in [survivalmodels::predict.parametric()].
#' Our implementation is more efficient for composition to distributions than
#' [survival::predict.survreg()].
#'
#' The available model forms with their respective survival functions, are as follows:
#'
#' - Accelerated Failure Time (`aft`) \deqn{S(t) = S_0(\frac{t}{exp(lp)})}{S(t) = S0(t/exp(lp))}
#' - Proportional Hazards (`ph`) \deqn{S(t) = S_0(t)^{exp(lp)}}{S(t) = S0(t)^exp(lp)}
#' - Proportional Odds (`po`) \deqn{S(t) =
#' \frac{S_0(t)}{exp(-lp) + (1-exp(-lp)) S_0(t)}}{S(t) = S0(t) / [exp(-lp) + S0(t) (1-exp(-lp))]}
#' - Tobit (`tobit`) \deqn{S(t) = 1 - \Phi((t - lp)/s)}
#'
#' where \eqn{S_0}{S0} is the estimated baseline survival distribution (in
#' this case with a given parametric form), \eqn{lp} is the predicted linear
#' predictor, \eqn{\Phi} is the cdf of a \eqn{N(0, 1)} distribution, and \eqn{s} is
#' the fitted scale parameter.
#'
#' Whilst any combination of distribution and model form is possible, this does
#' not mean it will necessarily create a sensible or interpretable prediction.
#' The following combinations are 'sensible' (we note that ones mostly used in
#' the literature):
#'
#' - dist = "gaussian"; form = "tobit";
#' - dist = "weibull"; form = "ph"; (fairly used)
#' - dist = "exponential"; form = "ph";
#' - dist = "weibull"; form = "aft"; (fairly used, **default option**)
#' - dist = "exponential"; form = "aft";
#' - dist = "loglogistic"; form = "aft"; (fairly used)
#' - dist = "lognormal"; form = "aft";
#' - dist = "loglogistic"; form = "po";
#'
#' @references
#' `r format_bib("kalbfleisch2011statistical")`
#'
#' @template seealso_learner
#' @export
LearnerSurvParametric = R6Class("LearnerSurvParametric",
  inherit = mlr3proba::LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        form = p_fct(default = "aft", levels = c("aft", "ph", "po", "tobit"),
                     tags = "predict"),
        na.action = p_uty(tags = "train"),
        dist = p_fct(default = "weibull", levels = c("weibull", "exponential", # nolint
                     "gaussian", "lognormal", "loglogistic"), tags = "train"),# nolint
        parms = p_uty(tags = "train"),
        init = p_uty(tags = "train"),
        scale = p_dbl(default = 0, lower = 0, tags = "train"),
        maxiter = p_int(default = 30L, tags = "train"),
        rel.tolerance = p_dbl(default = 1e-09, tags = "train"),
        toler.chol = p_dbl(default = 1e-10, tags = "train"),
        debug = p_int(default = 0, lower = 0, upper = 1, tags = "train"),
        outer.max = p_int(default = 10L, tags = "train"),
        robust = p_lgl(default = FALSE, tags = "train"),
        score = p_lgl(default = FALSE, tags = "train"),
        cluster = p_uty(tags = "train"),
        ntime = p_int(lower = 1, default = NULL, special_vals = list(NULL), tags = "predict"),
        round_time = p_int(default = 2, lower = 0, special_vals = list(FALSE), tags = "predict")
      )

      ps$values = list(dist = "weibull", form = "aft")

      super$initialize(
        id = "surv.parametric",
        param_set = ps,
        predict_types = c("crank", "lp", "distr"),
        feature_types = c("logical", "integer", "numeric", "factor"),
        properties = "weights",
        packages = c("mlr3extralearners", "survival"),
        man = "mlr3extralearners::mlr_learners_surv.parametric",
        label = "Fully Parametric Learner"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")
      pv$weights = private$.get_weights(task)

      invoke(
        survivalmodels::parametric,
        data = data.table::setDF(task$data()),
        time_variable = task$target_names[1L],
        status_variable = task$target_names[2L],
        .args = pv
      )
    },

    .predict = function(task) {
      pv = self$param_set$get_values(tags = "predict")
      newdata = as.data.frame(ordered_features(task, self))

      # use train set times (`y` is a `Surv` object)
      times = as.numeric(self$model$model$y[, 1L])
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

      #' returned `risk` from survivalmodels is hp-style
      #' ie higher value => higher risk
      list(crank = pred$risk, lp = pred$risk, distr = pred$surv)
    }
  )
)

.extralrns_dict$add("surv.parametric", LearnerSurvParametric)

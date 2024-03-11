#' @title Survival Fully Parametric Learner
#' @name mlr_learners_surv.parametric
#' @author bblodfon
#'
#' @description
#' Parametric survival model.
#' Calls [survivalmodels::parametric()] from 'survivalmodels'.
#'
#' @section Custom mlr3 parameters:
#' - `discrete` determines the class of the returned survival probability
#' distribution. If `FALSE` (default) continuous probability
#' distributions are returned using [distr6::VectorDistribution], otherwise
#' [distr6::Matdist] (faster to calculate survival measures that require a
#' `distr` prediction type).
#'
#' @template learner
#' @templateVar id surv.parametric
#' @template install_survivalmodels
#'
#' @details
#' This learner allows you to choose a distribution and a model form to compose
#' a predicted survival probability distribution.
#'
#' The predict method is implemented in [survivalmodels::predict.parametric()].
#' Our implementation is more efficient for composition to distributions than
#' [survival::predict.survreg()].
#'
#' Three types of prediction are returned for this learner:
#' 1. `lp`: a vector of linear predictors (relative risk scores), one per test
#' observation.
#' `lp` is predicted using the formula \eqn{lp = X\beta} where \eqn{X} are the
#' variables in the test data set and \eqn{\beta} are the fitted coefficients.
#' 2. `crank`: same as `lp`.
#' 3. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' The distribution `distr` is composed using the `lp` predictions and specifying
#' a model form in the `form` hyper-parameter. These are as follows, with respective
#' survival functions:
#'
#' - Accelerated Failure Time (`aft`) \deqn{S(t) = S_0(\frac{t}{exp(lp)})}{S(t) = S0(t/exp(lp))}
#' - Proportional Hazards (`ph`) \deqn{S(t) = S_0(t)^{exp(lp)}}{S(t) = S0(t)^exp(lp)}
#' - Proportional Odds (`po`) \deqn{S(t) =
#' \frac{S_0(t)}{exp(-lp) + (1-exp(-lp)) S_0(t)}}{S(t) = S0(t) / [exp(-lp) + S0(t) (1-exp(-lp))]}
#' - Tobit (`tobit`) \deqn{S(t) = 1 - \Phi((t - lp)/s)}
#'
#' where \eqn{S_0}{S0} is the estimated baseline survival distribution (in
#' this case with a given parametric form), \eqn{lp} is the predicted linear
#' predictor, \eqn{\Phi} is the cdf of a N(0, 1) distribution, and \eqn{s} is
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
#' @template example
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
        dist = p_fct(default = "weibull", levels = c("weibull", "exponential",
                     "gaussian", "lognormal", "loglogistic"), tags = "train"),
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
        discrete = p_lgl(tags = c("required", "predict"))
      )

      ps$values = list(discrete = FALSE, dist = "weibull", form = "aft")

      super$initialize(
        id = "surv.parametric",
        param_set = ps,
        predict_types = c("crank", "distr", "lp"),
        feature_types = c("logical", "integer", "numeric", "factor"),
        properties = "weights",
        packages = c("mlr3extralearners", "survival", "pracma"),
        man = "mlr3extralearners::mlr_learners_surv.parametric",
        label = "Fully Parametric Learner"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")

      if ("weights" %in% task$properties) {
        pv$weights = task$weights$weight
      }

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

      pred = invoke(
        predict,
        self$model,
        newdata = newdata,
        distr6 = !pv$discrete,
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

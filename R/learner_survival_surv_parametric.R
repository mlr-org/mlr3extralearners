#' @title Survival Fully Parametric Learner
#' @name mlr_learners_surv.parametric
#' @author RaphaelS1
#'
#' @description
#' Parametric survival model.
#' Calls [survival::survreg()] from \CRANpkg{survival}.
#'
#' @template learner
#' @templateVar id surv.parametric
#'
#' @details
#' This learner allows you to choose a distribution and a model form to compose a predicted
#' survival probability distribution.
#'
#' The internal predict method is implemented in this package as our implementation is more
#' efficient for composition to distributions than [survival::predict.survreg()].
#'
#' `lp` is predicted using the formula \eqn{lp = X\beta} where \eqn{X} are the variables in the test
#' data set and \eqn{\beta} are the fitted coefficients.
#'
#' The distribution `distr` is composed using the `lp` and specifying a model form in the
#' `type` hyper-parameter. These are as follows, with respective survival functions,
#' * Accelerated Failure Time (`aft`) \deqn{S(t) = S_0(\frac{t}{exp(lp)})}{S(t) = S0(t/exp(lp))}
#' * Proportional Hazards (`ph`) \deqn{S(t) = S_0(t)^{exp(lp)}}{S(t) = S0(t)^exp(lp)}
#' * Proportional Odds (`po`) \deqn{S(t) =
#' \frac{S_0(t)}{exp(-lp) + (1-exp(-lp)) S_0(t)}}{S(t) = S0(t) / [exp(-lp) + S0(t) (1-exp(-lp))]}
#' * Tobit (`tobit`) \deqn{S(t) = 1 - F((t - lp)/s)}
#'
#' where \eqn{S_0}{S0} is the estimated baseline survival distribution (in this case
#' with a given parametric form), \eqn{lp} is the predicted linear predictor, \eqn{F} is the cdf
#' of a N(0, 1) distribution, and \eqn{s} is the fitted scale parameter.
#'
#' Whilst any combination of distribution and model form is possible, this does not mean it will
#' necessarily create a sensible or interpretable prediction. The following combinations are
#' 'sensible':
#'
#' * dist = "gaussian"; type = "tobit";
#' * dist = "weibull"; type = "ph";
#' * dist = "exponential"; type = "ph";
#' * dist = "weibull"; type = "aft";
#' * dist = "exponential"; type = "aft";
#' * dist = "loglogistic"; type = "aft";
#' * dist = "lognormal"; type = "aft";
#' * dist = "loglogistic"; type = "po";
#'
#' @references
#' `r format_bib("kalbfleisch2011statistical")`
#'
#' @template seealso_learner
#' @template example
#' @export
delayedAssign(
  "LearnerSurvParametric",
  R6Class("LearnerSurvParametric",
    inherit = mlr3proba::LearnerSurv,
    public = list(
      #' @description
      #' Creates a new instance of this [R6][R6::R6Class] class.
      initialize = function() {
        ps = ps(
          type = p_fct(default = "aft", levels = c("aft", "ph", "po", "tobit"),
            tags = "predict"),
          na.action = p_uty(tags = "train"),
          dist = p_fct(default = "weibull",
            levels = c("weibull", "exponential", "gaussian",
              "lognormal", "loglogistic"), tags = "train"),
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
          cluster = p_uty(tags = "train")
        )

        super$initialize(
          id = "surv.parametric",
          param_set = ps,
          predict_types = c("distr", "lp", "crank"),
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

        fit = invoke(survival::survreg, formula = task$formula(), data = task$data(),
          .args = pv)

        # Fits the baseline distribution by reparameterising the fitted coefficients.
        # These were mostly derived numerically as precise documentation on the parameterisations is
        # hard to find.
        location = as.numeric(fit$coefficients[1])
        scale = fit$scale
        eps = 1e-15

        if (scale < eps) {
          scale = eps
        } else if (scale > .Machine$double.xmax) {
          scale = .Machine$double.xmax
        }

        if (location < -709 & fit$dist %in% c("weibull", "exponential", "loglogistic")) {
          location = -709
        }

        basedist = switch(fit$dist,
          "weibull" = distr6::Weibull$new(shape = 1 / scale, scale = exp(location),
            decorators = "ExoticStatistics"),
          "exponential" = distr6::Exponential$new(scale = exp(location),
            decorators = "ExoticStatistics"),
          "gaussian" = distr6::Normal$new(mean = location, sd = scale,
            decorators = "ExoticStatistics"),
          "lognormal" = distr6::Lognormal$new(meanlog = location, sdlog = scale,
            decorators = "ExoticStatistics"),
          "loglogistic" = distr6::Loglogistic$new(scale = exp(location),
            shape = 1 / scale,
            decorators = "ExoticStatistics")
        )

        set_class(list(fit = fit, basedist = basedist), "surv.parametric")
      },

      .predict = function(task) {
        pv = self$param_set$get_values(tags = "predict")
        pred = invoke(.predict_survreg, object = self$model, task = task, learner = self, .args = pv)
        # lp is aft-style, where higher value = lower risk, opposite needed for crank
        list(distr = pred$distr, crank = -pred$lp, lp = -pred$lp)
      }
    )
  )
)

.predict_survreg = function(object, task, learner, type = "aft", tobit = FALSE) {
  feature_names = intersect(names(learner$state$data_prototype), task$feature_names)

  # Extracts baseline distribution and the model fit, performs assertions
  basedist = object$basedist
  fit = object$fit
  distr6::assertDistribution(basedist)
  assertClass(fit, "survreg")

  # define newdata from the supplied task and convert to model matrix
  newdata = ordered_features(task, learner)
  if (any(is.na(newdata))) {
    stopf("Learner %s on task %s failed to predict: Missing values in new data (line(s) %s)\n", learner$id, task$id)
  }
  x = stats::model.matrix(formulate(rhs = feature_names), data = newdata,
    xlev = task$levels())[, -1]

  # linear predictor defined by the fitted cofficients multiplied by the model matrix
  # (i.e. covariates)
  lp = matrix(fit$coefficients[-1], nrow = 1) %*% t(x)

  # checks and parameterises the chosen model type: proportional hazard (ph), accelerated failure
  # time (aft), odds.
  # PH: h(t) = h0(t)exp(lp)
  # AFT: h(t) = exp(-lp)h0(t/exp(lp))
  # PO: h(t)/h0(t) = {1 + (exp(lp)-1)S0(t)}^-1

  dist = toproper(fit$dist)

  if (type == "tobit") {
    name = paste(dist, "Tobit Model")
    short_name = paste0(dist, "Tobit")
    description = paste(dist, "Tobit Model with negative log-likelihood",
      -fit$loglik[2])
  } else if (type == "ph") {
    name = paste(dist, "Proportional Hazards Model")
    short_name = paste0(dist, "PH")
    description = paste(dist, "Proportional Hazards Model with negative log-likelihood",
      -fit$loglik[2])
  } else if (type == "aft") {
    name = paste(dist, "Accelerated Failure Time Model")
    short_name = paste0(dist, "AFT")
    description = paste(dist, "Accelerated Failure Time Model with negative log-likelihood",
      -fit$loglik[2])
  } else if (type == "po") {
    name = paste(dist, "Proportional Odds Model")
    short_name = paste0(dist, "PO")
    description = paste(dist, "Proportional Odds Model with negative log-likelihood",
      -fit$loglik[2])
  }

  params = list(list(name = name,
    short_name = short_name,
    type = set6::PosReals$new(),
    support = set6::PosReals$new(),
    valueSupport = "continuous",
    variateForm = "univariate",
    description = description,
    .suppressChecks = TRUE,
    pdf = function() {
    },
    cdf = function() {
    },
    parameters = param6::pset()
  ))

  params = rep(params, length(lp))

  pdf = function(x) {} # nolint
  cdf = function(x) {} # nolint
  quantile = function(p) {} # nolint

  if (type == "tobit") {
    for (i in seq_along(lp)) {
      body(pdf) = substitute(pnorm((x - y) / scale), list(
        y = lp[i] + fit$coefficients[1],
        scale = basedist$stdev()
      ))
      body(cdf) = substitute(pnorm((x - y) / scale), list(
        y = lp[i] + fit$coefficients[1],
        scale = basedist$stdev()
      ))
      body(quantile) = substitute(qnorm(p) * scale + y, list(
        y = lp[i] + fit$coefficients[1],
        scale = basedist$stdev()
      ))
      params[[i]]$pdf = pdf
      params[[i]]$cdf = cdf
      params[[i]]$quantile = quantile
    }
  } else if (type == "ph") {
    for (i in seq_along(lp)) {
      body(pdf) = substitute((exp(y) * basedist$hazard(x)) * (1 - self$cdf(x)), list(y = -lp[i]))
      body(cdf) = substitute(1 - (basedist$survival(x)^exp(y)), list(y = -lp[i]))
      body(quantile) = substitute(
        basedist$quantile(1 - exp(exp(-y) * log(1 - p))), # nolint
        list(y = -lp[i])
      )
      params[[i]]$pdf = pdf
      params[[i]]$cdf = cdf
      params[[i]]$quantile = quantile
    }
  } else if (type == "aft") {
    for (i in seq_along(lp)) {
      body(pdf) = substitute((exp(-y) * basedist$hazard(x / exp(y))) * (1 - self$cdf(x)),
        list(y = lp[i]))
      body(cdf) = substitute(1 - (basedist$survival(x / exp(y))), list(y = lp[i]))
      body(quantile) = substitute(exp(y) * basedist$quantile(p), list(y = lp[i]))
      params[[i]]$pdf = pdf
      params[[i]]$cdf = cdf
      params[[i]]$quantile = quantile
    }
  } else if (type == "po") {
    for (i in seq_along(lp)) {
      body(pdf) = substitute((basedist$hazard(x) *
        (1 - (basedist$survival(x) /
          (((exp(y) - 1)^-1) + basedist$survival(x))))) *
        (1 - self$cdf(x)), list(y = lp[i]))
      body(cdf) = substitute(1 - (basedist$survival(x) *
        (exp(-y) + (1 - exp(-y)) * basedist$survival(x))^-1),
      list(y = lp[i]))
      body(quantile) = substitute(basedist$quantile(-p / ((exp(-y) * (p - 1)) - p)), # nolint
        list(y = lp[i]))
      params[[i]]$pdf = pdf
      params[[i]]$cdf = cdf
      params[[i]]$quantile = quantile
    }
  }

  distlist = lapply(params, function(.x) do.call(distr6::Distribution$new, .x))
  names(distlist) = paste0(short_name, seq_along(distlist))

  distr = distr6::VectorDistribution$new(distlist,
    decorators = c("CoreStatistics", "ExoticStatistics"))

  lp = lp + fit$coefficients[1]

  list(lp = as.numeric(lp), distr = distr)
}

.extralrns_dict$add("surv.parametric", function() LearnerSurvParametric$new())

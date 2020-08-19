#' @title Survival Fully Parametric Learner
#' @name mlr_learners_surv.parametric
#' @author RaphaelS1
#'
#' @template class_learner
#' @templateVar id surv.parametric
#' @templateVar caller survreg
#'
#' @details
#' This learner allows you to choose a distribution and a model form to compose a predicted
#' survival probability distribution. Note: Just because any combination of distribution and model
#' form is possible, this does not mean it will necessarily be sensible or interpretable.
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
#'
#' where \eqn{S_0}{S0} is the estimated baseline survival distribution (in this case
#' with a given parametric form), and \eqn{lp} is the predicted linear predictor.
#'
#' @references
#' Kalbfleisch, J. D., & Prentice, R. L. (2011).
#' The statistical analysis of failure time data (Vol. 360).
#' John Wiley & Sons.
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvParametric = R6Class("LearnerSurvParametric", inherit = LearnerSurv,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamFct$new(id = "type", default = "aft", levels = c("aft", "ph", "po"),
                       tags = "predict"),
          ParamUty$new(id = "na.action", tags = "train"),
          ParamFct$new(id = "dist", default = "weibull",
                       levels = c("weibull", "exponential", "normal", "logistic",
                                  "lognormal", "loglogistic"), tags = "train"),
          ParamUty$new(id = "parms", tags = "train"),
          ParamUty$new(id = "init", tags = "train"),
          ParamDbl$new(id = "scale", default = 0, lower = 0, tags = "train"),
          ParamInt$new(id = "maxiter", default = 30L, tags = "train"),
          ParamDbl$new(id = "rel.tolerance", default = 1e-09, tags = "train"),
          ParamDbl$new(id = "toler.chol", default = 1e-10, tags = "train"),
          ParamInt$new(id = "debug", default = 0, lower = 0, upper = 1, tags = "train"),
          ParamInt$new(id = "outer.max", default = 10L, tags = "train"),
          ParamLgl$new(id = "robust", default = FALSE, tags = "train"),
          ParamLgl$new(id = "score", default = FALSE, tags = "train"),
          ParamUty$new(id = "cluster", tags = "train")
        )
      )

      super$initialize(
        id = "surv.parametric",
        param_set = ps,
        predict_types = c("distr", "lp", "crank"),
        feature_types = c("logical", "integer", "numeric", "factor"),
        properties = "weights",
        packages = c("survival", "pracma"),
        man = "mlr3extralearners::mlr_learners_surv.parametric"
      )
    }
  ),

  private = list(
    .train = function(task) {

      pv = self$param_set$get_values(tags = "train")

      if ("weights" %in% task$properties) {
        pv$weights = task$weights$weight
      }

      fit = mlr3misc::invoke(survival::survreg, formula = task$formula(), data = task$data(),
                             .args = pv)

      # Fits the baseline distribution by reparameterising the fitted coefficients.
      # These were mostly derived numerically as precise documentation on the parameterisations is
      # hard to find.
      location = as.numeric(fit$coefficients[1])
      scale = fit$scale
      eps = .Machine$double.xmin

      if (scale == 0) {
        scale = eps
      } else if (scale == Inf) {
        scale = .Machine$double.xmax
      }

      if (location < -709 & fit$dist %in% c("weibull", "exponential", "loglogistic")) {
        location = -709
      }


      basedist = switch(fit$dist,
        "normal" = distr6::Normal$new(mean = location, sd = scale,
          decorators = "ExoticStatistics"),
        "weibull" = distr6::Weibull$new(shape = 1 / scale, scale = exp(location),
          decorators = "ExoticStatistics"),
        "exponential" = distr6::Exponential$new(scale = exp(location),
          decorators = "ExoticStatistics"),
        "logistic" = distr6::Logistic$new(mean = location, scale = scale,
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

      # As we are using a custom predict method the missing assertions are performed here manually
      # (as opposed to the automatic assertions that take place after prediction)
      if (any(is.na(data.frame(task$data(cols = task$feature_names))))) {
        stopf("Learner %s on task %s failed to predict: Missing values in new data (line(s) %s)\n",
          self$id, task$id,
          paste0(which(is.na(data.frame(task$data(cols = task$feature_names)))), collapse = ", "))
      }

      pv = self$param_set$get_values(tags = "predict")

      # Call the predict method defined here
      pred = mlr3misc::invoke(predict_survreg, object = self$model, task = task, .args = pv)

      if (is.null(self$param_set$values$type)) {
        return(mlr3proba::PredictionSurv$new(task = task,
                                             distr = pred$distr,
                                             crank = pred$lp,
                                             lp = pred$lp,
                                             response = exp(pred$lp)))
      } else if (self$param_set$values$type == "aft") {
        return(mlr3proba::PredictionSurv$new(task = task,
                                             distr = pred$distr,
                                             crank = pred$lp,
                                             lp = pred$lp,
                                             response = exp(pred$lp)))
      } else {
        return(mlr3proba::PredictionSurv$new(task = task,
                                             distr = pred$distr,
                                             crank = pred$lp,
                                             lp = pred$lp))
      }
    }
  )
)

predict_survreg = function(object, task, type = "aft") {

  # Extracts baseline distribution and the model fit, performs assertions
  basedist = object$basedist
  fit = object$fit
  distr6::assertDistribution(basedist)
  checkmate::assertClass(fit, "survreg")

  # define newdata from the supplied task and convert to model matrix
  newdata = task$data(cols = task$feature_names)
  x = stats::model.matrix(formulate(rhs = task$feature_names), data = newdata,
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

  if (type == "ph") {
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
                     parameters = distr6::ParameterSet$new()
  ))

  params = rep(params, length(lp))

  pdf = function(x) {} # nolint
  cdf = function(x) {} # nolint
  quantile = function(p) {} # nolint

  if (type == "ph") {
    for (i in seq_along(lp)) {
      body(pdf) = substitute((exp(y) * basedist$hazard(x)) * (1 - self$cdf(x)), list(y = lp[i]))
      body(cdf) = substitute(1 - (basedist$survival(x)^exp(y)), list(y = lp[i]))
      body(quantile) = substitute(basedist$quantile(1 - exp(exp(-y) * log(1 - p))), list(y = lp[i])) # nolint
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
  names(distlist) = paste0("WeibullAFT", seq_along(distlist))


  distr = distr6::VectorDistribution$new(distlist,
                                         decorators = c("CoreStatistics", "ExoticStatistics"))

  lp = lp + fit$coefficients[1]

  return(list(lp = as.numeric(lp), distr = distr))
}

lrns_dict$add("surv.parametric", LearnerSurvParametric)

#' @title Survival Flexible Parametric Learner
#' @author bblodfon
#' @name mlr_learners_surv.flexreg
#'
#' @description
#' Flexible parametric learner.
#' Calls [flexsurv::flexsurvreg()] from \CRANpkg{flexsurv}.
#'
#' @template learner
#' @templateVar id surv.flexreg
#'
#' @section Prediction types:
#' This learner returns three prediction types:
#' 1. `lp`: a vector containing the linear predictors (relative risk scores),
#' where each score corresponds to a specific test observation.
#' Calculated using `predict.flexsurvreg(type = "lp", ...)`.
#' The interpretation whether higher lp corresponds to higher risk or higher
#' survival, depends on the distribution choice (see `dist` parameter documentation).
#' 2. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' Calculated using `predict.flexsurvreg(type = "survival", ...)`.
#' 3. `crank`: same as `lp`.
#' 4. `response`: mean survival time calculated using `predict.flexsurvreg(type = "response", ...)`.
#'
#' @references
#' `r format_bib("jackson2016flexsurv")`
#'
#' @template seealso_learner
#' @examplesIf learner_is_runnable("surv.flexreg")
#' library(survival)
#'
#' # Define the task, split to train/test set
#' task = tsk("lung")
#' set.seed(42)
#' part = partition(task)
#'
#' # Define the learner
#' learner = lrn("surv.flexreg",
#'   formula = survival::Surv(time, status) ~ age + ph.karno + sex,
#'   anc = list(shape = ~ sex), dist = "weibull")
#'
#' # Train the learner on the training ids
#' learner$train(task, part$train)
#' print(learner$model)
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, part$test)
#' print(predictions)
#'
#' # Score the predictions
#' predictions$score()
#' @export
LearnerSurvFlexReg = R6Class("LearnerSurvFlexReg",
  inherit = mlr3proba::LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        formula = p_uty(tags = "train", custom_check = checkmate::check_formula),
        anc = p_uty(tags = "train", custom_check = function(x) checkmate::check_list(x, types = "formula")),
        bhazard = p_uty(tags = "train"),
        rtrunc = p_uty(tags = "train"),
        dist = p_fct(levels = c(
          "gengamma", "gengamma.orig", "genf", "genf.orig", "weibull", "weibullph",
          "gamma", "exp", "exponential", "llogis", "lnorm", "lognormal", "gompertz"),
          tags = "train"),
        inits = p_uty(tags = "train"),
        fixedpars = p_uty(tags = "train"),
        # dfns, aux, integ.opts => for custom distrs, don't include
        cl = p_dbl(default = 0.95, lower = 0, upper = 1, tags = "train"),
        hessian = p_lgl(default = TRUE, tags = "train"),
        hess.control = p_uty(tags = "train"),
        # params from `survival::survreg.control()`
        maxiter = p_int(default = 30L, tags = "train"),
        rel.tolerance = p_dbl(default = 1e-09, tags = "train"),
        toler.chol = p_dbl(default = 1e-10, tags = "train"),
        debug = p_int(default = 0, lower = 0, upper = 1, tags = "train"),
        outer.max = p_int(default = 10L, tags = "train"),
        times = p_uty(tags = "predict")
      )

      super$initialize(
        id = "surv.flexreg",
        packages = c("mlr3extralearners", "flexsurv", "survival"),
        feature_types = c("logical", "integer", "factor", "numeric"),
        predict_types = c("crank", "lp", "distr", "response"),
        param_set = param_set,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_surv.flexreg",
        label = "Flexible Parametric Regression"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")
      args_ctrl = formalArgs(survival::survreg.control)
      pars_ctrl = pv[names(pv) %in% args_ctrl]
      pv = pv[names(pv) %nin% args_ctrl]
      pv$sr.control = invoke(survival::survreg.control, .args = pars_ctrl)
      pv$weights = private$.get_weights(task)

      if (is.null(pv$formula)) {
        form = task$formula(task$feature_names)
      } else {
        form = pv$formula
        pv$formula = NULL
      }

      invoke(
        flexsurv::flexsurvreg,
        formula = form,
        data = task$data(),
        .args = pv
      )
    },

    .predict = function(task) {
      pv = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)

      # get linear predictors
      lp = invoke(predict, self$model, newdata = newdata, type = "lp")$.pred_link
      # flexsurv returns on the natural scale of the location parameter, e.g. exp(lp)
      # thus we transform back to the original scale (beta*X)
      dlist = self$model$dlist
      location_name = dlist$location
      location_index = which(dlist$pars == location_name)
      trafo_fun = dlist$transforms[[location_index]]
      lp = invoke(trafo_fun, lp)

      # lp interpretation: higher lp => lower survival (risk score, PH-style)
      # so for some distributions we need to inverse the sign to respect this
      # only the following ones are PH-style (see `dist` parameter doc)
      if (tolower(dlist$name) %nin% c("exp", "gompertz", "gamma", "weibullph")) {
        lp = -lp
      }

      # get survival probabilities in a list
      p = invoke(predict, self$model, newdata = newdata, type = "survival", .args = pv)[[1L]]

      times = p[[1]]$.eval_time
      ut = unique(times)

      # remove survival probabilities at duplicated time points
      dup = !duplicated(times)
      surv = t(vapply(
        p, function(.x) .x$.pred_survival[dup],
        numeric(length(ut))
      ))
      colnames(surv) = ut

      # get mean survival times
      response = invoke(predict, self$model, type = "response", newdata = newdata)[[1L]]

      # return all predict types for this learner
      list(crank = lp, lp = lp, distr = surv, response = response)
    }
  )
)

.extralrns_dict$add("surv.flexreg", LearnerSurvFlexReg)

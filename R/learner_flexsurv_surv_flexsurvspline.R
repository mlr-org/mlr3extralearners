#' @title Survival Flexible Parametric Spline Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.flexspline
#'
#' @description
#' Flexible survival regression using the Royston/Parmar spline model.
#' Calls `flexsurv::flexsurvspline()` from \CRANpkg{flexsurv}.
#'
#' @template learner
#' @templateVar id surv.flexspline
#'
#' @section Prediction types:
#' This learner returns three prediction types:
#' 1. `lp`: a vector containing the linear predictors (relative risk scores),
#' where each score corresponds to a specific test observation.
#' Calculated using `predict.flexsurvreg(type = "lp", ...)`.
#' Higher linear predictor gives higher hazard (equivalently, lower survival)
#' for the spline models.
#' 2. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' Calculated using `predict.flexsurvreg(type = "survival", ...)`.
#' 3. `crank`: same as `lp`.
#' 4. `response`: mean survival time calculated using `predict.flexsurvreg(type = "response", ...)`
#'
#' @references
#' `r format_bib("royston2002flexible")`
#'
#' @template seealso_learner
#' @template example_flexsurv
#' @export
LearnerSurvFlexSpline = R6Class("LearnerSurvFlexSpline",
  inherit = mlr3proba::LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        formula = p_uty(tags = c("train", "predict"), custom_check = checkmate::check_formula),
        bhazard = p_uty(tags = "train"),
        rtrunc = p_uty(tags = "train"),
        k = p_int(default = 0L, lower = 0L, tags = "train"),
        knots = p_uty(tags = "train"),
        bknots = p_uty(tags = "train"),
        scale = p_fct(default = "hazard", levels = c("hazard", "odds", "normal"), tags = "train"),
        timescale = p_fct(default = "log", levels = c("log", "identity"), tags = "train"),
        spline = p_fct(default = "rp", levels = c("rp", "splines2ns"), tags = "train"),
        # params from `flexsurvreg()`
        inits = p_uty(tags = "train"),
        fixedpars = p_uty(tags = "train"),
        cl = p_dbl(default = 0.95, lower = 0, upper = 1, tags = "train"),
        anc = p_uty(tags = "train", custom_check = function(x) checkmate::check_list(x, types = "formula")),
        # params from `survival::survreg.control()`
        maxiter = p_int(default = 30L, tags = "train"),
        rel.tolerance = p_dbl(default = 1e-09, tags = "train"),
        toler.chol = p_dbl(default = 1e-10, tags = "train"),
        debug = p_int(default = 0, lower = 0, upper = 1, tags = "train"),
        outer.max = p_int(default = 10L, tags = "train"),
        times = p_uty(tags = "predict")
      )

      super$initialize(
        id = "surv.flexspline",
        packages = c("mlr3extralearners", "flexsurv", "survival"),
        feature_types = c("logical", "integer", "factor", "numeric"),
        predict_types = c("crank", "lp", "distr", "response"),
        param_set = param_set,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_surv.flexspline",
        label = "Flexible Parametric Splines"
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
        flexsurv::flexsurvspline,
        formula = form,
        data = task$data(),
        .args = pv
      )
    },

    .predict = function(task) {
      pv = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)

      # get the linear predictors
      # for the spline models the location parameter is `gamma0`, which is on the
      # unrestricted original scale, so the lp does not need to be transformed
      lp = invoke(predict, self$model, newdata = newdata, type = "lp")[[2L]]

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
      response = invoke(predict, self$model, newdata = newdata, type = "response")[[1L]]

      # return all predict types for this learner
      list(crank = lp, lp = lp, distr = surv, response = response)
    }
  )
)

.extralrns_dict$add("surv.flexspline", LearnerSurvFlexSpline)

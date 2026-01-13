#' @title Cox Proportional Hazards Generalized Additive Learner
#' @author bblodfon
#' @name mlr_learners_surv.gam.cox
#'
#' @description
#' Cox proportional hazards model fitted via generalized additive modeling.
#' Internally calls [mgcv::gam()] from the \CRANpkg{mgcv} package with
#' `family = mgcv::cox.ph()`. The censoring indicator is passed via the
#' `weights` argument.
#'
#' @section Prediction types:
#' Three types of prediction are returned for this learner:
#' 1. `lp`: a vector of linear predictors (relative risk scores), one per
#' observation. Calls [mgcv::predict.gam()] with `type = "link"`.
#' 2. `crank`: same as `lp`.
#' 3. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' By default, the Breslow estimator is used via [mlr3proba::breslow()].
#'
#' @inheritSection mlr_learners_regr.gam Formula
#' @inheritSection mlr_learners_regr.gam Offset
#'
#' @template learner
#' @templateVar id surv.gam.cox
#'
#' @references
#' `r format_bib("wood2012mgcv", "wood2016")`
#'
#' @examplesIf learner_is_runnable("surv.gam.cox")
#' # simple example
#' t = tsk("lung")
#' l = lrn("surv.gam.cox")
#' l$param_set$set_values(formula = time ~ s(age, k = 5) + ph.karno + sex)
#' l$train(t)
#' l$model
#' @export
LearnerSurvGamCox = R6Class("LearnerSurvGamCox",
  inherit = mlr3proba::LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        formula = p_uty(tags = "train"),
        method = p_fct(
          levels = c("GCV.Cp", "GACV.Cp", "REML", "P-REML", "ML", "P-ML"),
          default = "GCV.Cp",
          tags = "train"
        ),
        optimizer = p_uty(default = c("outer", "newton"), tags = "train"),
        scale = p_dbl(default = 0, tags = "train"),
        select = p_lgl(default = FALSE, tags = "train"),
        knots = p_uty(default = NULL, tags = "train"),
        sp = p_uty(default = NULL, tags = "train"),
        min.sp = p_uty(default = NULL, tags = "train"),
        H = p_uty(default = NULL, tags = "train"),
        gamma = p_dbl(default = 1, lower = 1, tags = "train"),
        paraPen = p_uty(default = NULL, tags = "train"),
        G = p_uty(default = NULL, tags = "train"),
        in.out = p_uty(default = NULL, tags = "train"),
        drop.unused.levels = p_lgl(default = TRUE, tags = "train"),
        drop.intercept = p_lgl(default = FALSE, tags = "train"),
        nei = p_uty(tags = "train"),
        # from mgcv::gam.control()
        nthreads = p_int(default = 1L, lower = 1L, tags = c("train", "threads")),
        ncv.threads = p_int(default = 1, lower = 1, tags = "train"),
        irls.reg = p_dbl(default = 0.0, lower = 0, tags = "train"),
        epsilon = p_dbl(default = 1e-07, lower = 0, tags = "train"),
        maxit = p_int(default = 200L, tags = "train"),
        mgcv.tol = p_dbl(default = 1e-07, lower = 0, tags = "train"),
        mgcv.half = p_int(default = 15L, lower = 0L, tags = "train"),
        trace = p_lgl(default = FALSE, tags = "train"),
        rank.tol = p_dbl(default = .Machine$double.eps^0.5, lower = 0, tags = "train"),
        nlm = p_uty(default = list(), tags = "train"),
        optim = p_uty(default = list(), tags = "train"),
        newton = p_uty(default = list(), tags = "train"),
        idLinksBases = p_lgl(default = TRUE, tags = "train"),
        scalePenalty = p_lgl(default = TRUE, tags = "train"),
        efs.lspmax = p_int(default = 15L, lower = 0L, tags = "train"),
        efs.tol = p_dbl(default = .1, lower = 0, tags = "train"),
        scale.est = p_fct(levels = c("fletcher", "pearson", "deviance"), default = "fletcher", tags = "train"),
        edge.correct = p_lgl(default = FALSE, tags = "train"),
        # from mgcv::predict.gam()
        block.size = p_int(default = 1000L, tags = "predict"),
        unconditional = p_lgl(default = FALSE, tags = "predict")
      )

      super$initialize(
        id = "surv.gam.cox",
        packages = c("mlr3extralearners", "mgcv"),
        feature_types = c("logical", "integer", "numeric", "factor"),
        predict_types = c("crank", "lp", "distr"),
        param_set = param_set,
        properties = "offset",
        man = "mlr3extralearners::mlr_learners_surv.gam.cox",
        label = "CoxPH Generalized Additive Model"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      control_pars = pars[names(pars) %in% formalArgs(mgcv::gam.control)]
      pars = pars[names(pars) %nin% formalArgs(mgcv::gam.control)]

      data = task$data(cols = c(task$feature_names, task$target_names))
      pars$weights = task$status()
      pars$family = "cox.ph"

      if ("offset" %in% task$properties) {
        pars$offset = task$offset$offset
      }

      if (is.null(pars$formula)) {
        # GLM-like formula, no smooth terms
        formula = stats::as.formula(paste(
          task$target_names[1L],
          "~",
          paste(task$feature_names, collapse = " + ")
        ))
        pars$formula = formula
      }

      control_obj = if (length(control_pars)) {
        invoke(mgcv::gam.control, .args = control_pars)
      } else {
        mgcv::gam.control()
      }

      invoke(mgcv::gam, data = data, control = control_obj, .args = pars)
    },

    .predict = function(task) {
      pv = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      model = self$model

      lp_test = as.numeric(invoke(
        predict,
        model,
        newdata = newdata,
        type = "link",
        newdata.guaranteed = TRUE,
        .args = pv
      ))

      surv = mlr3proba::breslow(
        times = model$y, # times (train set)
        status = model$prior.weights, # status (train set)
        lp_train = model$linear.predictors, # lp (train set)
        lp_test = lp_test
      )

      mlr3proba::surv_return(surv = surv, crank = lp_test, lp = lp_test)
    }
  )
)

.extralrns_dict$add("surv.gam.cox", LearnerSurvGamCox)

#' @title Regression Linear Mixed Effects Learner
#' @author s-kganz
#' @name mlr_learners_regr.lmer
#'
#' @template class_learner
#' @templateVar id regr.lmer
#' @templateVar caller lmer
#'
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrLmer = R6Class("LearnerRegrLmer",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      action_levels <- c("ignore", "warning", "message", "stop")

      ps = ParamSet$new(list(
        # lmer gives a lot of freedom in the formula spec, so we ask
        # for the formula directly. The formula *must* be set.
        ParamUty$new(
          id = "formula",
          tags = c("required", "train"),
          default = NULL),
        ParamLgl$new(id = "REML", tags = "train", default = TRUE),
        ParamUty$new(id = "start", tags = "train", default = NULL),
        ParamInt$new(id = "verbose", tags = "train", default = 0, lower = 0),
        ParamUty$new(id = "offset", tags = "train", default = NULL),
        ParamUty$new(id = "contrasts", tags = "train", default = NULL),
        ParamLgl$new(id = "devFunOnly", tags = "train", default = FALSE),

        # Params passed to lmerControl()
        ParamFct$new(
          id = "optimizer",
          levels = c("Nelder_Mead", "bobyqa", "nlminbwrap", "nloptwrap"),
          default = "nloptwrap",
          tags = c("train", "control")
        ),
        ParamLgl$new(
          id = "restart_edge",
          default = FALSE,
          tags = c("train", "control")),
        ParamDbl$new(
          id = "boundary.tol",
          default = 1e-5,
          lower = 0,
          tags = c("train", "control")
        ),
        ParamLgl$new(
          id = "calc.derivs",
          default = TRUE,
          tags = c("train", "control")),
        # Input checks
        ParamFct$new(
          id = "check.nobs.vs.rankZ",
          levels = action_levels,
          default = "ignore",
          tags = c("train", "control")),
        ParamFct$new(
          id = "check.nobs.vs.nlev",
          levels = action_levels,
          default = "stop",
          tags = c("train", "control")),
        ParamFct$new(
          id = "check.nlev.gtreq.5",
          levels = action_levels,
          default = "ignore",
          tags = c("train", "control")),
        ParamFct$new(
          id = "check.nlev.gtr.1",
          levels = action_levels,
          default = "stop",
          tags = c("train", "control")),
        ParamFct$new(
          id = "check.nobs.vs.nRE",
          levels = action_levels,
          default = "stop",
          tags = c("train", "control")),
        ParamFct$new(
          id = "check.rankX",
          levels = c(
            "message+drop.cols", "silent.drop.cols", "warn+drop.cols",
            "stop.deficient", "ignore"),
          default = "message+drop.cols",
          tags = c("train", "control")
        ),
        ParamFct$new(
          id = "check.scaleX",
          levels = c(
            "warning", "stop", "silent.rescale",
            "message+rescale", "warn+rescale", "ignore"),
          default = "warning",
          tags = c("train", "control")
        ),
        ParamFct$new(
          id = "check.formula.LHS",
          levels = action_levels,
          default = "stop",
          tags = c("train", "control")
        ),
        # Convergence checks
        ParamUty$new(
          id = "check.conv.grad",
          default = lme4::.makeCC("warning", tol = 2e-3, relTol = NULL),
          tags = c("train", "control")
        ),
        ParamUty$new(
          id = "check.conv.singular",
          default = lme4::.makeCC(
            action = "message",
            tol = formals(lme4::isSingular)$tol
          ),
          tags = c("train", "control")
        ),
        ParamUty$new(
          id = "check.conv.hess",
          default = lme4::.makeCC(action = "warning", tol = 1e-6),
          tags = c("train", "control")
        ),
        # Additional optimizer controls
        ParamUty$new(
          id = "optCtrl",
          default = list(),
          tags = c("train", "control")
        ),

        # Prediction params
        ParamUty$new(id = "newparams", default = NULL, tags = "predict"),
        ParamUty$new(id = "re.form", default = NULL, tags = "predict"),
        ParamLgl$new(id = "random.only", default = FALSE, tags = "predict"),
        ParamLgl$new(id = "allow.new.levels", default = FALSE, tags = "predict"),
        ParamUty$new(id = "na.action", default = stats::na.pass, tags = "predict")
      ))

      super$initialize(
        id = "regr.lmer",
        packages = "lme4",
        feature_types = c("logical", "integer", "numeric", "factor"),
        predict_types = c("response"),
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_regr.lmer"
      )
    }

  ),

  private = list(
    .train = function(task) {
      # get parameters for training and control of the fitting process

      pars_train = self$param_set$get_values(tags = "train")
      pars_ctrl = self$param_set$get_values(tags = "control")

      # The control args have both the train and control tags for ease of
      # running the paramtest. The two groups are separated out here.
      pars_train[names(pars_ctrl)] <- NULL

      # set column names to ensure consistency in fit and predict
      self$state$feature_names = task$feature_names

      # formula must be set manually to use the lme4 mixed effects syntax
      formula <- pars_train$formula
      pars_train[["formula"]] <- NULL

      if ("weights" %in% task$properties) {
        pars_train$weights <- task$weights$weight
      }

      data = task$data()

      # use the mlr3misc::invoke function (it's similar to do.call())
      invoke(lme4::lmer,
        formula = formula,
        data = data,
        .args = pars_train,
        control = invoke(lme4::lmerControl, .args = pars_ctrl))
    },

    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = task$data(cols = self$state$feature_names)

      list(response = invoke(
        predict,
        self$model,
        type = "response",
        newdata = newdata,
        .args = pars
      )
      )
    }
  )
)
.extralrns_dict$add("regr.lmer", LearnerRegrLmer)

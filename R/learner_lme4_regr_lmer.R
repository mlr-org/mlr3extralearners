#' @title Regression Linear Mixed Effects Learner
#' @author s-kganz
#' @name mlr_learners_regr.lmer
#'
#' @description
#' Linear model with random effects.
#' Calls [lme4::lmer()] from \CRANpkg{lme4}.
#'
#' @template section_formula
#'
#' @templateVar id regr.lmer
#' @template learner
#'
#' @section Offset:
#' If a `Task` contains a column with the `offset` role, it is automatically
#' incorporated during training via the `offset` argument in [lme4::lmer()].
#' No offset is applied during prediction for this learner.
#'
#' @references
#' `r format_bib("bates2010lme4")`
#'
#' @template seealso_learner
#' @examplesIf learner_is_runnable("regr.lmer")
#' # Define the Learner and set parameter values
#' learner = lrn("regr.lmer", formula = cmedv ~ (1 | town))
#'
#' # Define a Task
#' task = tsk("boston_housing")
#'
#' learner$train(task)
#' print(learner$model)
#' @export
LearnerRegrLmer = R6Class("LearnerRegrLmer",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      action_levels = c("ignore", "warning", "message", "stop")

      ps = ps(
        # lmer gives a lot of freedom in the formula spec, so we ask
        # for the formula directly. The formula *must* be set.
        formula = p_uty(
          tags = c("required", "train"),
          custom_check = check_formula
        ),
        REML = p_lgl(tags = "train", default = TRUE),
        start = p_uty(tags = "train", default = NULL),
        verbose = p_int(tags = "train", default = 0, lower = 0),
        contrasts = p_uty(tags = "train", default = NULL),

        # Params passed to lmerControl()
        optimizer = p_fct(
          levels = c("Nelder_Mead", "bobyqa", "nlminbwrap", "nloptwrap"),
          default = "nloptwrap",
          tags = "train"
        ),
        restart_edge = p_lgl(
          default = FALSE,
          tags = "train"),
        boundary.tol = p_dbl(
          default = 1e-5,
          lower = 0,
          tags = "train"
        ),
        calc.derivs = p_lgl(
          default = TRUE,
          tags = "train"),
        # Input checks
        check.nobs.vs.rankZ = p_fct(
          levels = action_levels,
          default = "ignore",
          tags = "train"),
        check.nobs.vs.nlev = p_fct(
          levels = action_levels,
          default = "stop",
          tags = "train"),
        check.nlev.gtreq.5 = p_fct(
          levels = action_levels,
          default = "ignore",
          tags = "train"),
        check.nlev.gtr.1 = p_fct(
          levels = action_levels,
          default = "stop",
          tags = "train"),
        check.nobs.vs.nRE = p_fct(
          levels = action_levels,
          default = "stop",
          tags = "train"),
        check.rankX = p_fct(
          levels = c(
            "message+drop.cols", "silent.drop.cols", "warn+drop.cols",
            "stop.deficient", "ignore"),
          default = "message+drop.cols",
          tags = "train"
        ),
        check.scaleX = p_fct(
          levels = c(
            "warning", "stop", "silent.rescale",
            "message+rescale", "warn+rescale", "ignore"),
          default = "warning",
          tags = "train"
        ),
        check.formula.LHS = p_fct(
          levels = action_levels,
          default = "stop",
          tags = "train"
        ),
        # Convergence checks
        check.conv.grad = p_uty(
          default = 'lme4::.makeCC("warning", tol = 2e-3, relTol = NULL)',
          tags = "train"
        ),
        check.conv.singular = p_uty(
          default = 'lme4::.makeCC(action = "message", tol = formals(lme4::isSingular)$tol)',
          tags = "train"
        ),
        check.conv.hess = p_uty(
          default = 'lme4::.makeCC(action = "warning", tol = 1e-6)',
          tags = "train"
        ),
        # Additional optimizer controls
        optCtrl = p_uty(
          default = list(),
          tags = "train"
        ),

        # Prediction params
        newparams = p_uty(default = NULL, tags = "predict"),
        re.form = p_uty(default = NULL, tags = "predict"),
        random.only = p_lgl(default = FALSE, tags = "predict"),
        allow.new.levels = p_lgl(default = FALSE, tags = "predict"),
        na.action = p_uty(default = "stats::na.pass", tags = "predict")
      )

      super$initialize(
        id = "regr.lmer",
        packages = "lme4",
        feature_types = c("logical", "integer", "numeric", "factor"),
        properties = c("weights", "offset"),
        predict_types = "response",
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_regr.lmer",
        label = "Linear Mixed Effects"
      )
    }
  ),

  private = list(
    .train = function(task) {
      # get parameters for training and control of the fitting process

      pars_train = self$param_set$get_values(tags = "train")

      ii = names(pars_train) %in% formalArgs(lme4::lmerControl)

      pars_ctrl = pars_train[ii]
      pars_train[ii] = NULL

      # formula must be set manually to use the lme4 mixed effects syntax
      formula = pars_train$formula
      pars_train[["formula"]] = NULL
      pars_train$weights = private$.get_weights(task)

      if ("offset" %in% task$properties) {
        pars_train$offset = task$offset$offset
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
      newdata = ordered_features(task, self)

      list(response = invoke(
        predict,
        self$model,
        type = "response",
        newdata = newdata,
        .args = pars
      ))
    }
  )
)
.extralrns_dict$add("regr.lmer", LearnerRegrLmer)

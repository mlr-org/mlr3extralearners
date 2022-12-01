#' @title Classification Linear Mixed Effect Learner
#' @author sebffischer
#' @name mlr_learners_classif.glmer
#'
#' @description
#' Generalized linear model with random effects.
#' Calls [lme4::glmer()] from \CRANpkg{lme4}.
#'
#' @section Initial parameter values:
#' * `family` - Is set to `stats::binomial(link = "logit")`.
#'
#' @template section_formula
#'
#' @templateVar id classif.glmer
#' @template learner
#'
#' @references
#' `r format_bib("bates2010lme4")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifGlmer = R6Class("LearnerClassifGlmer",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      action_levels = c("ignore", "warning", "message", "stop")
      param_set = ps(
        formula = p_uty(default = formula(), tags = c("train", "required"), custom_check = check_formula),
        start = p_uty(default = NULL, tags = "train"),
        verbose = p_int(default = 0, lower = 0, tags = "train"),
        offset = p_uty(default = NULL, tags = "train"),
        contrasts = p_uty(default = NULL, tags = "train"),
        optimizer = p_fct(levels = c("Nelder_Mead", "bobyqa", "nlminbwrap", "nloptwrap"), tags = "train"),
        restart_edge = p_lgl(default = FALSE, tags = "train"),
        boundary.tol = p_dbl(default = 1e-5, lower = 0, tags = "train"),
        calc.derivs = p_lgl(default = TRUE, tags = "train"),
        check.nobs.vs.rankZ = p_fct(levels = action_levels, default = "ignore", tags = "train"),
        check.nobs.vs.nlev = p_fct(levels = action_levels, default = "stop", tags = "train"),
        check.nlev.gtreq.5 = p_fct(levels = action_levels, default = "ignore", tags = "train"),
        check.nlev.gtr.1 = p_fct(levels = action_levels, default = "stop", tags = "train"),
        check.nobs.vs.nRE = p_fct(levels = action_levels, default = "stop", tags = "train"),
        check.rankX = p_fct(
          levels = c("message+drop.cols", "silent.drop.cols", "warn+drop.cols", "stop.deficient", "ignore"),
          default = "message+drop.cols", tags = "train"),
        check.scaleX = p_fct(
          levels = c("warning", "stop", "silent.rescale", "message+rescale", "warn+rescale", "ignore"),
          default = "warning", tags = "train"),
        check.formula.LHS = p_fct(levels = action_levels, default = "stop", tags = "train"),
        family = p_uty(default = "stats::binomial(link = \"logit\")", tags = "train"),
        nAGQ = p_int(default = 1L, lower = 0, tags = "train"),
        mustart = p_uty(tags = "train"),
        etastart = p_uty(tags = "train"),
        # Convergence checks
        check.conv.grad = p_uty(default = 'lme4::.makeCC("warning", tol = 2e-3, relTol = NULL)', tags = "train"),
        check.conv.singular = p_uty(default = 'lme4::.makeCC( action = "message", tol = formals(lme4::isSingular)$tol)',
          tags = "train"),
        check.conv.hess = p_uty(default = 'lme4::.makeCC(action = "warning", tol = 1e-6)', tags = "train"),
        # Additional optimizer controls
        optCtrl = p_uty(default = list(), tags = "train"),
        tolPwrss = p_uty(tags = "train"),
        compDev = p_lgl(default = TRUE, tags = "train"),
        nAGQ0initStep = p_lgl(default = TRUE, tags = "train"),
        check.response.not.const = p_uty(default = "stop", tags = "train"),

        # Prediction params
        newparams = p_uty(default = NULL, tags = "predict"),
        re.form = p_uty(default = NULL, tags = "predict"),
        random.only = p_lgl(default = FALSE, tags = "predict"),
        allow.new.levels = p_lgl(default = FALSE, tags = "predict"),
        na.action = p_uty(default = stats::na.pass, tags = "predict")
      )

      param_set$values = list(family = stats::binomial(link = "logit"))

      super$initialize(
        id = "classif.glmer",
        packages = "lme4",
        feature_types = c("numeric", "integer", "logical", "factor"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("twoclass", "weights"),
        man = "mlr3extralearners::mlr_learners_classif.glmer",
        label = "Generalized Linear Mixed Effect Regression"
      )
    }
  ),
  private = list(
    .train = function(task) {
      pars_train = self$param_set$get_values(tags = "train")

      ii = names(pars_train) %in% formalArgs(lme4::glmerControl)

      pars_ctrl = pars_train[ii]
      pars_train[ii] = NULL

      formula = pars_train$formula
      pars_train[["formula"]] = NULL

      if ("weights" %in% task$properties) {
        pars_train$weights = task$weights$weight
      }
      data = task$data()

      invoke(lme4::glmer,
        formula = formula,
        data = data,
        .args = pars_train,
        control = invoke(lme4::glmerControl, .args = pars_ctrl))
    },
    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)

      prob = invoke(
        predict,
        self$model,
        type = "response",
        newdata = newdata,
        .args = pars
      )

      # glmer counts the second level as a 'success'
      levels = levels(self$state$data_prototype[[task$target_names]])
      success = levels[[2L]]
      failure = levels[[1L]]

      response = factor(ifelse(prob >= 0.5, 1, 0), levels = c(1, 0), labels = c(success, failure))

      if (self$predict_type == "prob") {
        prob = cbind(prob, 1 - prob)
        colnames(prob) = c(success, failure)
        return(list(response = response, prob = prob))
      }
      list(response = response)
    }
  )
)

.extralrns_dict$add("classif.glmer", LearnerClassifGlmer)

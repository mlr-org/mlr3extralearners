#' @title Regression Model-based Recursive Partitioning Learner
#' @author sumny
#' @name mlr_learners_regr.mob
#'
#' @description
#' Model-based recursive partitioning algorithm.
#' Calls [partykit::mob()] from \CRANpkg{mob}.
#'
#' @templateVar id regr.mob
#' @template learner
#'
#' @references
#' `r format_bib("hothorn_2015", "hothorn_2006")`
#'
#' @export
#' @template seealso_learner
#' @examples
#' library(mlr3)
#' lm_ = function(y, x, start = NULL, weights = NULL, offset = NULL, ...) {
#'   lm(y ~ 1, ...)
#' }
#' learner = LearnerRegrMob$new()
#' learner$param_set$values$rhs = "."
#' learner$param_set$values$fit = lm_
#' learner$feature_types = c("logical", "integer", "numeric", "factor", "ordered")
#'
#' predict_fun = function(object, newdata, task, .type) {
#'   preds = predict(object, newdata = newdata, type = "response", se.fit = TRUE)
#'   cbind(preds$fit, preds$se.fit)
#' }
#' learner$param_set$values$predict_fun = predict_fun
#' task = tsk("mtcars")
#' ids = partition(task)
#' learner$train(task, row_ids = ids$train)
#' learner$predict(task, row_ids = ids$test)
LearnerRegrMob = R6Class("LearnerRegrMob", inherit = LearnerRegr,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        # missing: subset, na.action, weights (see bottom)
        rhs = p_uty(custom_check = check_character,
          tags = "train"),
        fit = p_uty(custom_check = function(x) {
          check_function(x,
            args = c("y", "x", "start", "weights", "offset", "..."))
        }, tags = c("train", "required")),
        offset = p_uty(tags = "train"),
        cluster = p_uty(tags = "train"),
        # all in mob_control()
        alpha = p_dbl(default = 0.05, lower = 0, upper = 1,
          tags = "train"),
        bonferroni = p_lgl(default = TRUE, tags = "train"),
        # minsize, minsplit, minbucket are equivalent, adaptive default
        minsize = p_int(lower = 1L, tags = "train"),
        minsplit = p_int(lower = 1L, tags = "train"),
        minbucket = p_int(lower = 1L, tags = "train"),
        maxdepth = p_int(default = Inf, lower = 0L,
          special_vals = list(Inf), tags = "train"),
        mtry = p_int(default = Inf, lower = 0L,
          special_vals = list(Inf), tags = "train"),
        trim = p_dbl(default = 0.1, lower = 0, tags = "train"),
        breakties = p_lgl(default = FALSE, tags = "train"),
        parm = p_uty(tags = "train"),
        dfsplit = p_int(lower = 0L, tags = "train"),
        prune = p_uty(tags = "train"),
        restart = p_lgl(default = TRUE, tags = "train"),
        verbose = p_lgl(default = FALSE, tags = "train"),
        caseweights = p_lgl(default = TRUE, tags = "train"),
        ytype = p_fct(default = "vector",
          levels = c("vector", "matrix", "data.frame"), tags = "train"),
        xtype = p_fct(default = "matrix",
          levels = c("vector", "matrix", "data.frame"), tags = "train"),
        terminal = p_uty(default = "object", tags = "train"),
        inner = p_uty(default = "object", tags = "train"),
        model = p_lgl(default = TRUE, tags = "train"),
        numsplit = p_fct(default = "left", levels = c("left", "center"),
          tags = "train"),
        catsplit = p_fct(default = "binary",
          levels = c("binary", "multiway"), tags = "train"),
        vcov = p_fct(default = "opg",
          levels = c("opg", "info", "sandwich"), tags = "train"),
        ordinal = p_fct(default = "chisq",
          levels = c("chisq", "max", "L2"), tags = "train"),
        nrep = p_int(default = 10000, lower = 0L, tags = "train"),
        applyfun = p_uty(tags = "train"),
        cores = p_int(default = NULL, special_vals = list(NULL),
          tags = c("train", "threads")),
        # additional arguments passed to fitting function
        additional = p_uty(custom_check = check_list,
          tags = "train"),
        # the predict function depends on the predict method of the fitting
        # function itself and can be passed via type, see predict.modelparty
        # most fitting functions should not need anything else than the model
        # itself, the newdata, the original task and a
        # predict type
        predict_fun = p_uty(custom_check = function(x) {
          check_function(x,
            args = c("object", "newdata", "task", ".type"))
        }, tags = c("predict", "required"))
      )

      ps$add_dep("nrep", on = "ordinal", cond = CondEqual$new("L2"))

      super$initialize(
        id = "regr.mob",
        param_set = ps,
        # predict and features depend on the fitting function itself
        predict_types = c("response", "se"),
        feature_types = c("logical", "integer", "numeric", "character",
          "factor", "ordered"),
        properties = "weights",
        packages = c("mlr3extralearners", "partykit", "sandwich", "coin"),
        man = "mlr3extralearners::mlr_learners_regr.mob",
        label = "Model-based Recursive Partitioning"
      )
    }
  ),

  private = list(
    .train = function(task) {
      # FIXME: check if rhs variables are present in data?
      formula = task$formula(self$param_set$values$rhs)
      pars = self$param_set$get_values(tags = "train")
      pars_control = pars[which(names(pars) %in%
        formalArgs(partykit::mob_control))]
      pars_additional = self$param_set$values$additional
      pars = pars[names(pars) %nin%
        c("rhs", names(pars_control), "additional")]
      control = invoke(partykit::mob_control, .args = pars_control)
      if ("weights" %in% task$properties) { # weights are handled here
        pars = insert_named(pars, list(weights = task$weights$weight))
      }
      # append the additional parameters to be passed to the fitting function
      pars = append(pars, pars_additional)

      # FIXME: contrasts?
      invoke(partykit::mob,
        formula = formula,
        data = task$data(),
        control = control,
        .args = pars
      )
    },

    .predict = function(task) {
      newdata = ordered_features(task, self)
      # type is the type argument passed to predict.modelparty
      # (actually a predict function used to compute the predictions as we
      # want) this should return a two column matrix holding the responses in
      # the first and the standard errors (or NA) in the second column
      # .type is then the actual predict type as set for the learner
      preds = invoke(predict, object = self$model, newdata = newdata,
        type = self$param_set$values$predict_fun, task = task,
        .type = self$predict_type)
      if (self$predict_type == "response") {
        list(response = preds[, 1L])
      } else {
        list(response = preds[, 1L],
          se = preds[, 2L])
      }
    }
  )
)

.extralrns_dict$add("regr.mob", LearnerRegrMob)

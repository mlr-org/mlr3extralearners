#' @title Regression Model-based Recursive Partitioning Learner
#' @author sumny
#' @name mlr_learners_regr.mob
#'
#' @template class_learner
#' @templateVar id regr.mob
#' @templateVar caller mob
#'
#' @references
#' Hothorn T, Zeileis A (2015).
#' “partykit: A Modular Toolkit for Recursive Partytioning in R.”
#' Journal of Machine Learning Research, 16(118), 3905-3909.
#' \url{http://jmlr.org/papers/v16/hothorn15a.html}
#'
#' Hothorn T, Hornik K, Zeileis A (2006).
#' “Unbiased Recursive Partitioning: A Conditional Inference Framework.”
#' Journal of Computational and Graphical Statistics, 15(3), 651–674.
#' \doi{10.1198/106186006x133933}
#'
#' Zeileis A, Hothorn T, Hornik K (2008).
#' “Model-Based Recursive Partitioning.”
#' Journal of Computational and Graphical Statistics, 17(2), 492–514.
#' \doi{10.1198/106186008X319331}
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerRegrMob = R6Class("LearnerRegrMob", inherit = LearnerRegr,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(list(
        # missing: subset, na.action, weights (see bottom)
        p_uty("rhs", custom_check = checkmate::check_character,
          tags = "train"),
        p_uty("fit", custom_check = function(x) {
          checkmate::check_function(x,
            args = c("y", "x", "start", "weights", "offset", "..."))
        }, tags = "train"),
        p_uty("offset", tags = "train"),
        p_uty("cluster", tags = "train"),
        # all in mob_control()
        p_dbl("alpha", default = 0.05, lower = 0, upper = 1,
          tags = "train"),
        p_lgl("bonferroni", default = TRUE, tags = "train"),
        # minsize, minsplit, minbucket are equivalent, adaptive default
        p_int("minsize", lower = 1L, tags = "train"),
        p_int("minsplit", lower = 1L, tags = "train"),
        p_int("minbucket", lower = 1L, tags = "train"),
        p_int("maxdepth", default = Inf, lower = 0L,
          special_vals = list(Inf), tags = "train"),
        p_int("mtry", default = Inf, lower = 0L,
          special_vals = list(Inf), tags = "train"),
        p_dbl("trim", default = 0.1, lower = 0, tags = "train"),
        p_lgl("breakties", default = FALSE, tags = "train"),
        p_uty("parm", tags = "train"),
        p_int("dfsplit", lower = 0L, tags = "train"),
        p_uty("prune", tags = "train"),
        p_lgl("restart", default = TRUE, tags = "train"),
        p_lgl("verbose", default = FALSE, tags = "train"),
        p_int("maxvar", lower = 1L, tags = "train"),
        p_lgl("caseweights", default = TRUE, tags = "train"),
        p_fct("ytype", default = "vector",
          levels = c("vector", "matrix", "data.frame"), tags = "train"),
        p_fct("xtype", default = "matrix",
          levels = c("vector", "matrix", "data.frame"), tags = "train"),
        p_uty("terminal", default = "object", tags = "train"),
        p_uty("inner", default = "object", tags = "train"),
        p_lgl("model", default = TRUE, tags = "train"),
        p_fct("numsplit", default = "left", levels = c("left", "center"),
          tags = "train"),
        p_fct("catsplit", default = "binary",
          levels = c("binary", "multiway"), tags = "train"),
        p_fct("vcov", default = "opg",
          levels = c("opg", "info", "sandwich"), tags = "train"),
        p_fct("ordinal", default = "chisq",
          levels = c("chisq", "max", "L2"), tags = "train"),
        p_int("nrep", default = 10000, lower = 0L, tags = "train"),
        p_uty("applyfun", tags = "train"),
        p_int("cores", default = NULL, special_vals = list(NULL),
          tags = "train"),
        # additional arguments passed to fitting function
        p_uty("additional", custom_check = checkmate::check_list,
          tags = "train"),
        # the predict function depends on the predict method of the fitting
        # function itself and can be passed via type, see predict.modelparty
        # most fitting functions should not need anything else than the model
        # itself, the newdata, the original task and a
        # predict type
        p_uty("predict_fun", custom_check = function(x) {
          checkmate::check_function(x,
            args = c("object", "newdata", "task", ".type"))
        }, tags = "predict")
      )
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
        packages = c("partykit", "sandwich", "coin"),
        man = "mlr3extralearners::mlr_learners_regr.mob"
      )
    }
  ),

  private = list(
    .train = function(task) {

      # FIXME: check if rhs variables are present in data?
      formula = task$formula(self$param_set$values$rhs)
      pars = self$param_set$get_values(tags = "train")
      pars_control = pars[which(names(pars) %in%
                                  methods::formalArgs(partykit::mob_control))]
      pars_additional = self$param_set$values$additional
      pars = pars[names(pars) %nin%
        c("rhs", names(pars_control), "additional")]
      control = mlr3misc::invoke(partykit::mob_control, .args = pars_control)
      if ("weights" %in% task$properties) { # weights are handled here
        pars = mlr3misc::insert_named(pars, list(weights = task$weights$weight))
      }
      # append the additional parameters to be passed to the fitting function
      pars = append(pars, pars_additional)

      # FIXME: contrasts?
      mlr3misc::invoke(partykit::mob,
        formula = formula,
        data = task$data(),
        control = control,
        .args = pars
      )
    },

    .predict = function(task) {
      newdata = task$data(cols = task$feature_names)
      # type is the type argument passed to predict.modelparty
      # (actually a predict function used to compute the predictions as we
      # want) this should return a two column matrix holding the responses in
      # the first and the standard errors (or NA) in the second column
      # .type is then the actual predict type as set for the learner
      preds = mlr3misc::invoke(predict, object = self$model, newdata = newdata,
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

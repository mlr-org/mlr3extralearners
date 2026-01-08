#' @title Classification Generalized Additive Model Learner
#' @author pierrecamilleri
#' @name mlr_learners_classif.gam
#'
#' @description
#' Generalized additive models.
#' Calls [mgcv::gam()] from package \CRANpkg{mgcv} with `family` set to `binomial`.
#'
#' Multilabel classification is not implemented yet.
#'
#' @inheritSection mlr_learners_regr.gam Formula
#' @inheritSection mlr_learners_regr.gam Offset
#'
#' @template learner
#' @templateVar id classif.gam
#'
#' @references
#' `r format_bib("hastie2017generalized", "wood2012mgcv")`
#'
#' @examplesIf learner_is_runnable("classif.gam")
#' # simple example
#' t = tsk("spam")$filter(1:1000)
#' l = lrn("classif.gam")
#' l$param_set$set_values(
#'   formula = type ~ s(george, k = 3) + s(charDollar, k = 3) + s(edu)
#' )
#' l$train(t)
#' l$model
#' @export
LearnerClassifGam = R6Class("LearnerClassifGam",
  inherit = LearnerClassif,

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
        irls.reg = p_dbl(default = 0.0, lower = 0, tags = "train"),
        epsilon = p_dbl(default = 1e-07, lower = 0, tags = "train"),
        maxit = p_int(default = 200L, tags = "train"),
        trace = p_lgl(default = FALSE, tags = "train"),
        mgcv.tol = p_dbl(default = 1e-07, lower = 0, tags = "train"),
        mgcv.half = p_int(default = 15L, lower = 0L, tags = "train"),
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
        ncv.threads = p_int(default = 1, lower = 1, tags = "train"),
        # from mgcv::predict.gam()
        block.size = p_int(default = 1000L, tags = "predict"),
        unconditional = p_lgl(default = FALSE, tags = "predict")
      )

      super$initialize(
        id = "classif.gam",
        packages = c("mlr3extralearners", "mgcv"),
        feature_types = c("logical", "integer", "numeric", "factor"),
        predict_types = c("prob", "response"),
        param_set = param_set,
        properties = c("twoclass", "weights", "offset"),
        man = "mlr3extralearners::mlr_learners_classif.gam",
        label = "Generalized Additive Model"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      control_pars = pars[names(pars) %in% formalArgs(mgcv::gam.control)]
      pars = pars[names(pars) %nin% formalArgs(mgcv::gam.control)]

      data = task$data(cols = c(task$feature_names, task$target_names))
      pars$weights = private$.get_weights(task)
      pars$family = "binomial"

      if ("offset" %in% task$properties) {
        pars$offset = task$offset$offset
      }

      if (is.null(pars$formula)) {
        # GLM-like formula, no smooth terms
        formula = stats::as.formula(paste(
          task$target_names,
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

      invoke(
        mgcv::gam,
        data = data,
        .args = pars,
        control = control_obj
      )
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      lvls = task$class_names
      newdata = ordered_features(task, self)

      prob = invoke(
        predict,
        self$model,
        newdata = newdata,
        type = "response",
        newdata.guaranteed = TRUE,
        .args = pars
      )
      prob = cbind(as.matrix(1 - prob), as.matrix(prob))
      colnames(prob) = lvls
      if (self$predict_type == "response") {
        i = max.col(prob, ties.method = "random")
        response = factor(colnames(prob)[i], levels = lvls)
        list(response = response)
      } else if (self$predict_type == "prob") {
        list(prob = prob)
      }
    }
  )
)

.extralrns_dict$add("classif.gam", LearnerClassifGam)

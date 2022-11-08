#' @title Classification Generalized Additive Model Learner
#' @author JazzyPierrot
#' @name mlr_learners_classif.gam
#'
#' @description
#' Generalized additive models.
#' Calls [mgcv::gam()] from package \CRANpkg{mgcv}.
#'
#' Multiclass classification is not implemented yet.
#'
#' @section Formula:
#' A gam formula specific to the task at hand is required for the `formula`
#' parameter (see example and `?mgcv::formula.gam`). Beware, if no formula is
#' provided, a fallback formula is used that will make the gam behave like a
#' glm (this behavior is required for the unit tests). Only features specified
#' in the formula will be used, superseding columns with col_roles "feature"
#' in the task.
#'
#' @template learner
#' @templateVar id classif.gam
#'
#' @references
#' `r format_bib("hastie2017generalized", "wood2012mgcv")`
#'
#' @examples
#'
#' # simple example
#' t = mlr3::tsk("spam")
#' l = mlr3::lrn("classif.gam")
#' l$param_set$values$formula = type ~ s(george) + s(charDollar) + s(edu) + ti(george, edu)
#' l$train(t)
#' l$model
#' @export
LearnerClassifGam = R6Class("LearnerClassifGam",
  inherit = LearnerClassif,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        formula = p_uty(tags = "train"),
        offset = p_uty(default = NULL, tags = "train"),
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
        outerPIsteps = p_int(default = 0L, lower = 0L, tags = "train"),
        idLinksBases = p_lgl(default = TRUE, tags = "train"),
        scalePenalty = p_lgl(default = TRUE, tags = "train"),
        efs.lspmax = p_int(default = 15L, lower = 0L, tags = "train"),
        efs.tol = p_dbl(default = .1, lower = 0, tags = "train"),
        scale.est = p_fct(levels = c("fletcher", "pearson", "deviance"), default = "fletcher",
          tags = "train"),
        edge.correct = p_lgl(default = FALSE, tags = "train"),
        nei = p_uty(tags = "train"),
        ncv.threads = p_int(default = 1, lower = 1, tags = "train"),
        # prediction
        block.size = p_int(default = 1000L, tags = "predict"),
        unconditional = p_lgl(default = FALSE, tags = "predict")
      )

      super$initialize(
        id = "classif.gam",
        packages = c("mlr3extralearners", "mgcv"),
        feature_types = c("logical", "integer", "numeric"),
        predict_types = c("prob", "response"),
        param_set = ps,
        properties = c("twoclass", "weights"),
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
      if ("weights" %in% task$properties) {
        pars$weights = task$weights$weight
      }
      if (is.null(pars$formula)) {
        formula = stats::as.formula(paste(
          task$target_names,
          "~",
          paste(task$feature_names, collapse = " + ")
        ))
        pars$formula = formula
      }
      pars$family = "binomial"

      if (length(control_pars)) {
        control_obj = invoke(mgcv::gam.control, .args = control_pars)
        pars = pars[!(names(pars) %in% names(control_pars))]
      } else {
        control_obj = mgcv::gam.control()
      }

      invoke(
        mgcv::gam,
        data = data,
        .args = pars,
        control = control_obj
      )
    },

    .predict = function(task) {
      # get parameters with tag "predict"

      pars = self$param_set$get_values(tags = "predict")
      lvls = task$class_names

      # get newdata and ensure same ordering in train and predict
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

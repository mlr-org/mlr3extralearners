#' @title Regression Generalized Additive Model Learner
#' @author JazzyPierrot
#' @name mlr_learners_regr.gam
#'
#' @description
#' Generalized additive models.
#' Calls [mgcv::gam] from package \CRANpkg{mgcv}.
#'
#' A gam formula specific to the task at hand is required for the `formula`
#' parameter (see example and `?mgcv::formula.gam`). Beware, if no formula is provided, a fallback formula is
#' used that will make the gam behave like a glm (this behavior is required
#' for the unit tests). Only features specified in the formula will be used,
#' superseding columns with col_roles "feature" in the task.
#'
#'
#' @template class_learner
#' @templateVar id regr.gam
#' @templateVar caller gam
#'
#' @references
#'
#' Wood, S.N. (2017) Generalized Additive Models: An Introduction with R (2nd edition). Chapman
#' & Hall/ CRC, Boca Raton, Florida
#'
#' Key Reference on GAMs generally:
#'
#' Hastie (1993) in Chambers and Hastie (1993) Statistical Models in S. Chapman
#' and Hall.
#'
#' Hastie and Tibshirani (1990) Generalized Additive Models. Chapman and Hall.
#'
#' @template seealso_learner
#' @template example
#'
#' @examples
#'
#' # simple example
#' t = mlr3::tsk("mtcars")
#' l = mlr3::lrn("regr.gam")
#' l$param_set$values$formula = mpg ~ cyl + am + s(disp) + s(hp)
#' l$train(t)
#' l$model
#'
#' @export
LearnerRegrGam = R6Class("LearnerRegrGam",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(list(
        ParamFct$new(
          "family",
          default = "gaussian",
          levels = c("gaussian", "poisson"),
          tags = "train"
        ),
        ParamUty$new("formula", default = NULL, tags = "train"),
        ParamUty$new("offset", default = NULL, tags = "train"),
        ParamFct$new(
          "method",
          levels = c("GCV.Cp", "GACV.Cp", "REML", "P-REML", "ML", "P-ML"),
          default = "GCV.Cp",
          tags = "train"
        ),
        ParamUty$new("optimizer", default = c("outer", "newton"), tags = "train"),
        ParamDbl$new("scale", default = 0, tags = "train"),
        ParamLgl$new("select", default = FALSE, tags = "train"),
        ParamUty$new("knots", default = NULL, tags = "train"),
        ParamUty$new("sp", default = NULL, tags = "train"),
        ParamUty$new("min.sp", default = NULL, tags = "train"),
        ParamUty$new("H", default = NULL, tags = "train"),
        ParamDbl$new("gamma", default = 1, lower = 1, tags = "train"),
        ParamUty$new("paraPen", default = NULL, tags = "train"),
        ParamUty$new("G", default = NULL, tags = "train"),
        ParamUty$new("in.out", default = NULL, tags = "train"),
        ParamLgl$new("drop.unused.levels", default = TRUE, tags = "train"),
        ParamLgl$new("drop.intercept", default = FALSE, tags = "train"),
        ParamInt$new("nthreads", default = 1L, lower = 1L, tags = c("train", "control")),
        ParamDbl$new("irls.reg", default = 0.0, lower = 0, tags = c("train", "control")),
        ParamDbl$new("epsilon", default = 1e-07, lower = 0, tags = c("train", "control")),
        ParamInt$new("maxit", default = 200L, tags = c("train", "control")),
        ParamLgl$new("trace", default = FALSE, tags = c("train", "control")),
        ParamDbl$new("mgcv.tol", default = 1e-07, lower = 0, tags = c("train", "control")),
        ParamInt$new("mgcv.half", default = 15L, lower = 0L, tags = c("train", "control")),
        ParamDbl$new(
          "rank.tol",
          default = .Machine$double.eps^0.5,
          lower = 0,
          tags = c("train", "control")
        ),
        ParamUty$new("nlm", default = list(), tags = c("train", "control")),
        ParamUty$new("optim", default = list(), tags = c("train", "control")),
        ParamUty$new("newton", default = list(), tags = c("train", "control")),
        ParamInt$new("outerPIsteps", default = 0L, lower = 0L, tags = c("train", "control")),
        ParamLgl$new("idLinksBases", default = TRUE, tags = c("train", "control")),
        ParamLgl$new("scalePenalty", default = TRUE, tags = c("train", "control")),
        ParamInt$new("efs.lspmax", default = 15L, lower = 0L, tags = c("train", "control")),
        ParamDbl$new("efs.tol", default = .1, lower = 0, tags = c("train", "control")),
        ParamFct$new(
          "scale.est",
          levels = c("fletcher", "pearson", "deviance"),
          default = "fletcher",
          tags = c("train", "control")
        ),
        ParamLgl$new("edge.correct", default = FALSE, tags = c("train", "control")),
        ParamInt$new("block.size", default = 1000L, tags = "predict"),
        ParamLgl$new("unconditional", default = FALSE, tags = "predict")
      ))

      super$initialize(
        id = "regr.gam",
        packages = "mgcv",
        feature_types = c("logical", "integer", "numeric"),
        predict_types = c("response", "se"),
        param_set = ps,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_regr.gam"
      )
    }


  ),

  private = list(
    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")

      # set column names to ensure consistency in fit and predict
      self$state$feature_names = task$feature_names

      data = task$data(cols = c(task$feature_names, task$target_names))
      if ("weights" %in% task$properties) {
        pars = insert_named(pars, list(weights = task$weights$weight))
      }

      if (is.null(pars$formula)) {
        formula = stats::as.formula(paste(
          task$target_names,
          "~",
          paste(task$feature_names, collapse = " + ")
        ))
        pars$formula = formula
      }

      control_pars = self$param_set$get_values(tags = "control")
      if (length(control_pars)) {
        control_obj = mlr3misc::invoke(mgcv::gam.control, .args = control_pars)
        pars = pars[!names(pars) %in% names(control_pars)]
      } else {
        control_obj = mgcv::gam.control()
      }

      mlr3misc::invoke(
        mgcv::gam,
        data = data,
        .args = pars,
        control = control_obj
      )
    },

    .predict = function(task) {
      # get parameters with tag "predict"

      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = task$data(cols = self$state$feature_names)

      include_se = (self$predict_type == "se")

      preds = mlr3misc::invoke(
        predict,
        self$model,
        newdata = newdata,
        type = "response",
        newdata.guaranteed = TRUE,
        se.fit = include_se,
        .args = pars
      )

      if (include_se) {
        list(response = preds$fit, se = preds$se)
      } else {
        list(response = preds)
      }
    }
  )
)

.extralrns_dict$add("regr.gam", LearnerRegrGam)

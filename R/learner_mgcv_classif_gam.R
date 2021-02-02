#' @title Classification Generalized Additive Model Learner
#' @author JazzyPierrot
#' @name mlr_learners_classif.gam
#'
#' @template class_learner
#' @templateVar id classif.gam
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
#' @export
LearnerClassifGam = R6Class("LearnerClassifGam",
  inherit = LearnerClassif,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(list(
        ParamUty$new("formula", tags = "train"),
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
        ParamDbl$new("gamma", default = 1, tags = "train"),
        ParamLgl$new("fit", default = TRUE, tags = "train"),
        ParamUty$new("paraPen", default = NULL, tags = "train"),
        ParamUty$new("G", default = NULL, tags = "train"),
        ParamUty$new("in.out", default = NULL, tags = "train"),
        ParamLgl$new("drop.unused.levels", default = TRUE, tags = "train"),
        ParamLgl$new("drop.intercept", default = FALSE, tags = "train") #,
        # ParamInt$new("nthreads", default = 1L, lower = 1L, tags = "control"),
        # ParamDbl$new("irls.reg", default = 0.0, tags = "control"),
        # ParamDbl$new("epsilon", default = 1e-07, tags = "control"),
        # ParamInt$new("maxit", default = 200L, tags = "control")
        ))

    super$initialize(
      id = "classif.gam",
      packages = "mgcv",
      feature_types = c("logical", "integer", "numeric"),
      predict_types = c("prob"),
      param_set = ps,
      properties = c("twoclass", "weights"),
      man = "mlr3extralearners::mlr_learners_classif.gam"
    )
  }
),

private = list(

  .train = function(task) {

    pars = self$param_set$get_values(tags = "train")

    # set column names to ensure consistency in fit and predict
    self$state$feature_names = task$feature_names

    data = as.data.frame(task$data(cols = c(task$feature_names, task$target_names)))
    if ("weights" %in% task$properties) {
      pars$weights = task$weights$weight
    }
    if (is.null(pars$formula)) {
      formula = as.formula(paste(
          task$target_names,
          "~",
          paste(task$feature_names, collapse = " + ")
          ))
      pars$formula = formula
    }
    if (is.null(pars$family)) {
      pars$family = "binomial"
    }

#     control_pars = mlr3misc::invoke(
#       mgcv::gam.control,
#       .args = self$param_set$get_values(tags = "control")
#     )
#
    mlr3misc::invoke(
      mgcv::gam,
      data = data,
      .args = pars #,
#      control = control_pars
    )
  },

  .predict = function(task) {
    # get parameters with tag "predict"
    pars = self$param_set$get_values(tags = "predict")

    # get newdata and ensure same ordering in train and predict
    newdata = as.data.frame(task$data(cols = self$state$feature_names))

    prob = mlr3misc::invoke(
      predict,
      self$model,
      newdata = newdata,
      type = "response",
      .args = pars
    )
    prob = cbind(as.matrix(1 - prob), as.matrix(prob))
    colnames(prob) = levels(task$data(cols = task$target_names)[[1]])
    list(prob = prob)
  }
)
)

.extralrns_dict$add("classif.gam", LearnerClassifGam)
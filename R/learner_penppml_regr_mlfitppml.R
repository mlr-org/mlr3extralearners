#' @title General Penalized PPML Estimation
#' @author Zhaolin Xu
#' @name mlr_learners_regr.mlfitppml
#'
#' @description
#' General Penalized PPML Estimation. Calls [penppml::mlfitppml] from package \CRANpkg{penppml}.
#'
#' @section Formula:
#' ?
#'
#'
#'
#' @template learner
#' @templateVar id regr.mlfitppml
#'
#' @references
#' ?`
#'
#' @examples
#' ?
#'
#'
#' @export
LearnerRegrMlfitppml = R6Class("LearnerRegrMlfitppml",
  inherit = LearnerRegr,
  public = list(
  initialize = function() {
   param_set = ps(
     fixed = p_uty(default = NULL, tags = "train"),
     cluster = p_uty(default = NULL, tags = "train"),
     penalty = p_fct(default = "lasso", levels = c("lasso", "ridge"), tags = "train"),
     method = p_fct(default = "bic", levels = c("plugin", "bic"), tags = "train"),
     post = p_lgl(default = TRUE, tags = "train"),
     xval = p_lgl(default = FALSE, tags = "train"),
     lambdas = p_uty(tags = "train"),
     tol = p_dbl(default = 1e-08, tags = "train"),
     hdfetol = p_dbl(default = 1e-04, tags = "train"),
     colcheck_x = p_lgl(default = FALSE, tags = "train"),
     colcheck_x_fes = p_lgl(default = TRUE, tags = "train"),
     #IDs = p_uty(default = NULL, tags = "train"),
     verbose = p_lgl(default = FALSE, tags = "train"),
     standardize = p_lgl(default = TRUE, tags = "train"),
     vcv = p_lgl(default = TRUE, tags = "train"),
     phipost = p_lgl(default = TRUE, tags = "train"),
     penweights = p_uty(default = NULL, tags = "train"),
     K = p_dbl(default = 15, tags = "train"),
     gamma_val = p_uty(default = NULL, tags = "train"),
     mu = p_uty(default = NULL, tags = "train")
   )
   super$initialize(
     id = "regr.mlfitppml",
     feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
     predict_types = "response",
     packages = c("mlr3extralearners", "penppml"),
     param_set = param_set,
     label = "General Penalized PPML Estimation",
     man = "mlr3::mlr_learners_regr.mlfitppml"
   )
  }
  ),
  private = list(
  .train = function(task) {
   pv = self$param_set$get_values(tags = "train")
   #if (is.null(IDs)) IDs = c(1:nrow(task$data()))
   invoke(
     penppml::mlfitppml,
     data = task$data(),
     dep = task$target_names,
     indep = setdiff(task$feature_names, c(pv$fixed, pv$cluster)),
     #IDs = IDs,
     .args = pv
   )
  },
  .predict = function(task) {
   # ensure same column order in train and predict
   newdata = mlr3extralearners:::ordered_features(task, self)
   response = invoke(predict, self$model, newdata = newdata, .args = pv)
   list(response = unname(response))
  }
  )
)





.extralrns_dict$add("regr.mlfitppml", LearnerRegrMlfitppml)

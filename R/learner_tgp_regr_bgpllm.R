#' @title Gaussian Process Regression Learner
#' @author annanzrv
#' @name mlr_learners_regr.bgpllm
#'
#' @description
#' Gaussian Process with jumps to the LLM.
#' Calls [tgp::bgpllm()] \CRANpkg{tgp}.
#'
#' @section Initial parameter values:
#' - `pred.n` set to `FALSE` to skip prediction during training yielding faster implementation.
#' - `verb` set to `0L` to turn off verbosity.
#'
#' @templateVar id regr.bgpllm
#' @template learner
#'
#' @references
#' `r format_bib("gramacy2007tgp", "gramacy2010tgp")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrBgpllm = R6Class("LearnerRegrBgpllm",
  inherit = LearnerRegr,
  public = list(
   #' @description
   #' Creates a new instance of this [R6][R6::R6Class] class.
   initialize = function() {
     param_set = ps(
       bprior = p_fct(levels = c("b0", "b0not", "bflat", "bmle", "bmznot", "bmzt"), default = "bflat", tags = "train"),
       meanfn = p_fct(levels = c("constant", "linear"), default = "linear", tags = "train"),
       corr   = p_fct(levels = c("exp", "expsep", "matern", "sim"), default = "expsep", tags = "train"),
       gamma  = p_uty(default = c(10, 0.2, 0.7), custom_check = check_gamma_param, tags = c("train")),
       BTE    = p_uty(default = c(1000, 4000, 2), custom_check = function(p) checkmate::checkNumeric(p, len = 3), tags = c("train", "predict")),
       R      = p_int(default = 1, lower = 1, tags = c("train", "predict")),
       m0r1   = p_lgl(default = TRUE, tags = "train"),
       itemps = p_uty(default = NULL, tags = "train"),
       pred.n = p_lgl(default = TRUE, tags = c("train", "predict")),
       krige  = p_lgl(default = TRUE, tags = c("train", "predict")),
       zcov   = p_lgl(default = FALSE, tags = c("train", "predict")),
       Ds2x   = p_lgl(default = FALSE, tags = c("train", "predict")),
       improv = p_lgl(default = FALSE, tags = c("train", "predict")),
       sens.p = p_uty(default = NULL, tags = c("train", "predict")),
       nu     = p_dbl(default = 1.5, tags = "train", depends = quote(corr == "matern")),
       trace  = p_lgl(default = FALSE, tags = c("train", "predict")),
       verb   = p_int(default = 1L, lower = 0L, upper = 4L, tags = c("train", "predict")),
       MAP    = p_lgl(default = TRUE, tags = "predict")
     )

     param_set$values = list(pred.n = FALSE, verb = 0L)

     super$initialize(
       id = "regr.bgpllm",
       packages = "tgp",
       feature_types = c("integer", "numeric"),
       predict_types = c("response"),
       param_set = param_set,
       man = "mlr3extralearners::mlr_learners_regr.bgpllm",
       label = "Gaussian Process"
     )
   }
  ),
  private = list(
   .train = function(task) {
     pars = self$param_set$get_values(tags = "train")
     data = task$data()
     x = task$data(cols = task$feature_names)
     z = data[[task$target_names]]
     invoke(
       tgp::bgpllm,
       X = x,
       Z = z,
       .args = pars
     )
   },
   .predict = function(task) {
     # get parameters with tag "predict"
     pars = self$param_set$get_values(tags = "predict")
     # get newdata and ensure same ordering in train and predict
     newdata = ordered_features(task, self)
     pred = invoke(predict, self$model, XX = newdata, .args = pars)
     list(response = pred$ZZ.km)
   }
  )
)

.extralrns_dict$add("regr.bgpllm", LearnerRegrBgpllm)

check_gamma_param = function(p) {
  base_check <- checkmate::checkNumeric(p, len = 3, any.missing = FALSE)
  if (!isTRUE(base_check)) return(base_check)
  if ((p[[2]] + p[[3]]) >= 1) {
    return("The sum of the last two elements must be less than 1.")
  }
  return(TRUE)
}

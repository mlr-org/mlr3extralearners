#' @title Regression Treed Constant Model Learner
#' @author annanzrv
#' @name mlr_learners_regr.bcart
#'
#' @description
#' Nonparametric and nonstationary bayesian treed constant model.
#' Calls [tgp::bcart()] \CRANpkg{tgp}.
#'
#' @section Initial parameter values:
#' - `pred.n` set to `FALSE` to skip prediction during training yielding faster implementation.
#' - `verb` set to `0L` to turn off verbosity.
#'
#' @templateVar id regr.bcart
#' @template learner
#'
#' @references
#' `r format_bib("gramacy2007tgp", "gramacy2010tgp")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrBcart = R6Class("LearnerRegrBcart",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        bprior = p_fct(levels = c("b0", "b0not", "bflat", "bmle", "bmznot", "bmzt"), default = "bflat", tags = "train"),
        tree   = p_uty(default = c(0.5, 2), custom_check = function(p) checkmate::checkNumeric(p, len = 2), tags = c("train", "predict")),
        BTE    = p_uty(default = c(2000, 7000, 2), custom_check = function(p) checkmate::checkNumeric(p, len = 3), tags = c("train", "predict")),
        R      = p_int(default = 1, lower = 1, tags = c("train", "predict")),
        m0r1   = p_lgl(default = TRUE, tags = "train"),
        itemps = p_uty(default = NULL, tags = "train"),
        pred.n = p_lgl(default = TRUE, tags = c("train", "predict")),
        krige  = p_lgl(default = TRUE, tags = c("train", "predict")),
        zcov   = p_lgl(default = FALSE, tags = c("train", "predict")),
        Ds2x   = p_lgl(default = FALSE, tags = c("train", "predict")),
        improv = p_lgl(default = FALSE, tags = c("train", "predict")),
        sens.p = p_uty(default = NULL, tags = c("train", "predict")),
        trace  = p_lgl(default = FALSE, tags = c("train", "predict")),
        verb   = p_int(default = 1L, lower = 0L, upper = 4L, tags = c("train", "predict")),
        MAP    = p_lgl(default = TRUE, tags = "predict")
      )

      param_set$values = list(pred.n = FALSE, verb = 0L)

      super$initialize(
        id = "regr.bcart",
        packages = "tgp",
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "se"),
        param_set = param_set,
        man = "mlr3extralearners::mlr_learners_regr.bcart",
        label = "Bayesian CART"
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
        tgp::bcart,
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
      pred = invoke(
        predict,
        self$model,
        XX = newdata[, task$feature_names, with = FALSE],
        .args = pars
      )
      if (self$predict_type == "response") {
        list(response = pred$ZZ.km)
      } else {
        list(response = pred$ZZ.km, se = sqrt(pred$ZZ.ks2))
      }
    }
  )
)

.extralrns_dict$add("regr.bcart", LearnerRegrBcart)

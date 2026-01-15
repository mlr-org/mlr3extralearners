#' @title Regression Bayesian Gaussian Process LLM Learner
#' @author awinterstetter
#' @name mlr_learners_regr.bgpllm
#'
#' @description
#' Bayesian Gaussian process regression with jumps to the limiting linear model.
#' Calls [tgp::bgpllm()] from \CRANpkg{tgp}.
#' For the predicted mean ZZ.km and for the predicted variance ZZ.ks2 are chosen.
#'
#' @section Initial parameter values:
#' * `verb` is initialized to `0` to silence printing.
#' * `pred.n` is initialized to `FALSE` to skip prediction during training.
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
        bprior = p_fct(default = "bflat", levels = c("b0", "b0not", "bflat", "bmle", "bmznot", "bmzt"), tags = "train"),
        BTE = p_uty(default = c(2000L, 4000L, 2L), tags = c("train", "predict"), custom_check = mlr3misc::crate({function(x) {
          if (!checkmate::test_integerish(x, len = 3, lower = 0)) {
            return("`BTE` must be an integerish vector of length 3 with non-negative entries")
          }
          TRUE
        }})),
        corr   = p_fct(default = "expsep", levels = c("exp", "expsep", "matern", "sim"), tags = "train"),
        Ds2x   = p_lgl(default = FALSE, tags = c("train", "predict")),
        gamma = p_uty(default = c(10, 0.2, 0.7), tags = "train", custom_check = mlr3misc::crate({function(x) {
          if (!checkmate::test_numeric(x, len = 3, lower = 0)) {
            return("`gamma` must be a numeric vector of length 3 with non-negative entries")
          }
          if (x[2] > 1 || x[3] > 1) {
            return("`gamma[2]` and `gamma[3]` must be <= 1")
          }
          TRUE
        }})),
        improv = p_lgl(default = FALSE, tags = c("train", "predict")),
        itemps = p_uty(default = NULL, tags = "train"),
        krige  = p_lgl(default = TRUE, tags = c("train", "predict")),
        m0r1   = p_lgl(default = TRUE, tags = "train"),
        MAP    = p_lgl(default = TRUE, tags = "predict"),
        meanfn = p_fct(default = "linear", levels = c("constant", "linear"), tags = "train"),
        pred.n = p_lgl(init = FALSE, tags = c("train", "predict")),
        nu     = p_dbl(default = 1.5, tags = "train", depends = quote(corr == "matern")),
        R      = p_int(default = 1L, lower = 1L, tags = c("train", "predict")),
        trace  = p_lgl(default = FALSE, tags = c("train", "predict")),
        verb   = p_int(init = 0L, lower = 0L, upper = 4L, tags = c("train", "predict")),
        zcov   = p_lgl(default = FALSE, tags = c("train", "predict"))
      )

      super$initialize(
        id = "regr.bgpllm",
        packages = c("mlr3extralearners", "tgp"),
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "se"),
        param_set = param_set,
        man = "mlr3extralearners::mlr_learners_regr.bgpllm",
        label = "Bayesian Gaussian Process with Limiting Linear Model"
      )
    }
  ),
  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")

      x = as_numeric_matrix(task$data(cols = task$feature_names))
      y = task$truth()

      mlr3misc::invoke(
        tgp::bgpllm,
        X = x,
        Z = y,
        .args = pars
      )
    },
    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")

      newdata = as_numeric_matrix(ordered_features(task, self))

      if (self$predict_type == "se") {
        pars$krige = TRUE
      }

      pred = mlr3misc::invoke(
        predict,
        self$model,
        XX = newdata,
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

.extralrns_dict$add("regr.bgpllm", LearnerRegrBgpllm)

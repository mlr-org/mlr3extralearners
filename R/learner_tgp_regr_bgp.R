#' @title Regression Bayesian Gaussian Process Learner
#' @author awinterstetter
#' @name mlr_learners_regr.bgp
#'
#' @description
#' Bayesian Gaussian process regression.
#' Calls [tgp::bgp()] from \CRANpkg{tgp}.
#'
#' @section Initial parameter values:
#' * `BTE` is initialized to `c(200, 400, 2)` to keep runtimes manageable in tests.
#' * `pred.n` is initialized to `FALSE` to avoid computing predictions during training.
#' * `verb` is initialized to `0` to silence printing.
#'
#' @templateVar id regr.bgp
#' @template learner
#'
#' @references
#' `r format_bib("gramacy2007tgp", "gramacy2010tgp")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrBgp = R6Class("LearnerRegrBgp",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        meanfn = p_fct(default = "linear", levels = c("constant", "linear"), tags = "train"),
        bprior = p_fct(default = "bflat", levels = c("b0", "b0not", "bflat", "bmle", "bmznot", "bmzt"), tags = "train"),
        corr = p_fct(default = "expsep", levels = c("exp", "expsep", "matern", "sim"), tags = "train"),
        BTE = p_uty(
          default = c(1000L, 4000L, 2L),
          tags = c("train", "predict"),
          custom_check = mlr3misc::crate(function(x) {
            if (!checkmate::test_integerish(x, len = 3, lower = 0)) {
              return("`BTE` must be an integerish vector of length 3 with non-negative entries")
            }
            TRUE
          })
        ),
        R = p_int(default = 1L, lower = 1L, tags = c("train", "predict")),
        m0r1 = p_lgl(default = TRUE, tags = "train"),
        itemps = p_uty(default = NULL, tags = "train"),
        krige = p_lgl(default = TRUE, tags = c("train", "predict")),
        zcov = p_lgl(default = FALSE, tags = c("train", "predict")),
        Ds2x = p_lgl(default = FALSE, tags = c("train", "predict")),
        improv = p_lgl(default = FALSE, tags = c("train", "predict")),
        sens.p = p_uty(default = NULL, tags = c("train", "predict")),
        nu = p_dbl(default = 1.5, tags = "train", depends = quote(corr == "matern")),
        MAP = p_lgl(default = TRUE, tags = "predict"),
        trace = p_lgl(default = FALSE, tags = c("train", "predict")),
        verb = p_int(default = 1L, lower = 0L, upper = 4L, tags = c("train", "predict"))
      )

      param_set$values = list(
        BTE = c(200L, 400L, 2L),
        verb = 0L
      )

      super$initialize(
        id = "regr.bgp",
        packages = c("mlr3extralearners", "tgp"),
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "se"),
        param_set = param_set,
        man = "mlr3extralearners::mlr_learners_regr.bgp",
        label = "Bayesian Gaussian Process"
      )
    }
  ),
  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      data = as_numeric_matrix(task$data(cols = task$feature_names))
      target = task$truth()

      pars$pred.n = FALSE
      if (!is.null(pars$BTE)) {
        pars$BTE = as.integer(pars$BTE)
      }

      mlr3misc::invoke(
        tgp::bgp,
        X = data,
        Z = target,
        .args = pars
      )
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = as_numeric_matrix(ordered_features(task, self))

      pars$pred.n = FALSE
      if (!is.null(pars$BTE)) {
        pars$BTE = as.integer(pars$BTE)
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
        if (is.null(pred$ZZ.ks2)) {
          stop("Standard errors requested but `ZZ.ks2` was not returned; try setting `krige = TRUE`.")
        }
        list(response = pred$ZZ.km, se = sqrt(pred$ZZ.ks2))
      }
    }
  )
)

.extralrns_dict$add("regr.bgp", LearnerRegrBgp)

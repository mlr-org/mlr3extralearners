#' @title Regression Bayesian Treed Gaussian Process Learner
#' @author awinterstetter
#' @name mlr_learners_regr.btgp
#'
#' @description
#' Bayesian treed Gaussian process regression model.
#' Calls [tgp::btgp()] from \CRANpkg{tgp}.
#' For the predicted mean ZZ.km and for the predicted variance ZZ.ks2 are chosen.
#'
#' @section Initial parameter values:
#' * `verb` is initialized to `0` to silence printing.
#'
#' @templateVar id regr.btgp
#' @template learner
#'
#' @references
#' `r format_bib("gramacy2007tgp", "gramacy2010tgp")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrBtgp = R6Class("LearnerRegrBtgp",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        meanfn = p_fct(default = "linear", levels = c("constant", "linear"), tags = "train"),
        bprior = p_fct(default = "bflat", levels = c("b0", "b0not", "bflat", "bmle", "bmznot", "bmzt"), tags = "train"),
        corr = p_fct(default = "expsep", levels = c("exp", "expsep", "matern", "sim"), tags = "train"),
        tree = p_uty(default = c(0.5, 2), tags = "train", custom_check = function(x) {
          if (checkmate::test_numeric(x, len = 2, any.missing = FALSE)) {
            if (x[1] >= 0 && x[1] <= 1 && x[2] >= 0) {
              return(TRUE)
            }
          }
          "tree must be numeric length 2 with first element in [0, 1] and second >= 0"
        }),
        BTE = p_uty(
          default = c(2000L, 7000L, 2L),
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
        linburn = p_lgl(default = FALSE, tags = "train"),
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
        verb = 0L
      )

      super$initialize(
        id = "regr.btgp",
        packages = c("mlr3extralearners", "tgp"),
        feature_types = c("integer", "numeric", "factor"),
        predict_types = c("response", "se"),
        param_set = param_set,
        man = "mlr3extralearners::mlr_learners_regr.btgp",
        label = "Bayesian Treed Gaussian Process"
      )
    }
  ),
  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      data = task$data(cols = task$feature_names)
      target = task$truth()

      encoded = private$.encode_features(data)

      if (length(encoded$factor_levels)) {
        pars$basemax = encoded$basemax
      }

      model = mlr3misc::invoke(
        tgp::btgp,
        X = encoded$data,
        Z = target,
        .args = pars
      )

      list(
        model = model,
        factor_levels = encoded$factor_levels,
        column_names = encoded$column_names
      )
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)

      encoded = encode_features(newdata, self$model$factor_levels)

      if (!is.null(self$model$column_names)) {
        missing_cols = setdiff(self$model$column_names, encoded$column_names)
        if (length(missing_cols)) {
          encoded$data = cbind(encoded$data, matrix(0,
            nrow = nrow(encoded$data), ncol = length(missing_cols),
            dimnames = list(NULL, missing_cols)))
        }
        encoded$data = encoded$data[, self$model$column_names, drop = FALSE]
      }

      pred = mlr3misc::invoke(
        predict,
        self$model$model,
        XX = encoded$data,
        .args = pars
      )

      if (self$predict_type == "response") {
        list(response = pred$ZZ.km)
      } else {
        list(response = pred$ZZ.km, se = sqrt(pred$ZZ.ks2))
      }
    },

.extralrns_dict$add("regr.btgp", LearnerRegrBtgp)

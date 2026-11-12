#' @title Regression Bayesian Treed Gaussian Process LLM Learner
#' @author awinterstetter
#' @name mlr_learners_regr.btgpllm
#'
#' @description
#' Bayesian treed Gaussian process with jumps to the limiting linear model.
#' Calls `tgp::btgpllm()` from \CRANpkg{tgp}.
#' For the predicted mean ZZ.km and for the predicted variance ZZ.ks2 are chosen.
#'
#' Factor features are one-hot encoded with reference encoding before fitting.
#' If factors are present, `basemax` is set to the number of non-factor features so
#' that tree proposals account for the numeric part of the design.
#'
#' @section Initial parameter values:
#' * `verb` is initialized to `0` to silence printing.
#' * `pred.n` is initialized to `FALSE` to skip prediction during training.
#'
#' @templateVar id regr.btgpllm
#' @template learner
#'
#' @references
#' `r format_bib("gramacy2007tgp")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrBtgpllm = R6Class("LearnerRegrBtgpllm",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        bprior  = p_fct(default = "bflat", levels = c("b0", "b0not", "bflat", "bmle", "bmznot", "bmzt"), tags = "train"),
        corr    = p_fct(default = "expsep", levels = c("exp", "expsep", "matern", "sim"), tags = "train"),
        Ds2x    = p_lgl(default = FALSE, tags = c("train", "predict")),
        improv  = p_lgl(default = FALSE, tags = c("train", "predict")),
        itemps  = p_uty(default = NULL, tags = "train"),
        krige   = p_lgl(default = TRUE, tags = c("train", "predict")),
        linburn = p_lgl(default = FALSE, tags = "train"),
        m0r1    = p_lgl(default = TRUE, tags = "train"),
        MAP     = p_lgl(default = TRUE, tags = "predict"),
        meanfn  = p_fct(default = "linear", levels = c("constant", "linear"), tags = "train"),
        nu      = p_dbl(default = 1.5, tags = "train", depends = corr == "matern"),
        pred.n  = p_lgl(init = FALSE, tags = c("train", "predict")),
        R       = p_int(default = 1L, lower = 1L, tags = c("train", "predict")),
        trace   = p_lgl(default = FALSE, tags = c("train", "predict")),
        verb    = p_int(init = 0L, lower = 0L, upper = 4L, tags = c("train", "predict")),
        zcov    = p_lgl(default = FALSE, tags = c("train", "predict")),
        tree    = p_uty(default = c(0.5, 2), tags = "train", custom_check = function(x) {
          if (checkmate::test_numeric(x, len = 2, any.missing = FALSE)) {
            if (x[1] >= 0 && x[1] <= 1 && x[2] >= 0) {
              return(TRUE)
            }
          }
          "tree must be numeric length 2 with first element in [0, 1] and second >= 0"
        }),
        gamma   = p_uty(
          default = c(10, 0.2, 0.7),
          tags = "train",
          custom_check = mlr3misc::crate(function(x) {
            if (!checkmate::test_numeric(x, len = 3, lower = 0)) {
              return("`gamma` must be a numeric vector of length 3 with non-negative entries")
            }
            if (x[2] > 1 || x[3] > 1) {
              return("`gamma[2]` and `gamma[3]` must be <= 1")
            }
            TRUE
          })
        ),
        BTE   = p_uty(
          default = c(2000L, 7000L, 2L),
          tags = c("train", "predict"),
          custom_check = mlr3misc::crate(function(x) {
            if (!checkmate::test_integerish(x, len = 3, lower = 0)) {
              return("`BTE` must be an integerish vector of length 3 with non-negative entries")
            }
            TRUE
          })
        )
      )

      super$initialize(
        id = "regr.btgpllm",
        packages = c("mlr3extralearners", "tgp"),
        feature_types = c("integer", "numeric", "factor", "ordered", "logical"),
        predict_types = c("response", "se"),
        param_set = param_set,
        properties = character(0),
        man = "mlr3extralearners::mlr_learners_regr.btgpllm",
        label = "Bayesian Treed Gaussian Process with Limiting Linear Model"
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

      model = invoke(
        tgp::btgpllm,
        X = encoded$data,
        Z = target,
        .args = pars)

      list(
        model = model,
        factor_levels = encoded$factor_levels,
        column_names = encoded$column_names
      )
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      encoded = private$.encode_features(task$data(cols = task$feature_names), self$model$factor_levels)

      pred = invoke(
        predict,
        self$model$model,
        XX = encoded$data,
        .args = pars)

      if (self$predict_type == "response") {
        list(response = pred$ZZ.km)
      } else {
        if (is.null(pred$ZZ.ks2)) {
          stop("Standard errors requested but `ZZ.ks2` was not returned; try setting `krige = TRUE`.")
        }
        list(response = pred$ZZ.km, se = sqrt(pred$ZZ.ks2))
      }
    },

    .encode_features = function(data, factor_levels = NULL) {
      data = as.data.frame(data)
      factor_cols = names(data)[vapply(data, inherits, logical(1), what = "factor")]
      numeric_cols = setdiff(names(data), factor_cols)

      if (is.null(factor_levels)) {
        factor_levels = if (length(factor_cols)) {
          stats::setNames(lapply(factor_cols, function(col) levels(data[[col]])), factor_cols)
        } else {
          list()
        }
      }

      dummy_mats = list()
      if (length(factor_cols)) {
        for (col in factor_cols) {
          lvls = factor_levels[[col]]
          f = factor(data[[col]], levels = lvls)
          if (anyNA(f)) {
            stop(sprintf("Factor column '%s' contains missing or unseen levels.", col))
          }
          mm = stats::model.matrix(~ f)
          if (ncol(mm) > 1L) {
            mm = mm[, -1, drop = FALSE]
            colnames(mm) = make.names(sprintf("%s.%s", col, lvls[-1]))
            dummy_mats[[col]] = mm
          }
        }
      }

      encoded = if (length(numeric_cols)) {
        as.data.frame(data[, numeric_cols, drop = FALSE])
      } else {
        NULL
      }

      if (length(dummy_mats)) {
        encoded = if (is.null(encoded)) {
          do.call(cbind, dummy_mats)
        } else {
          cbind(encoded, do.call(cbind, dummy_mats))
        }
      }

      if (is.null(encoded)) {
        encoded = matrix(, nrow = nrow(data), ncol = 0)
      }

      mat = as.matrix(encoded)

      list(
        data = mat,
        factor_levels = factor_levels,
        basemax = max(1L, length(numeric_cols)),
        column_names = colnames(mat)
      )
    }
  )
)

.extralrns_dict$add("regr.btgpllm", LearnerRegrBtgpllm)

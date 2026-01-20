#' @title Regression Bayesian CART Learner
#' @author awinterstetter
#' @name mlr_learners_regr.bcart
#'
#' @description
#' Bayesian CART regression model.
#' Calls [tgp::bcart()] from \CRANpkg{tgp}.
#' For the predicted mean ZZ.km and for the predicted variance ZZ.ks2 are chosen.
#'
#' Factor features are one-hot encoded with reference encoding before fitting, matching the
#' behavior of the original mlr learner. If factors are present, `basemax` is set to the number
#' of non-factor features so that tree proposals account for the numeric part of the design.
#'
#' @section Initial parameter values:
#' * `verb` is initialized to `0` to silence printing.
#' * `pred.n` is initialized to `FALSE` to skip prediction during training.
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
        bprior = p_fct(default = "bflat", levels = c("b0", "b0not", "bflat", "bmle", "bmznot", "bmzt"), tags = "train"),
        Ds2x   = p_lgl(default = FALSE, tags = c("train", "predict")),
        improv = p_lgl(default = FALSE, tags = c("train", "predict")),
        itemps = p_uty(default = NULL, tags = "train"),
        krige  = p_lgl(default = TRUE, tags = c("train", "predict")),
        m0r1   = p_lgl(default = TRUE, tags = "train"),
        pred.n = p_lgl(init = FALSE, tags = c("train", "predict")),
        R      = p_int(default = 1L, lower = 1L, tags = c("train", "predict")),
        trace  = p_lgl(default = FALSE, tags = c("train", "predict")),
        verb   = p_int(init = 0L, lower = 0L, upper = 4L, tags = c("train", "predict")),
        zcov   = p_lgl(default = FALSE, tags = c("train", "predict")),
        tree   = p_uty(default = c(0.5, 2), tags = "train", custom_check = function(x) {
          if (checkmate::test_numeric(x, len = 2, any.missing = FALSE)) {
            if (x[1] >= 0 && x[1] <= 1 && x[2] >= 0) {
              return(TRUE)
            }
          }
          "tree must be numeric length 2 with first element in [0, 1] and second >= 0"
        }),
        BTE    = p_uty(
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
        id = "regr.bcart",
        packages = c("mlr3extralearners", "tgp"),
        feature_types = c("integer", "numeric", "factor"),
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
      data = task$data(cols = task$feature_names)
      target = task$truth()

      encoded = encode_features(data)

      model = invoke(
        tgp::bcart,
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

      if (length(encoded$factor_levels)) {
        pars$basemax = encoded$basemax
      }

      if (self$predict_type == "se") {
        pars$krige = TRUE
      }

      pred = invoke(
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
    }
  )
)

.extralrns_dict$add("regr.bcart", LearnerRegrBcart)

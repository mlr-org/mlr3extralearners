#' @title Regression Gaussian Process Learner (GPfit)
#' @author awinterstetter
#' @name mlr_learners_regr.gpfit
#'
#' @description
#' Gaussian process regression via [GPfit::GP_fit()] from \CRANpkg{GPfit}.
#'
#' @template learner
#' @templateVar id regr.gpfit
#'
#' @note
#' As the optimization routine assumes that the inputs are scaled to the unit hypercube,
#' the input gets scaled for each variable by default.
#' If this is not wanted, `scale = FALSE`` has to be set.
#' We replace the GPfit parameter `corr = list(type = 'exponential',power = 1.95)` to be separate parameters `type` and `power`,
#' in the case of `corr = list(type = 'matern', nu = 0.5)`, the separate parameters are `type` and `matern_nu_k = 0`,
#' and nu is computed by `nu = (2 * matern_nu_k + 1) / 2 = 0.5`.
#'
#' @references
#' `r format_bib("macdonald2015gpfit")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerRegrGPfit = R6Class("LearnerRegrGPfit",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      param_set = ps(
        control = p_uty(default = NULL,
          custom_check = function(x) checkmate::check_numeric(x, len = 3, lower = 1, any.missing = FALSE, null.ok = TRUE),
          tags = "train"),
        nug_thres = p_dbl(init = 20, lower = 0, tags = "train"),
        trace = p_lgl(init = FALSE, tags = "train"),
        maxit = p_int(init = 100L, lower = 1L, tags = "train"),
        optim_start = p_uty(init = NULL, special_vals = list(NULL), tags = "train"),
        scale = p_lgl(init = TRUE, tags = c("train", "predict")),
        type = p_fct(default = "exponential", levels = c("exponential", "matern"), tags = "train"),
        matern_nu_k = p_int(default = 0L, lower = 0L, depends = type == "matern", tags = "train"),
        power = p_dbl(default = 1.95, lower = 1, upper = 2, depends = type == "exponential", tags = "train")
      )

      super$initialize(
        id = "regr.gpfit",
        packages = c("mlr3extralearners", "GPfit"),
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "se"),
        param_set = param_set,
        label = "Gaussian Process (GPfit)",
        man = "mlr3extralearners::mlr_learners_regr.gpfit"
      )
    }
  ),

  private = list(

    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")

      d = list(data = as_numeric_matrix(task$data(cols = task$feature_names)))
      d$target = task$truth()

      low = apply(d$data, 2, min)
      high = apply(d$data, 2, max)
      not_const = colnames(d$data)[high != low]

      if (length(not_const) == 0L) {
        stop("GPfit requires at least one non-constant feature.")
      }
      if (pv$scale) {
        d$data[, not_const] = apply(d$data[, not_const, drop = FALSE], 2, function(x) x = (x - min(x)) / (max(x) - min(x)))
        mlist = list(scaled = TRUE, not_const = not_const, high = high, low = low)
      } else {
        mlist = list(scaled = FALSE, not_const = not_const)
      }

      corr_pars = pv[names(pv) %in% c("type", "matern_nu_k", "power")]
      
      if (!is.null(corr_pars$type)) {
        if (corr_pars$type == "exponential") {
         corr_pars$matern_nu_k = NULL
        }
      }

      train_pars = pv[names(pv) %nin% c("scale", "type", "matern_nu_k", "power")]
      if (is.null(pv$control)) {
        train_pars$control = NULL
      }

      model = mlr3misc::invoke(
        GPfit::GP_fit,
        X = d$data[, not_const, drop = FALSE],
        Y = d$target,
        if (!is.null(corr_pars)) corr = corr_pars,
        .args = train_pars
      )

      list(
        model = model,
        mlist = mlist
      )
      },

    .predict = function(task) {
      pv = self$param_set$get_values(tags = "predict")
      state = self$model
      newdata = ordered_features(task, self)
      x_new = as_numeric_matrix(newdata[, state$not_const, with = FALSE, drop = FALSE])

      if (pv$scale) {
        rng = state$high - state$low
        x_new = sweep(x_new, 2, state$low, "-")
        x_new = sweep(x_new, 2, rng, "/")
      }

      pred = GPfit::predict.GP(state$model, xnew = x_new)

      if (self$predict_type == "response") {
        list(response = as.numeric(pred$Y_hat))
      } else {
        list(response = as.numeric(pred$Y_hat), se = sqrt(pred$MSE))
      }
    }
  )
)

.extralrns_dict$add("regr.gpfit", LearnerRegrGPfit)

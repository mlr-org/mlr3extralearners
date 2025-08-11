#' @title Generalized Additive Quantile Regression Model for Multiple Quantiles
#' @author lona-k
#' @name mlr_learners_regr.mqgam
#'
#' @description
#' Quantile Regression with generalized additive models for fitting a learner on multiple quantiles simultaneously.
#' Calls [qgam::mqgam()] from package \CRANpkg{qgam}.
#'
#' @section Form:
#' For the `form` parameter, a gam formula specific to the [Task][mlr3::Task] is required (see example and `?mgcv::formula.gam`).
#' If no formula is provided, a fallback formula using all features in the task is used that will make the Learner behave like Linear Quantile Regression.
#' The features specified in the formula need to be the same as columns with col_roles "feature" in the task.
#'
#' @section Quantile:
#' The quantiles for the Learner, i.e. `qu` parameter from [qgam::mqgam()], is set using the values specified in `learner$quantiles`.
#' The response quantile can be specified using `learner$quantile_response`.
#'
#' @templateVar id regr.mqgam
#' @template learner
#'
#' @references
#' `r format_bib("faisolo2017qgam")`
#'
#' @template seealso_learner
#' @export
LearnerRegrMQGam = R6Class("LearnerRegrMQGam",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        form          = p_uty(tags = "train"),
        lsig          = p_dbl(tags = "train"),
        err           = p_dbl(lower = 0, upper = 1, tags = "train"),
        cluster       = p_uty(default = NULL, tags = "train"),
        multicore     = p_lgl(tags = "train"),
        ncores        = p_dbl(tags = "train"),
        paropts       = p_uty(default = list(), tags = "train"),
        link          = p_uty(default = "identity", tags = "train"),
        argGam        = p_uty(custom_check = crate(function(x) {
          checkmate::check_list(x, names = "unique", null.ok = TRUE)
        }), tags = "train"),
        discrete      = p_lgl(default = FALSE, tags = "train")
      )

      super$initialize(
        id = "regr.mqgam",
        packages = "qgam",
        feature_types = c("logical", "integer", "numeric", "factor"),
        predict_types = c("response", "se", "quantiles"),
        param_set = param_set,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_regr.mqgam",
        label = "Regression Quantile Generalized Additive Model Learner"
      )

      self$predict_type = "quantiles"
      self$quantile_response = 0.5
    }
  ),
  private = list(
    .train = function(task) {
      data = task$data(cols = c(task$feature_names, task$target_names))
      pars = self$param_set$get_values(tags = "train")
      control_pars = if (length(pars$link)) list(pars$link) else list(NULL)

      args_gam = formalArgs(mgcv::gam)[
        formalArgs(mgcv::gam) %nin% c("formula", "family", "data")
      ]
      if (length(pars$argGam)) {
        checkmate::assert_subset(names(pars$argGam), choices = args_gam, empty.ok = FALSE)
      }

      arg_gam_pars = pars$argGam
      pars = pars[names(pars) %nin% c("argGam", "link")]
      arg_gam_pars$weights = private$.get_weights(task)

      if (is.null(pars$form)) {
        form = stats::reformulate(task$feature_names, response = task$target_names)
        pars$form = form
      }

      checkmate::assert_set_equal(all.vars(pars$form)[-1], task$col_roles$feature)
      checkmate::assert_set_equal(all.vars(pars$form)[[1]], task$col_roles$target)

      invoke(
        qgam::mqgam,
        qu = self$quantiles,
        data = data,
        .args = pars,
        control = control_pars,
        argGam = arg_gam_pars
      )
    },
    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      include_se = (self$predict_type == "se")

      newdata = ordered_features(task, self)

      # returns a list with results for quantiles
      preds = invoke(
        qgam::qdo,
        self$model,
        qu = self$quantiles,
        fun = predict,
        newdata = newdata,
        type = "response",
        newdata.guaranteed = TRUE,
        se.fit = include_se,
        .args = pars
      )

      if (include_se) {
        list(response = preds$fit, se = preds$se.fit)
      } else if (self$predict_type == "quantiles") {
        # qdo returns an array if mqgam is trained with only one quantile
        preds = if (!is.list(preds)) list(preds) else preds
        quantiles = do.call(cbind, preds)

        attr(quantiles, "probs") = self$quantiles
        attr(quantiles, "response") = self$quantile_response
        list(quantiles = quantiles)
      } else {
        list(response = preds)
      }
    }
  )
)

.extralrns_dict$add("regr.mqgam", LearnerRegrMQGam)

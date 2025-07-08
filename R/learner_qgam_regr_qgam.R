#' @title Generalized Additive Quantile Regression Model
#' @author lona-k
#' @name mlr_learners_regr.qgam
#'
#' @description
#' Quantile Regression with generalized additive models.
#' Calls [qgam::qgam()] from package \CRANpkg{qgam}.
#'
#' @section Form:
#' For the `form` parameter, a gam formula specific to the [Task][mlr3::Task] is required (see example and `?mgcv::formula.gam`).
#' If no formula is provided, a fallback formula using all features in the task is used that will make the Learner behave like Linear Quantile Regression.
#' The features specified in the formula need to be the same as columns with col_roles "feature" in the task.
#'
#' @section Quantile:
#' The quantile for the Learner, i.e. `qu` parameter from [qgam::qgam()], is set using the value specified in `learner$quantiles`.
#'
#' @templateVar id regr.qgam
#' @template learner
#'
#' @references
#' `r format_bib("faisolo2017qgam")`
#'
#' @template seealso_learner
#' @export
LearnerRegrQGam = R6Class("LearnerRegrQGam",
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
        discrete      = p_lgl(default = FALSE, tags = "train"),
        block.size    = p_int(default = 1000L, tags = "predict"),
        unconditional = p_lgl(default = FALSE, tags = "predict")
      )

      super$initialize(
        id = "regr.qgam",
        packages = "qgam",
        feature_types = c("logical", "integer", "numeric", "factor"),
        predict_types = c("response", "se", "quantiles"),
        param_set = param_set,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_regr.qgam",
        label = "Regression Quantile Generalized Additive Model Learner"
      )

      self$predict_type = "quantiles"
      self$quantiles = 0.5
    }
  ),
  private = list(
    .train = function(task) {
      data = task$data(cols = c(task$feature_names, task$target_names))

      # get parameters for training
      pars = self$param_set$get_values(tags = "train")
      control_pars = if (length(pars$link)) list(pars$link) else list(NULL)

      args_gam = formalArgs(mgcv::gam)[formalArgs(mgcv::gam) %nin% c("formula", "family", "data")]
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
        qgam::qgam,
        qu = self$quantiles,
        data = data,
        .args = pars,
        control = control_pars,
        argGam = arg_gam_pars
      )
    },
    .predict = function(task) { # qgam uses predict.gam
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = ordered_features(task, self)

      include_se = (self$predict_type == "se")

      preds = invoke(
        predict,
        self$model,
        newdata = newdata,
        type = "response",
        newdata.guaranteed = TRUE,
        se.fit = include_se,
        .args = pars
      )

      if (include_se) { # se and response
        list(response = preds$fit, se = preds$se)
      } else if (self$predict_type == "quantiles") {
        quantiles = matrix(preds, ncol = 1)
        attr(quantiles, "probs") = self$quantiles
        attr(quantiles, "response") = self$quantiles
        list(quantiles = quantiles)
      } else {
        list(response = preds)
      }
    }
  )
)

.extralrns_dict$add("regr.qgam", LearnerRegrQGam)

#' @title Regression Splines Learner
#' @author annanzrv
#' @name mlr_learners_regr.crs
#'
#' @description
#' Categorical Regression Splines.
#' Calls [crs::crs()] from \CRANpkg{crs}.
#'
#' @templateVar id regr.crs
#' @template learner
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrCrs = R6Class("LearnerRegrCrs",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        degree                    = p_int(default = 3, lower = 0, tags = "train"),
        segments                  = p_int(default = 1, lower = 1, tags = "train"),
        include                   = p_int(tags = "train"),
        lambda                    = p_uty(tags = "train"),
        lambda.discrete           = p_lgl(default = FALSE, tags = "train"),
        lambda.discrete.num       = p_int(default = 100, lower = 0, tags = "train"),
        cv                        = p_fct(default = "nomad", levels = c("nomad", "exhaustive", "none"), tags = "train"),
        cv.threshold              = p_int(default = 10000, lower = 0, tags = "train"),
        cv.func                   = p_fct(default = "cv.ls", levels = c("cv.ls", "cv.gcv", "cv.aic"), tags = "train"),
        kernel                    = p_lgl(default = TRUE, tags = "train"),
        degree.max                = p_int(default = 10, lower = 0, tags = "train"),
        segments.max              = p_int(default = 10, lower = 1, tags = "train"),
        degree.min                = p_int(default = 0, lower = 0, tags = "train"),
        segments.min              = p_int(default = 1, lower = 1, tags = "train"),
        cv.df.min                 = p_int(default = 1, tags = "train"),
        complexity                = p_fct(default = "degree-knots", levels = c("degree-knots", "degree", "knots"), tags = "train"),
        knots                     = p_fct(default = "quantiles", levels = c("quantiles", "uniform", "auto"), tags = "train"),
        basis                     = p_fct(default = "auto", levels = c("auto", "additive", "tensor", "glp"), tags = "train"),
        prune                     = p_lgl(default = FALSE, tags = "train"),
        restarts                  = p_int(default = 0, lower = 0, tags = "train"),
        nmulti                    = p_int(default = 5, lower = 0, tags = "train"),
        singular.ok               = p_lgl(default = FALSE, tags = "train"),
        deriv                     = p_int(default = 0L, lower = 0L, tags = "train"),
        data.return               = p_lgl(default = FALSE, tags = "train"),
        model.return              = p_lgl(default = FALSE, tags = "train"),
        random.seed               = p_int(tags = "train"),
        tau                       = p_dbl(lower = 0, upper = 1, tags = "train"),
        initial.mesh.size.real    = p_uty(tags = "train"),
        initial.mesh.size.integer = p_uty(tags = "train"),
        max.bb.eval               = p_uty(tags = "train"),
        min.mesh.size.real        = p_uty(tags = "train"),
        min.mesh.size.integer     = p_uty(tags = "train"),
        min.poll.size.real        = p_uty(tags = "train"),
        min.poll.size.integer     = p_uty(tags = "train"),
        opts                      = p_uty(tags = "train")
      )

      super$initialize(
        id = "regr.crs",
        packages = "crs",
        feature_types = c("numeric", "integer", "factor", "ordered"),
        predict_types = c("response", "se"),
        param_set = param_set,
        properties = "weights", # "loglik"
        man = "mlr3extralearners::mlr_learners_regr.crs",
        label = "Regression Splines"
      )
    },

    #' @description
    #' Log-Likelihood is obtained from the underlying linear model.
    #' @return `numeric(1)`.
    loglik = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      # Extract the underlying linear model
      if (self$model$kernel) {
        # For kernel smoothing, use the first model
        model_lm = self$model$model.lm[[1]]
      } else {
        # For non-kernel case, use the single model
        model_lm = self$model$model.lm
      }
      if (is.null(model_lm)) {
        stopf("No underlying linear model available")
      }
      # Calculate log-likelihood from the linear model
      stats::logLik(model_lm)
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      # create formula and data
      formula = task$formula()
      data = task$data()

      invoke(
        crs::crs,
        formula = formula,
        data = data,
        weights = private$.get_weights(task),
        .args = pars
      )
    },
    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = ordered_features(task, self)

      # Calculate predictions for the selected predict type.
      type = self$predict_type

      if (type == "se") {
        pred = invoke(predict, self$model, newdata = newdata, .args = pars)
        lwr = attr(pred, "lwr")
        attr(pred, "lwr") = NULL
        attr(pred, "upr") = NULL
        se = (pred - lwr) / qnorm(0.95)
        list(response = pred, se = se)
      } else {
        pred = invoke(predict, self$model, newdata = newdata, .args = pars)
        attr(pred, "lwr") = NULL
        attr(pred, "upr") = NULL
        list(response = pred)
      }
    }
  )
)

.extralrns_dict$add("regr.crs", LearnerRegrCrs)
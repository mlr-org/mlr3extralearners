#' @title Generalized Linear Regression H2O Learner
#' @author awinterstetter
#' @name mlr_learners_regr.h2o.glm
#'
#' @description
#' Generalized linear model.
#' Calls [h2o::h2o.glm()] from package \CRANpkg{h2o}.
#'
#' @templateVar id regr.h2o.glm
#' @template learner
#'
#' @section Model family:
#' The `family` parameter is fixed to `"gaussian"`.
#'
#' @section Missing values:
#' The default value of `missing_values_handling` in `h2o::h2o.glm()` is `"MeanImputation"`,
#' so missing values are mean-imputed by default.
#'
#' @references
#' `r format_bib("fryda2025h2o")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrH2OGLM = R6Class("LearnerRegrH2OGLM",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        max_iterations = p_int(lower = 0L, default = 50L, tags = "train"),
        beta_epsilon = p_dbl(lower = 0, default = 0, tags = "train"),
        standardize = p_lgl(default = TRUE, tags = "train"),
        solver = p_fct(levels = c("IRLSM", "L_BFGS"), default = "IRLSM", tags = "train"),
        link = p_fct(levels = c("identity", "log", "inverse"), default = "identity", tags = "train"),
        alpha = p_dbl(lower = 0, upper = 1, default = 0.5, tags = "train"),
        lambda = p_dbl(lower = 0, default = 1e-5, tags = "train"),
        lambda_search = p_lgl(default = FALSE, tags = "train"),
        nlambdas = p_int(lower = 1L, depends = quote(lambda_search == TRUE), tags = "train"),
        lambda_min_ratio = p_dbl(lower = 0, upper = 1, depends = quote(lambda_search == TRUE), tags = "train"),
        beta_constraints = p_uty(default = NULL, special_vals = list(NULL), tags = "train"),
        intercept = p_lgl(default = TRUE, tags = "train"),
        quiet = p_lgl(init = TRUE, tags = c("train", "predict"))
      )

      super$initialize(
        id = "regr.h2o.glm",
        packages = "h2o",
        feature_types = c("integer", "numeric", "factor"),
        predict_types = "response",
        param_set = ps,
        properties = c("weights", "missings"),
        man = "mlr3extralearners::mlr_learners_regr.h2o.glm",
        label = "H2O Generalized Linear Model"
      )
    }
  ),

  private = list(
    .train = function(task) {

      conn.up = tryCatch(h2o::h2o.getConnection(), error = function(err) {
        FALSE
      })
      if (!inherits(conn.up, "H2OConnection")) {
        h2o::h2o.init()
      }

      pars = self$param_set$get_values(tags = "train")
      target = task$target_names
      feature = task$feature_names
      data = task$data()

      weights = private$.get_weights(task)
      if (!is.null(weights)) {
        data$.mlr_weights = weights
        pars$weights_column = ".mlr_weights"
      }

      quiet = pars$quiet
      pars$quiet = NULL

      training_frame = h2o::as.h2o(data)

      train_fun = function() {
        invoke(h2o::h2o.glm,
          y = target,
          x = feature,
          training_frame = training_frame,
          family = "gaussian",
          .args = pars
        )
      }

      if (quiet == TRUE) {
        utils::capture.output({
          model = train_fun()
        })
      } else {
        model = train_fun()
      }

      model
    },

    .predict = function(task) {

      conn.up = tryCatch(h2o::h2o.getConnection(), error = function(err) {
        FALSE
      })
      if (!inherits(conn.up, "H2OConnection")) {
        h2o::h2o.init()
      }

      pars = self$param_set$get_values(tags = "predict")
      quiet = pars$quiet
      pars$quiet = NULL

      newdata = h2o::as.h2o(ordered_features(task, self))

      predict_fun = function() {
        invoke(h2o::h2o.predict,
          object = self$model,
          newdata = newdata,
          .args = pars
        )
      }

      if (quiet == TRUE) {
        utils::capture.output({
          pred = predict_fun()
        })
      } else {
        pred = predict_fun()
      }

      list(response = as.data.frame(pred)$predict)
    }
  )
)

.extralrns_dict$add("regr.h2o.glm", LearnerRegrH2OGLM)

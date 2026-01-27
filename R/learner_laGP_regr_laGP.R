#' @title Regression Local Approximate Gaussian Process Learner
#' @author awinterstetter
#' @name mlr_learners_regr.laGP
#'
#' @description
#' Local approximate Gaussian process for regression.
#' Calls [laGP::aGP()] from \CRANpkg{laGP}.
#'
#' @note
#' Parameters `start` and `end` tune the initial and maximum neighborhood sizes
#' used for the local GP fit, `d` can fix the length-scale parameters, `g`
#' configures the nugget/regularization term, and `method` selects the search
#' heuristic (`alc`, `alcray`, `efi`, `mspe`, `nn`). Arguments `close` and
#' `numrays` further refine the ray-based search used by `method = "alcray"`,
#' while `verb` controls the output verbosity.
#'
#' @templateVar id regr.laGP
#' @template learner
#'
#' @references
#' `r format_bib("gramacy2016lagp")`
#'
#' @export
#' @template seealso_learner
#' @template example_laGP
LearnerRegrLaGP = R6Class("LearnerRegrLaGP",
  inherit = LearnerRegr,

  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      param_set = ps(
        start = p_int(default = 6L, lower = 6L, tags = "predict"),
        end = p_int(default = 50L, lower = 6L, tags = "predict"),
        d = p_uty(default = NULL, tags = "predict"),
        g = p_uty(default = 1 / 10000, tags = "predict"),
        method = p_fct(default = "alc", levels = c("alc", "alcray", "efi", "mspe", "nn"), tags = "predict"),
        close = p_int(lower = 0L, tags = "predict"),
        numrays = p_int(lower = 0L, depends = method == "alcray", tags = "predict"),
        verb = p_dbl(default = 0, tags = "predict")
      )

      super$initialize(
        id = "regr.laGP",
        packages = c("mlr3extralearners", "laGP"),
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "se"),
        param_set = param_set,
        label = "Local Approximate Gaussian Process",
        man = "mlr3extralearners::mlr_learners_regr.laGP"
      )
    }
  ),

  private = list(
    .train = function(task) {
      list(
        x = as_numeric_matrix(task$data(cols = task$feature_names)),
        z = task$truth()
      )
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      pred = invoke(
        laGP::aGP,
        X = self$model$x,
        Z = self$model$z,
        XX = as_numeric_matrix(ordered_features(task, self)),
        Xi.ret = FALSE,
        .args = pars
      )

      if (self$predict_type == "response") {
        list(response = as.numeric(pred$mean))
      } else {
        list(response = as.numeric(pred$mean), se = sqrt(pred$var))
      }
    }
  )
)

.extralrns_dict$add("regr.laGP", LearnerRegrLaGP)

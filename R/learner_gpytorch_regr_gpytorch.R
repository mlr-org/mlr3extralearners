#' @title GPyTorch Gaussian Process Regression Learner
#' @author KhalifaSeck
#' @name mlr_learners_regr.gpytorch
#'
#' @description
#' Exact Gaussian process regression with a constant mean, a scaled kernel, and a Gaussian likelihood.
#' The hyperparameters are fitted by maximizing the exact marginal log likelihood with the Adam optimizer.
#' Uses \CRANpkg{reticulate} to interface with the [`gpytorch`](https://gpytorch.ai/) Python package.
#'
#' The features and the target are standardized to zero mean and unit variance before the model is fitted,
#' and the predictions are transformed back to the original scale.
#' The standard error is the posterior standard deviation of the latent function,
#' i.e. it does not include the observation noise.
#'
#' @section Custom mlr3 parameters:
#' `gpytorch` has no ready-made training function, so all parameters are defined by this learner.
#' - `kernel` is the base kernel that is wrapped in a `ScaleKernel`.
#'   `"rbf"` is the `RBFKernel`, and `"matern_0.5"`, `"matern_1.5"`, and `"matern_2.5"` are the `MaternKernel` with the
#'   respective smoothness parameter `nu`.
#' - `lr` is the learning rate of the Adam optimizer.
#' - `n_iter` is the number of optimizer steps.
#' - `device` is the torch device on which the model is fitted and predictions are computed.
#'   `"auto"` selects `"cuda"` if available and `"cpu"` otherwise.
#'
#' @templateVar class LearnerRegrGPyTorch
#' @template sections_gpytorch
#'
#' @templateVar id regr.gpytorch
#' @template learner
#'
#' @references
#' `r format_bib("gardner2018gpytorch")`
#'
#' @template seealso_learner
#' @export
LearnerRegrGPyTorch = R6Class("LearnerRegrGPyTorch",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        kernel = p_fct(default = "rbf", levels = c("rbf", "matern_0.5", "matern_1.5", "matern_2.5"), tags = "train"),
        lr = p_dbl(default = 0.1, lower = 0, tags = "train"),
        n_iter = p_int(default = 50L, lower = 1L, tags = "train"),
        device = p_fct(default = "auto", levels = c("auto", "cpu", "cuda"), tags = "train")
      )

      super$initialize(
        id = "regr.gpytorch",
        packages = c("mlr3extralearners", "reticulate"),
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "se"),
        param_set = param_set,
        properties = "marshal",
        label = "GPyTorch Gaussian Process",
        man = "mlr3extralearners::mlr_learners_regr.gpytorch"
      )
    },

    #' @description
    #' Marshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::marshal_model()`][mlr3::marshaling()].
    marshal = function(...) {
      learner_marshal(.learner = self, ...)
    },

    #' @description
    #' Unmarshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::unmarshal_model()`][mlr3::marshaling()].
    unmarshal = function(...) {
      learner_unmarshal(.learner = self, ...)
    }
  ),

  active = list(
    #' @field marshaled (`logical(1)`)\cr
    #' Whether the learner has been marshaled.
    marshaled = function() {
      learner_marshaled(self)
    }
  ),

  private = list(
    .train = function(task) {
      module = import_gpytorch_module()
      pars = self$param_set$get_values(tags = "train")

      x = as_numeric_matrix(task$data(cols = task$feature_names))
      y = as.numeric(task$truth())

      wrapper = invoke(module$GPyTorchWrapper, .args = pars)
      wrapper$fit(x, y)

      structure(list(fitted = wrapper), class = "gpytorch_model")
    },

    .predict = function(task) {
      import_gpytorch_module()
      x = as_numeric_matrix(ordered_features(task, self))

      pred = self$model$fitted$predict(x)
      response = as.numeric(pred$mean)

      if (self$predict_type == "response") {
        list(response = response)
      } else {
        list(response = response, se = sqrt(as.numeric(pred$variance)))
      }
    }
  )
)

.extralrns_dict$add("regr.gpytorch", LearnerRegrGPyTorch)

# Imports the python module that defines the model classes.
# The module must also be imported before a model is pickled or unpickled.
import_gpytorch_module = function() {
  assert_python_packages(c("torch", "gpytorch"))
  reticulate::import_from_path(
    "mlr3extralearners_gpytorch",
    path = system.file("python", package = "mlr3extralearners"),
    delay_load = FALSE
  )
}

#' @export
marshal_model.gpytorch_model = function(model, inplace = FALSE, ...) {
  import_gpytorch_module()
  marshal_python_model(model, slot = "fitted")
}

#' @export
unmarshal_model.gpytorch_model_marshaled = function(model, inplace = FALSE, ...) {
  import_gpytorch_module()
  unmarshal_python_model(model, slot = "fitted")
}

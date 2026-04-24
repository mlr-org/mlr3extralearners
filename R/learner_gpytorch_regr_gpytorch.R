#' @title Regression Gaussian Process Learner (GPyTorch)
#' @author KhalifaSeck
#' @name mlr_learners_regr.gpytorch
#'
#' @description
#' Gaussian process regression via GPyTorch from Python.
#' Supports GPU acceleration via PyTorch backend.
#'
#' @template learner
#' @templateVar id regr.gpytorch
#'
#' @note
#' This learner requires Python with PyTorch and GPyTorch installed.
#' Features are automatically normalized to zero mean and unit variance.
#' The device parameter allows automatic GPU/CPU detection or manual selection.
#'
#' @section Installation:
#' Install Python dependencies using reticulate:
#' \preformatted{
#' # Install miniconda (one-time)
#' reticulate::install_miniconda()
#'
#' # Create environment (one-time)
#' reticulate::conda_create("gpytorch")
#' reticulate::conda_install("gpytorch", c("pytorch", "gpytorch"))
#'
#' # Configure environment
#' Sys.setenv(RETICULATE_PYTHON = "~/AppData/Local/r-miniconda/envs/gpytorch/python.exe")
#' reticulate::use_condaenv("gpytorch", required = TRUE)
#' }
#'
#' @references
#' `r format_bib("gardner2018gpytorch")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerRegrGPyTorch = R6Class("LearnerRegrGPyTorch",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      param_set = ps(
        kernel = p_fct(default = "rbf", levels = c("rbf", "matern"), tags = "train"),
        lr = p_dbl(default = 0.1, lower = 0.001, upper = 1, tags = "train"),
        n_iter = p_int(default = 50L, lower = 10L, upper = 500L, tags = "train"),
        device = p_fct(default = "auto", levels = c("auto", "cpu", "cuda"), tags = "train")
      )

      super$initialize(
        id = "regr.gpytorch",
        packages = c("mlr3extralearners", "reticulate"),
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "se"),
        param_set = param_set,
        label = "Gaussian Process (GPyTorch)",
        man = "mlr3extralearners::mlr_learners_regr.gpytorch"
      )
    }
  ),

  private = list(

    .train = function(task) {
      # Get parameters
      pv = self$param_set$get_values(tags = "train")
      
      # Get data
      X = as_numeric_matrix(task$data(cols = task$feature_names))
      y = task$truth()
      
      # Source Python script
      python_script = system.file("python", "gp_model.py", package = "mlr3extralearners")
      if (!file.exists(python_script)) {
        stop("GPyTorch Python wrapper not found. Check package installation.")
      }
      reticulate::source_python(python_script)
      
      # Create wrapper with defaults
      wrapper = GPyTorchWrapper(
        kernel = pv$kernel %??% "rbf",
        lr = pv$lr %??% 0.1,
        n_iter = as.integer(pv$n_iter %??% 50L),
        device = pv$device %??% "auto"
      )
      
      # Train
      wrapper$fit(X, y)
      
      list(
        wrapper = wrapper,
        device = wrapper$get_device_name()
      )
    },

    .predict = function(task) {
      state = self$model
      newdata = ordered_features(task, self)
      X_new = as_numeric_matrix(newdata)
      
      # Predict
      pred = state$wrapper$predict(X_new)
      
      if (self$predict_type == "response") {
        list(response = as.numeric(pred$mean))
      } else {
        list(
          response = as.numeric(pred$mean),
          se = sqrt(as.numeric(pred$variance))
        )
      }
    }
  )
)

.extralrns_dict$add("regr.gpytorch", LearnerRegrGPyTorch)



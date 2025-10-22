#' @title BoTorch MixedSingleTaskGP Regression Learner
#' @author Marc Becker
#' @name mlr_learners_regr.botorch_mixedsingletaskgp
#'
#' @description
#' Gaussian Process via [botorch](https://botorch.org/) and [gpytorch](https://gpytorch.ai/), using the `MixedSingleTaskGP`.
#' Uses \CRANpkg{reticulate} to interface with Python.
#'
#' @templateVar id regr.botorch_mixedsingletaskgp
#' @template learner
#'
#' @export
LearnerRegrBotorchMixedSingleTaskGP = R6Class("LearnerRegrBotorchMixedSingleTaskGP",
  inherit = LearnerRegr,

  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        device = p_fct(default = "cpu", levels = c("cpu", "cuda"), tags = "train")
      )
      super$initialize(
        id = "regr.botorch_mixedsingletaskgp",
        packages = c("mlr3extralearners", "reticulate"),
        feature_types = c("integer", "numeric", "logical", "factor"),
        predict_types = c("response", "se"),
        param_set = ps,
        properties = "marshal",
        label = "BoTorch MixedSingleTaskGP",
        man = "mlr3extralearners::mlr_learners_regr.botorch_mixedsingletaskgp"
      )
    },

    #' @description
    #' Marshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`marshal_model()`].
    marshal = function(...) {
      mlr3::learner_marshal(.learner = self, ...)
    },

    #' @description
    #' Unmarshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`unmarshal_model()`].
    unmarshal = function(...) {
      mlr3::learner_unmarshal(.learner = self, ...)
    }
  ),
  active = list(

    #' @field marshaled (`logical(1)`)
    #' Whether the learner has been marshaled.
    marshaled = function() {
      mlr3::learner_marshaled(self)
    }
  ),
  private = list(
    .train = function(task) {
      assert_python_packages(c("torch", "botorch", "gpytorch"))
      torch = reticulate::import("torch")
      botorch = reticulate::import("botorch")
      gpytorch = reticulate::import("gpytorch")
      MixedSingleTaskGP = botorch$models$gp_regression_mixed$MixedSingleTaskGP
      ExactMarginalLogLikelihood = gpytorch$mlls$ExactMarginalLogLikelihood

      pars = self$param_set$get_values(tags = "train")
      device = pars$device

      x = task$data(cols = task$feature_names)
      y = task$truth()

      # convert factors and logicals to integers
      cols = which(sapply(x, function(x) is.factor(x) || is.logical(x)))

      if (!length(cols)) {
        stop("At least one logical or categorical feature is required")
      }

      x[, (cols) := lapply(.SD, as.integer), .SDcols = cols]
      x = as_numeric_matrix(x)
      x_py = torch$as_tensor(x, dtype = torch$float64, device = device)
      y_py = torch$as_tensor(matrix(y, ncol = 1), dtype = torch$float64, device = device)

      # 0-based categorical dimensions
      cat_dims = reticulate::r_to_py(unname(as.list(cols - 1L)))

      gp = MixedSingleTaskGP(x_py, y_py, cat_dims = cat_dims)
      mll = ExactMarginalLogLikelihood(gp$likelihood, gp)
      botorch$fit$fit_gpytorch_mll(mll)

      structure(list(model = gp), class = "botorch_gp_model")
    },

    .predict = function(task) {
      assert_python_packages(c("torch", "botorch", "gpytorch"))
      torch = reticulate::import("torch")
      pars = self$param_set$get_values(tags = "predict")

      # compute the posterior distribution and extract the mean and covariance matrix
      # disable gradient computation with torch.no_grad() for efficiency
      reticulate::py_run_string("def predict_gp(model, x_py):
        import torch
        with torch.no_grad():
            posterior = model.posterior(x_py)
            mean = posterior.mean.cpu().numpy()
            covar = posterior.mvn.covariance_matrix.cpu().numpy()
        return mean, covar")

      gp = self$model$model
      # change the model to evaluation mode
      gp$eval()

      x = task$data(cols = task$feature_names)
      # convert factors and logicals to integers
      cols = which(sapply(x, function(x) is.factor(x) || is.logical(x)))
      x[, (cols) := lapply(.SD, as.integer), .SDcols = cols]
      x = as_numeric_matrix(x)
      x_py = torch$as_tensor(x, dtype = torch$float64, device = pars$device)

      posterior = reticulate::py$predict_gp(gp, x_py)
      mean = as.numeric(posterior[[1]])
      covar = posterior[[2]]

      if (self$predict_type == "response") {
        list(response = mean)
      } else {
        sd = sqrt(diag(covar))
        list(response = mean, se = sd)
      }
    }
  )
)

.extralrns_dict$add("regr.botorch_mixedsingletaskgp", LearnerRegrBotorchMixedSingleTaskGP)

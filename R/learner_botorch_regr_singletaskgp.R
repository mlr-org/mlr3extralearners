#' @title BoTorch SingleTaskGP Regression Learner
#' @author Marc Becker
#' @name mlr_learners_regr.botorch_singletaskgp
#'
#' @description
#' Gaussian Process via [botorch](https://botorch.org/) and [gpytorch](https://gpytorch.ai/), using the `SingleTaskGP` model.
#' Uses \CRANpkg{reticulate} to interface with Python.
#'
#' @templateVar id regr.botorch_singletaskgp
#' @template learner
#'
#' @export
LearnerRegrBotorchSingleTaskGP = R6Class("LearnerRegrBotorchSingleTaskGP",
  inherit = LearnerRegr,

  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        device = p_fct(default = "cpu", levels = c("cpu", "cuda"), tags = c("train", "predict"))
      )

      super$initialize(
        id = "regr.botorch_singletaskgp",
        packages = c("mlr3extralearners", "reticulate"),
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "se"),
        param_set = param_set,
        properties = "marshal",
        label = "BoTorch SingleTaskGP",
        man = "mlr3extralearners::mlr_learners_regr.botorch_singletaskgp"
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
      reticulate::py_require(c("torch", "botorch", "gpytorch"))
      torch = reticulate::import("torch")
      botorch = reticulate::import("botorch")
      gpytorch = reticulate::import("gpytorch")

      SingleTaskGP = botorch$models$SingleTaskGP
      ExactMarginalLogLikelihood = gpytorch$mlls$ExactMarginalLogLikelihood

      pars = self$param_set$get_values(tags = "train")
      device = pars$device

      # prepare data
      x = as_numeric_matrix(task$data(cols = task$feature_names))
      y = as.numeric(task$truth())
      x_py = torch$as_tensor(x, dtype = torch$float64, device = device)
      y_py = torch$as_tensor(matrix(y, ncol = 1), dtype = torch$float64, device = device)

      input_transform = botorch$models$transforms$Normalize(d = ncol(x))

      # Kernel selection
      gp = SingleTaskGP(x_py, y_py, input_transform = input_transform)
      mll = ExactMarginalLogLikelihood(gp$likelihood, gp)
      botorch$fit$fit_gpytorch_mll(mll)

      structure(list(gp = gp), class = "botorch_gp_model")
    },

    .predict = function(task) {
      reticulate::py_require(c("torch", "botorch", "gpytorch"))
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

      gp = self$model$gp
      # change the model to evaluation mode
      gp$eval()

      x = as_numeric_matrix(task$data(cols = task$feature_names))
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

.extralrns_dict$add("regr.botorch_singletaskgp", LearnerRegrBotorchSingleTaskGP)

#' @export
marshal_model.botorch_gp_model = function(model, inplace = FALSE, ...) {
  reticulate::py_require(c("torch", "botorch", "gpytorch", "pickle"))
  pickle = reticulate::import("pickle")
  pickled_model = pickle$dumps(model$gp)
  structure(list(
    marshaled = as.raw(pickled_model),
    packages = "mlr3extralearners"
  ), class = c("botorch_gp_model_marshaled", "marshaled"))
}

#' @export
unmarshal_model.botorch_gp_model_marshaled = function(model, inplace = FALSE, ...) {
  reticulate::py_require(c("torch", "botorch", "gpytorch", "pickle"))
  pickle = reticulate::import("pickle")
  model_obj = pickle$loads(reticulate::r_to_py(model$marshaled))
  structure(list(gp = model_obj), class = "botorch_gp_model")
}

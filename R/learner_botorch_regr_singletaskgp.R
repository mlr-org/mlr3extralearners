#' @title BoTorch SingleTaskGP Regression Learner
#' @author Marc Becker
#' @name mlr_learners_regr.botorch_singletaskgp
#'
#' @description
#' Gaussian Process via [botorch](https://botorch.org/) and [gpytorch](https://gpytorch.ai/), using the `SingleTaskGP` model.
#' See [here](https://botorch.readthedocs.io/en/latest/models.html#botorch.models.gp_regression.SingleTaskGP) for more details.
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
        device = p_fct(default = "cpu", levels = c("cpu", "cuda"), tags = c("train", "predict")),
        kernel = p_fct(levels = c("matern_2.5", "matern_1.5", "matern_0.5", "rbf", "linear", "polynomial", "periodic", "cosine", "rq", "piecewise_polynomial", "constant"), tags = "train", init = "rbf"),
        input_transform = p_fct(levels = c("normalize", "standardize", "log10", "warp", "none"), tags = "train", init = "normalize"),
        outcome_transform = p_fct(levels = c("standardize", "log", "none"), tags = "train", init = "standardize")
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
      assert_python_packages(c("torch", "botorch", "gpytorch"))
      torch = reticulate::import("torch")
      botorch = reticulate::import("botorch")
      gpytorch = reticulate::import("gpytorch")

      SingleTaskGP = botorch$models$SingleTaskGP
      ExactMarginalLogLikelihood = gpytorch$mlls$ExactMarginalLogLikelihood

      pars = self$param_set$get_values(tags = "train")
      device = pars$device
      kernel = pars$kernel

      x = as_numeric_matrix(task$data(cols = task$feature_names))
      y = as.numeric(task$truth())
      x_py = torch$as_tensor(x, dtype = torch$float64, device = device)
      y_py = torch$as_tensor(matrix(y, ncol = 1), dtype = torch$float64, device = device)

      input_trafo = pars$input_transform
      outcome_trafo = pars$outcome_transform

      input_transforms = botorch$models$transforms$input
      outcome_transforms = botorch$models$transforms$outcome

      input_transform = switch(input_trafo,
        normalize = input_transforms$Normalize(d = ncol(x)),
        standardize = input_transforms$InputStandardize(d = ncol(x)),
        log10 = input_transforms$Log10(indices = reticulate::r_to_py(as.list(seq_len(ncol(x)) - 1L))),
        warp = input_transforms$Warp(indices = reticulate::r_to_py(as.list(seq_len(ncol(x)) - 1L)), d = ncol(x)),
        none = NULL
      )

      outcome_transform = switch(outcome_trafo,
        standardize = outcome_transforms$Standardize(m = 1L),
        log = outcome_transforms$Log(),
        none = NULL
      )

      covar_module = switch(kernel,
        matern_2.5 = gpytorch$kernels$ScaleKernel(gpytorch$kernels$MaternKernel(nu = 2.5)),
        matern_1.5 = gpytorch$kernels$ScaleKernel(gpytorch$kernels$MaternKernel(nu = 1.5)),
        matern_0.5 = gpytorch$kernels$ScaleKernel(gpytorch$kernels$MaternKernel(nu = 0.5)),
        rbf = gpytorch$kernels$ScaleKernel(gpytorch$kernels$RBFKernel()),
        linear = gpytorch$kernels$ScaleKernel(gpytorch$kernels$LinearKernel()),
        polynomial = gpytorch$kernels$ScaleKernel(gpytorch$kernels$PolynomialKernel(power = 2L)),
        periodic = gpytorch$kernels$ScaleKernel(gpytorch$kernels$PeriodicKernel()),
        cosine = gpytorch$kernels$ScaleKernel(gpytorch$kernels$CosineKernel()),
        rq = gpytorch$kernels$ScaleKernel(gpytorch$kernels$RQKernel()),
        piecewise_polynomial = gpytorch$kernels$ScaleKernel(gpytorch$kernels$PiecewisePolynomialKernel()),
        constant = gpytorch$kernels$ScaleKernel(gpytorch$kernels$ConstantKernel())
      )

      gp = SingleTaskGP(x_py, y_py, covar_module = covar_module, input_transform = input_transform, outcome_transform = outcome_transform)
      mll = ExactMarginalLogLikelihood(gp$likelihood, gp)
      botorch$fit$fit_gpytorch_mll(mll)
      structure(list(model = gp), class = "botorch_gp_model")
    },

    .predict = function(task) {
      assert_python_packages(c("torch", "botorch", "gpytorch"))
      torch = reticulate::import("torch")
      pars = self$param_set$get_values(tags = "predict")

      # compute the posterior distribution and extract the mean and variance
      # disable gradient computation with torch.no_grad() for efficiency
      reticulate::py_run_string("def predict_gp(model, x_py):
        import torch
        with torch.no_grad():
            posterior = model.posterior(x_py)
            mean = posterior.mean.cpu().numpy()
            variance = posterior.variance.cpu().numpy()
        return mean, variance")

      gp = self$model$model
      # change the model to evaluation mode
      gp$eval()

      x = as_numeric_matrix(task$data(cols = task$feature_names))
      x_py = torch$as_tensor(x, dtype = torch$float64, device = pars$device)

      posterior = reticulate::py$predict_gp(gp, x_py)
      mean = as.numeric(posterior[[1]])
      variance = as.numeric(posterior[[2]])

      if (self$predict_type == "response") {
        list(response = mean)
      } else {
        list(response = mean, se = sqrt(variance))
      }
    }
  )
)

.extralrns_dict$add("regr.botorch_singletaskgp", LearnerRegrBotorchSingleTaskGP)

#' @export
marshal_model.botorch_gp_model = function(model, inplace = FALSE, ...) {
  reticulate::py_require(c("torch", "botorch", "gpytorch"))
  pickle = reticulate::import("pickle")
  pickled_model = pickle$dumps(model$model)
  structure(list(
    marshaled = as.raw(pickled_model),
    packages = "mlr3extralearners"
  ), class = c("botorch_gp_model_marshaled", "marshaled"))
}

#' @export
unmarshal_model.botorch_gp_model_marshaled = function(model, inplace = FALSE, ...) {
  reticulate::py_require(c("torch", "botorch", "gpytorch"))
  pickle = reticulate::import("pickle")
  model_obj = pickle$loads(reticulate::r_to_py(model$marshaled))
  structure(list(model = model_obj), class = "botorch_gp_model")
}

#' @title BoTorch Fully Bayesian SingleTaskGP Regression Learner
#' @author Marc Becker
#' @name mlr_learners_regr.botorch_fullybayesian
#'
#' @description
#' Fully Bayesian Gaussian Process via [botorch](https://botorch.org/), using the `SaasFullyBayesianSingleTaskGP` model.
#' Unlike standard GP models that use MAP estimation for hyperparameters, this model uses MCMC (NUTS) to learn
#' full posterior distributions over kernel hyperparameters.
#' See [here](https://botorch.readthedocs.io/en/latest/models.html#module-botorch.models.fully_bayesian) for more details.
#' Uses \CRANpkg{reticulate} to interface with Python.
#'
#' @templateVar id regr.botorch_fullybayesian
#' @template learner
#'
#' @export
LearnerRegrBotorchFullyBayesian = R6Class("LearnerRegrBotorchFullyBayesian",
  inherit = LearnerRegr,

  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        device = p_fct(default = "cpu", levels = c("cpu", "cuda"), tags = c("train", "predict")),
        input_transform = p_fct(levels = c("normalize", "standardize", "log10", "warp", "none"), tags = "train", init = "normalize"),
        outcome_transform = p_fct(levels = c("standardize", "none"), tags = "train", init = "standardize"),
        warmup_steps = p_int(lower = 1L, tags = "train", init = 512L),
        num_samples = p_int(lower = 1L, tags = "train", init = 256L),
        thinning = p_int(lower = 1L, tags = "train", init = 16L),
        max_tree_depth = p_int(lower = 1L, tags = "train", init = 6L),
        disable_progbar = p_lgl(tags = "train", init = TRUE),
        jit_compile = p_lgl(tags = "train", init = FALSE)
      )

      super$initialize(
        id = "regr.botorch_fullybayesian",
        packages = c("mlr3extralearners", "reticulate"),
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "se"),
        param_set = param_set,
        properties = "marshal",
        label = "BoTorch Fully Bayesian GP",
        man = "mlr3extralearners::mlr_learners_regr.botorch_fullybayesian"
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

      SaasFullyBayesianSingleTaskGP = botorch$models$fully_bayesian$SaasFullyBayesianSingleTaskGP

      pars = self$param_set$get_values(tags = "train")
      device = pars$device

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
        none = NULL
      )

      gp = SaasFullyBayesianSingleTaskGP(x_py, y_py, input_transform = input_transform, outcome_transform = outcome_transform)

      # fit using NUTS instead of MLE
      fit_nuts = botorch$fit$fit_fully_bayesian_model_nuts
      nuts_args = list(model = gp)
      if (!is.null(pars$warmup_steps)) nuts_args$warmup_steps = as.integer(pars$warmup_steps)
      if (!is.null(pars$num_samples)) nuts_args$num_samples = as.integer(pars$num_samples)
      if (!is.null(pars$thinning)) nuts_args$thinning = as.integer(pars$thinning)
      if (!is.null(pars$max_tree_depth)) nuts_args$max_tree_depth = as.integer(pars$max_tree_depth)
      if (!is.null(pars$disable_progbar)) nuts_args$disable_progbar = pars$disable_progbar
      if (!is.null(pars$jit_compile)) nuts_args$jit_compile = pars$jit_compile
      do.call(fit_nuts, nuts_args)

      structure(list(model = gp), class = "botorch_gp_model")
    },

    .predict = function(task) {
      assert_python_packages(c("torch", "botorch", "gpytorch"))
      torch = reticulate::import("torch")
      pars = self$param_set$get_values(tags = "predict")

      # compute the posterior distribution and extract the mean and variance
      # the fully bayesian model returns a GaussianMixturePosterior with an extra
      # MCMC samples dimension, so we average over the MCMC samples (dim=0)
      reticulate::py_run_string("def predict_fully_bayesian_gp(model, x_py):
        import torch
        with torch.no_grad():
            posterior = model.posterior(x_py)
            mean = posterior.mean.mean(dim=0).cpu().numpy()
            variance = posterior.variance.mean(dim=0).cpu().numpy()
        return mean, variance")

      gp = self$model$model
      # change the model to evaluation mode
      gp$eval()

      x = as_numeric_matrix(task$data(cols = task$feature_names))
      x_py = torch$as_tensor(x, dtype = torch$float64, device = pars$device)

      posterior = reticulate::py$predict_fully_bayesian_gp(gp, x_py)
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

.extralrns_dict$add("regr.botorch_fullybayesian", LearnerRegrBotorchFullyBayesian)

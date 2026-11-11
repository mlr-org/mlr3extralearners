#' @title TabFM Classification Learner
#' @author be-marc
#' @name mlr_learners_classif.tabfm
#'
#' @description
#' Tabular foundation model developed by Google Research.
#' Uses \CRANpkg{reticulate} to interface with the [`tabfm`](https://github.com/google-research/tabfm) Python package.
#' The model makes zero-shot predictions via in-context learning and is not trained on the data in the usual sense.
#' Features are passed to `tabfm` as a data frame, so that categorical features are ordinal encoded and missing
#' values are imputed by the package's own preprocessing pipeline.
#'
#' @templateVar class LearnerClassifTabFM
#' @template sections_tabfm
#'
#' @section Custom mlr3 parameters:
#'
#' - `backend` selects the computational backend, either `"jax"` or `"pytorch"`.
#'   It also determines which pre-trained weights are downloaded and which Python packages are installed.
#'
#' - `device` is only used by the `"pytorch"` backend and is passed as a string to the model loader,
#'   e.g., `"cpu"` or `"cuda"`.
#'   The `"jax"` backend ignores this parameter and selects the device automatically.
#'
#' - `norm_methods` accepts a single string or a character vector with values from
#'   `"none"`, `"power"`, `"quantile"`, `"quantile_rtdl"`, and `"robust"`.
#'
#' - `n_feature_crosses` and `n_svd_features` accept either a non-negative integer or the string `"sqrt"`.
#'
#' - `cache_context` is only supported by the `"pytorch"` backend.
#'
#' - `random_state` accepts either an integer or the special value `"None"`
#'   which corresponds to `None` in Python.
#'
#' @templateVar id classif.tabfm
#' @template learner
#'
#' @references
#' `r format_bib("google2026tabfm")`
#'
#' @template seealso_learner
#' @export
LearnerClassifTabFM = R6Class("LearnerClassifTabFM",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        backend = p_fct(c("jax", "pytorch"), init = "pytorch", tags = "train"),
        device = p_uty(tags = "train", custom_check = check_string),
        n_estimators = p_int(lower = 1L, default = 32L, tags = "train"),
        norm_methods = p_uty(tags = "train", custom_check = function(x) {
          check_subset(x, c("none", "power", "quantile", "quantile_rtdl", "robust"))
        }),
        feat_shuffle_method = p_fct(c("random", "none"), default = "random", tags = "train"),
        class_shift = p_lgl(default = TRUE, tags = "train"),
        permute_categorical = p_lgl(default = FALSE, tags = "train"),
        outlier_threshold = p_dbl(default = 4.0, tags = "train"),
        max_num_features = p_int(lower = 1L, default = 500L, special_vals = list("None"), tags = "train"),
        max_num_rows = p_int(lower = 1L, special_vals = list("None"), tags = "train"),
        softmax_temperature = p_dbl(lower = 0, default = 0.9, tags = "train"),
        average_logits = p_lgl(default = TRUE, tags = "train"),
        use_amp = p_lgl(default = TRUE, tags = "train"),
        batch_size = p_int(lower = 1L, default = 1L, special_vals = list("None"), tags = "train"),
        random_state = p_int(default = 42L, special_vals = list("None"), tags = "train"),
        verbose = p_lgl(default = FALSE, tags = "train"),
        cat_encoder_mode = p_fct(c("appearance", "frequency"), default = "appearance", tags = "train"),
        binary_calibration_method = p_fct(c("platt"), special_vals = list("None"), tags = "train"),
        multiclass_calibration_method = p_fct(c("vector"), special_vals = list("None"), tags = "train"),
        num_folds_for_cv = p_int(lower = 2L, default = 5L, tags = "train"),
        n_feature_crosses = p_uty(default = 0L, tags = "train", custom_check = function(x) {
          if (identical(x, "sqrt") || test_int(x, lower = 0)) TRUE else "Must be a non-negative integer or 'sqrt'"
        }),
        n_svd_features = p_uty(default = 0L, tags = "train", custom_check = function(x) {
          if (identical(x, "sqrt") || test_int(x, lower = 0)) TRUE else "Must be a non-negative integer or 'sqrt'"
        }),
        total_svd_pool = p_int(lower = 1L, special_vals = list("None"), tags = "train"),
        enable_nnls = p_lgl(default = FALSE, tags = "train"),
        nnls_beta = p_dbl(default = 0.75, tags = "train"),
        calibration_lambda = p_dbl(lower = 0, default = 1e-2, tags = "train"),
        min_rows_for_single_val_split = p_int(lower = 0L, default = 2000L, tags = "train"),
        cache_context = p_lgl(default = FALSE, tags = "train"),
        maybe_quantize_kv_cache = p_lgl(default = TRUE, tags = "train"),
        keep_cache_on_device = p_lgl(default = TRUE, tags = "train")
      )

      super$initialize(
        id = "classif.tabfm",
        feature_types = c("integer", "numeric", "logical", "character", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        packages = "reticulate",
        properties = c("twoclass", "multiclass", "missings", "marshal"),
        label = "TabFM Classifier",
        man = "mlr3extralearners::mlr_learners_classif.tabfm"
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
      pars = self$param_set$get_values(tags = "train")
      backend = pars$backend %??% "pytorch"
      device = pars$device
      model = tabfm_load_model(pars, "classification")
      pars$backend = NULL
      pars$device = NULL
      pars = tabfm_convert_pars(pars)

      tabfm = reticulate::import("tabfm")

      # pass a data.frame so that tabfm infers categorical columns and imputes missing values;
      # a plain numeric matrix would bypass tabfm's preprocessing pipeline and reject NaNs
      x_py = reticulate::r_to_py(as.data.frame(task$data(cols = task$feature_names)))
      y_py = reticulate::r_to_py(task$truth())

      pars$model = model
      classifier = mlr3misc::invoke(tabfm$TabFMClassifier, .args = pars)
      fitted = mlr3misc::invoke(classifier$fit, X = x_py, y = y_py)

      structure(
        list(fitted = fitted, backend = backend, device = device, model_type = "classification"),
        class = "tabfm_model"
      )
    },

    .predict = function(task) {
      reticulate::import("tabfm")
      model = self$model$fitted

      x_py = reticulate::r_to_py(as.data.frame(task$data(cols = task$feature_names)))

      if (self$predict_type == "response") {
        response = mlr3misc::invoke(model$predict, X = x_py)
        response = reticulate::py_to_r(response)
        list(response = response)
      } else {
        prob = mlr3misc::invoke(model$predict_proba, X = x_py)
        prob = reticulate::py_to_r(prob)
        colnames(prob) = as.character(reticulate::py_to_r(model$classes_))
        list(prob = prob)
      }
    }
  )
)

.extralrns_dict$add("classif.tabfm", LearnerClassifTabFM)


# Installs the selected backend, imports tabfm, and loads the pre-trained model for `model_type`.
tabfm_load_model = function(pars, model_type) {
  backend = pars$backend %??% "pytorch"
  # safetensors is required by the pytorch backend to load the weights but is not declared by tabfm[pytorch]
  requirement = if (backend == "jax") "tabfm[jax]" else c("tabfm[pytorch]", "safetensors")
  assert_python_packages(requirement)
  tabfm = reticulate::import("tabfm")
  loader = if (backend == "jax") tabfm$tabfm_v1_0_0_jax else tabfm$tabfm_v1_0_0_pytorch
  load_args = list(model_type = model_type)
  if (backend == "pytorch" && !is.null(pars$device)) {
    load_args$device = pars$device
  }
  mlr3misc::invoke(loader$load, .args = load_args)
}

# Converts the special "None" values to python None and coerces the integer-or-"sqrt" parameters.
tabfm_convert_pars = function(pars) {
  none_params = c(
    "max_num_features", "max_num_rows", "batch_size", "random_state",
    "total_svd_pool", "binary_calibration_method", "multiclass_calibration_method"
  )
  for (p in none_params) {
    if (identical(pars[[p]], "None")) {
      pars[[p]] = reticulate::py_none()
    }
  }
  for (p in c("n_feature_crosses", "n_svd_features")) {
    if (!is.null(pars[[p]]) && !identical(pars[[p]], "sqrt")) {
      pars[[p]] = as.integer(pars[[p]])
    }
  }
  pars
}


#' @export
marshal_model.tabfm_model = function(model, inplace = FALSE, ...) {
  reticulate::import("tabfm")
  # pickle should be available in any python environment
  pickle = reticulate::import("pickle")

  # The pre-trained backbone is several GB and always re-loadable from the Hugging Face cache,
  # so we detach it before pickling and reload it on unmarshal instead of serializing it.
  fitted = model$fitted
  backbone = fitted$model
  fitted$model = reticulate::py_none()
  pickled = tryCatch(as.raw(pickle$dumps(fitted)), finally = {
    # restore the backbone so the in-memory learner keeps working
    fitted$model = backbone
  })

  structure(list(
    marshaled = pickled,
    backend = model$backend,
    device = model$device,
    model_type = model$model_type,
    packages = "mlr3extralearners"
  ), class = c("tabfm_model_marshaled", "marshaled"))
}

#' @export
unmarshal_model.tabfm_model_marshaled = function(model, inplace = FALSE, ...) {
  reticulate::import("tabfm")
  pickle = reticulate::import("pickle")
  # unpickle the fitted state and reattach a freshly loaded backbone
  fitted = pickle$loads(reticulate::r_to_py(model$marshaled))
  backbone = tabfm_load_model(list(backend = model$backend, device = model$device), model$model_type)
  fitted$model = backbone
  structure(
    list(fitted = fitted, backend = model$backend, device = model$device, model_type = model$model_type),
    class = "tabfm_model"
  )
}

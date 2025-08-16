#' @title TabPFN Regression Learner
#' @author b-zhou
#' @name mlr_learners_regr.tabpfn
#'
#' @inherit mlr_learners_classif.tabpfn description
#'
#' @templateVar class LearnerRegrTabPFN
#' @template sections_tabpfn
#'
#' @section Custom mlr3 parameters:
#'
#' - `output_type` corresponds to the same argument of the `.predict()` method of the `TabPFNRegressor` class,
#'   but only supports the options `"mean"`, `"median"` and `"mode"`.
#'   The point predictions are stored as `$response` of the prediction object.
#'
#' - `categorical_feature_indices` uses R indexing instead of zero-based Python indexing.
#'
#' - `device` must be a string.
#'   If set to `"auto"`, the behavior is the same as original.
#'   Otherwise, the string is passed as argument to `torch.device()` to create a device.
#'
#' - `inference_precision` must be `"auto"`, `"autocast"`,
#'   or a [`torch.dtype`](https://docs.pytorch.org/docs/stable/tensor_attributes.html) string,
#'   e.g., `"torch.float32"`, `"torch.float64"`, etc.
#'   Non-float dtypes are not supported.
#'
#' - `inference_config` is currently not supported.
#'
#' - `random_state` accepts either an integer or the special value `"None"`
#'   which corresponds to `None` in Python.
#'   Following the original Python implementation, the default `random_state` is `0`.
#'
#' @templateVar id regr.tabpfn
#' @template learner
#'
#' @inherit mlr_learners_classif.tabpfn references
#'
#' @template seealso_learner
#' @export
LearnerRegrTabPFN = R6Class("LearnerRegrTabPFN",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        output_type = p_fct(
          c("mean", "median", "mode"),
          default = "mean",
          tags = "predict"
        ),
        n_estimators = p_int(lower = 1L, default = 4L, tags = "train"),
        categorical_features_indices = p_uty(tags = "train", custom_check = function(x) {
          # R indexing is used
          check_integerish(x, lower = 1, any.missing = FALSE, min.len = 1)
        }),
        softmax_temperature = p_dbl(default = 0.9, lower = 0, tags = "train"),
        average_before_softmax = p_lgl(default = FALSE, tags = "train"),
        model_path = p_uty(default = "auto", tags = "train", custom_check = check_string),
        device = p_uty(default = "auto", tags = "train", custom_check = check_string),
        ignore_pretraining_limits = p_lgl(default = FALSE, tags = "train"),
        inference_precision = p_fct(
          c(
            "auto", "autocast",
            # all float dtypes
            # from https://docs.pytorch.org/docs/stable/tensor_attributes.html
            "torch.float32", "torch.float",
            "torch.float64", "torch.double",
            "torch.float16", "torch.half",
            "torch.bfloat16"
          ),
          default = "auto",
          tags = "train"
        ),
        fit_mode = p_fct(
          c("low_memory", "fit_preprocessors", "fit_with_cache"),
          default = "fit_preprocessors",
          tags = "train"
        ),
        memory_saving_mode = p_uty(default = "auto", tags = "train", custom_check = function(x) {
          if (identical(x, "auto") || test_flag(x) || test_number(x, lower = 0)) {
            TRUE
          } else {
            "Invalid value for memory_saving_mode. Must be 'auto', a TRUE/FALSE value, or a number > 0."
          }
        }),
        random_state = p_int(default = 0L, special_vals = list("None"), tags = "train"),
        n_jobs = p_int(lower = 1L, init = 1L, special_vals = list(-1L), tags = "train")
      )

      super$initialize(
        id = "regr.tabpfn",
        feature_types = c("integer", "numeric", "logical"),
        predict_types = c("response", "quantiles"),
        param_set = ps,
        packages = "reticulate",
        properties = c("missings", "marshal"),
        label = "TabPFN Regressor",
        man = "mlr3extralearners::mlr_learners_regr.tabpfn"
      )

      self$quantile_response = 0.5
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
      assert_python_packages(c("torch", "tabpfn"))
      tabpfn = reticulate::import("tabpfn")
      torch = reticulate::import("torch")

      pars = self$param_set$get_values(tags = "train")

      inference_precision = pars$inference_precision
      if (!is.null(inference_precision) && startsWith(inference_precision, "torch.")) {
        dtype = strsplit(inference_precision, "\\.")[[1]][2]
        pars$inference_precision = reticulate::py_get_attr(torch, dtype)
      }

      if (!is.null(pars$device) && pars$device != "auto") {
        torch = reticulate::import("torch")
        pars$device = torch$device(pars$device)
      }

      if (identical(pars$random_state, "None")) {
        pars$random_state = reticulate::py_none()
      }

      # x is an (n_samples, n_features) array
      x = as.matrix(task$data(cols = task$feature_names))
      # force NaN to make conversion work,
      # otherwise reticulate will not convert NAs in logical and integer columns to
      # np.nan properly
      x[is.na(x)] = NaN
      # y is an (n_samples,) array
      y = task$truth()

      # convert categorical_features_indices to python indexing
      categ_indices = pars$categorical_features_indices
      if (!is.null(categ_indices)) {
        if (max(categ_indices) > ncol(x)) {
          stop("categorical_features_indices must not exceed number of features")
        }
        pars$categorical_features_indices = as.integer(categ_indices - 1)
      }

      regressor = mlr3misc::invoke(tabpfn$TabPFNRegressor, .args = pars)
      x_py = reticulate::r_to_py(x)
      y_py = reticulate::r_to_py(y)
      fitted = mlr3misc::invoke(regressor$fit, X = x_py, y = y_py)

      structure(list(fitted = fitted), class = "tabpfn_model")
    },

    .predict = function(task) {
      assert_python_packages("tabpfn")
      reticulate::import("tabpfn")
      model = self$model$fitted

      x = as.matrix(task$data(cols = task$feature_names))
      # NA -> NaN, same reason as in $.train
      x[is.na(x)] = NaN
      x_py = reticulate::r_to_py(x)

      if (self$predict_type == "response") {
        pars = self$param_set$get_values(tags = "predict")
        response = mlr3misc::invoke(model$predict, X = x_py, .args = pars)
        response = reticulate::py_to_r(response)
        list(response = response)
      } else {
        quantiles = mlr3misc::invoke(
          model$predict,
          X = x_py,
          output_type = "quantiles",
          # tabpfn requires a list object as quantiles, even in the case of a single quantile
          quantiles = as.list(self$quantiles)
        )
        quantiles = do.call(cbind, reticulate::py_to_r(quantiles))
        attr(quantiles, "probs") = self$quantiles
        attr(quantiles, "response") = self$quantile_response
        list(quantiles = quantiles)
      }
    }
  )
)

.extralrns_dict$add("regr.tabpfn", LearnerRegrTabPFN)

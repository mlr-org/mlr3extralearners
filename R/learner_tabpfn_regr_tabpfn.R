#' @title TabPFN Regression Learner
#' @author b-zhou
#' @name mlr_learners_regr.tabpfn
#'
#' @description
#' Foundation model for tabular data.
#' Uses \CRANpkg{reticulate} to interface with the [`tabpfn`](https://github.com/PriorLabs/TabPFN) Python package.
#'
#' @section Installation:
#' While the Python dependencies are handled via `reticulate::py_require()`, you can
#' manually specify a virtual environment by calling `reticulate::use_virtualenv()`
#' prior to calling the `$train()` function.
#' In this virtual environment, the `tabpfn` package and its dependencies must be installed.
#'
#' @section Saving a Learner:
#' In order to save a `LearnerRegrTabPFN` for later usage,
#' it is necessary to call the `$marshal()` method on the `Learner`
#' before writing it to disk, as the object will otherwise not be saved correctly.
#' After loading a marshaled `LearnerRegrTabPFN` into R again,
#' you then need to call `$unmarshal()` to transform it into a useable state.
#'
#' @section Initial parameter values:
#' - `n_jobs` is initialized to 1 to avoid threading conflicts with \CRANpkg{future}.#'
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
#' - `inference_precision` must be `"auto"` or `"autocast"`.
#'   Passing `torch.dtype` is currently not supported.
#'
#' - `inference_config` is currently not supported.
#'
#' @template learner
#'
#' @references
#' `r format_bib("hollmann2025tabpfn", "hollmann2023tabpfn")`
#'
#' @template seealso_learner
#' @template example
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
        n_estimators = p_int(lower = 1, default = 4, tags = "train"),
        categorical_features_indices = p_uty(tags = "train", custom_check = function(x) {
          # R indexing is used
          check_integerish(x, lower = 1, any.missing = FALSE, min.len = 1)
        }),
        softmax_temperature = p_dbl(default = 0.9, lower = 0, tags = "train"),
        balance_probabilities = p_lgl(default = FALSE, tags = "train"),
        average_before_softmax = p_lgl(default = FALSE, tags = "train"),
        model_path = p_uty(default = "auto", tags = "train", custom_check = check_string),
        device = p_uty(default = "auto", tags = "train", custom_check = check_string),
        ignore_pretraining_limits = p_lgl(default = FALSE, tags = "train"),
        inference_precision = p_fct(
          # torch.dtype option is currently not supported
          c("auto", "autocast"),
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
        random_state = p_int(default = 0, tags = "train"),
        n_jobs = p_int(lower = 1, default = 1, special_vals = list(-1), tags = "train")
      )

      # set n_jobs to 1 as mlr3 has its own parallelization
      ps$values$n_jobs = 1

      super$initialize(
        id = "regr.tabpfn",
        feature_types = c("integer", "numeric", "logical"),
        predict_types = c("response", "quantiles"),
        param_set = ps,
        properties = c("missings", "marshal"),
        label = "TabPFN Regressor",
        man = "mlr3extralearners::mlr_learners_regr.tabpfn"
      )

      self$quantile_response = 0.5
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
    #' @field marshaled (`logical(1)`)\cr
    #' Whether the learner has been marshaled.
    marshaled = function() {
      mlr3::learner_marshaled(self)
    }
  ),

  private = list(
    .train = function(task) {
      reticulate::py_require("torch")
      reticulate::py_require("tabpfn")
      tabpfn = reticulate::import("tabpfn")

      pars = self$param_set$get_values(tags = "train")

      # create torch device
      if (!is.null(pars$device) && pars$device != "auto") {
        torch = reticulate::import("torch")
        pars$device = torch$device(pars$device)
      }

      # x is an (n_samples, n_features) array
      x = as.matrix(task$data(cols = task$feature_names))
      # force NaN to make conversion work
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

      # create tabpfn model
      regressor = mlr3misc::invoke(tabpfn$TabPFNRegressor, .args = pars)
      # prepare python data
      x_py = reticulate::r_to_py(x)
      y_py = reticulate::r_to_py(y)
      # fit model
      fitted = mlr3misc::invoke(regressor$fit, X = x_py, y = y_py)

      structure(list(fitted = fitted), class = "tabpfn_model")
    },

    .predict = function(task) {
      model = self$model$fitted
      # get test data
      x = as.matrix(task$data(cols = task$feature_names))
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


#' @export
marshal_model.tabpfn_model = function(model, inplace = FALSE, ...) {
  # pickle should be available in any python environment
  pickle = reticulate::import("pickle")
  # save model as bytes
  pickled = pickle$dumps(model$fitted)
  # ensure object is converted to R
  pickled = as.raw(pickled)

  structure(list(
    marshaled = pickled,
    packages = "mlr3extralearners"
  ), class = c("tabpfn_model_marshaled", "marshaled"))
}

#' @export
unmarshal_model.tabpfn_model_marshaled = function(model, inplace = FALSE, ...) {
  pickle = reticulate::import("pickle")
  # unpickle
  fitted = pickle$loads(reticulate::r_to_py(model$marshaled))
  structure(list(fitted = fitted), class = "tabpfn_model")
}

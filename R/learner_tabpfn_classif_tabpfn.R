#' @title TabPFN Classification Learner
#' @author b-zhou
#' @name mlr_learners_classif.tabpfn
#'
#' @description
#' Foundation model for tabular data.
#' Uses \CRANpkg{reticulate} to interface with the [`tabpfn`](https://github.com/PriorLabs/TabPFN) Python package.
#'
#' @templateVar class LearnerClassifTabPFN
#' @template sections_tabpfn
#'
#' @section Custom mlr3 parameters:
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
#' @templateVar id classif.tabpfn
#' @template learner
#'
#' @references
#' `r format_bib("hollmann2025tabpfn", "hollmann2023tabpfn")`
#'
#' @template seealso_learner
#' @export
LearnerClassifTabPFN = R6Class("LearnerClassifTabPFN",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        n_estimators = p_int(lower = 1L, default = 4L, tags = "train"),
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
        id = "classif.tabpfn",
        feature_types = c("integer", "numeric", "logical"),
        predict_types = c("response", "prob"),
        param_set = ps,
        packages = "reticulate",
        properties = c("twoclass", "multiclass", "missings", "marshal"),
        label = "TabPFN Classifier",
        man = "mlr3extralearners::mlr_learners_classif.tabpfn"
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

      classifier = mlr3misc::invoke(tabpfn$TabPFNClassifier, .args = pars)
      x_py = reticulate::r_to_py(x)
      y_py = reticulate::r_to_py(y)
      fitted = mlr3misc::invoke(classifier$fit, X = x_py, y = y_py)

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
        response = mlr3misc::invoke(model$predict, X = x_py)
        response = reticulate::py_to_r(response)
        list(response = response)
      } else {
        prob = mlr3misc::invoke(model$predict_proba, X = x_py)
        prob = reticulate::py_to_r(prob)
        colnames(prob) = reticulate::py_to_r(model$classes_)
        list(prob = prob)
      }
    }
  )
)

.extralrns_dict$add("classif.tabpfn", LearnerClassifTabPFN)


#' @export
marshal_model.tabpfn_model = function(model, inplace = FALSE, ...) {
  reticulate::py_require("tabpfn")
  reticulate::import("tabpfn")
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
  reticulate::py_require("tabpfn")
  reticulate::import("tabpfn")
  pickle = reticulate::import("pickle")
  # unpickle
  fitted = pickle$loads(reticulate::r_to_py(model$marshaled))
  structure(list(fitted = fitted), class = "tabpfn_model")
}

#' @title TabPFN Classification Learner
#' @author b-zhou
#' @name mlr_learners_classif.tabpfn
#'
#' @description
#' Foundation model for tabular data.
#' Uses \CRANpgk{reticulate} to interface with the `tabpfn` Python package.
#' 
#' @section Initial parameter values:
#' - `n_jobs` is initialized to 1 to avoid threading conflicts with \CRANpkg{future}.#'
#'
#' @section Custom mlr3 parameters:
#' - `train_mode`: Controls the behavior of the `$train()` method.
#'   Possible options are `"fit"`, `"store"`, and `"both"` (default).
#'   - If `"fit"` is selected, the `$train()` function creates a Python object
#'     of the class `TabPFNClassifier` and calls its `fit()` function.
#'   - If `"store"` is selected, the `$train()` function only stores the training data.
#'   - If `"both"` is selected, the `$train()` function does both.
#'   The fitted model (Python object), if created, is stored in the `$model$fitted` slot.
#'   The training data, if stored, can be accessed in the `$model$X` and $model$y` slots.
#'   Note that if you save this learner and load it later, the fitted model (Python object)
#'   in `$model$fitted` will be corrupted due to serialization issues.
#'   Therefore, it is recommended to use the `"store"` or `"both"` option to store
#'   the training data.
#'   When calling `$predict()` without a fitted model stored, the model will be fitted
#'   on-the-fly and stored in `$model$fitted` henceforth.
#' 
#' - `categorical_feature_indices` uses R indexing instead of zero-based Python indexing.
#' 
#' - `device` must be a string.
#'   If set to `"auto"`, the behavior is the same as original.
#'   Otherwise, the string is passed as argument to `torch.device()` to create a device.
#' 
#' - `inference_precision` must be a `torch.dtype` name (e.g., `"float32"`
#'   is interpreted as `torch.float32`) or `"auto"` or `"autocast"`.
#' 
#' - `n_jobs` must be a positive integer specifying the number of CPU cores to use.
#'   The `-1` option is disabled.
#' 
#' @template learner
#'
#' @references
#' `r format_bib("hollmann2025tabpfn", "hollmann2023tabpfn")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifTabPFN = R6Class("LearnerClassifTabPFN",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        train_mode = p_fct(c("fit", "store", "both"), tags = "train"),
        n_estimators = p_int(lower = 1, default = 4, tags = "train"),
        categorical_features_indices = p_int(lower = 1, tags = "train"), # R indexing is used
        softmax_temperature = p_dbl(default = 0.9, lower = 0, tags = "train"),
        balance_probabilities = p_lgl(default = FALSE, tags = "train"),
        average_before_softmax = p_lgl(default = FALSE, tags = "train"),
        model_path = p_uty(default = "auto", tags = "train", custom_check = check_string),
        device = p_uty(default = "auto", tags = "train", custom_check = check_string),
        ignore_pretraining_limits = p_lgl(default = FALSE, tags = "train"),
        inference_precision = p_fct(
          # do we need more dtypes?
          c("float32", "float64", "bfloat16", "float16", "auto", "autocast"),
          default = "auto",
          tags = "train"),
        fit_mode = p_fct(
          c("low_memory", "fit_preprocessors", "fit_with_cache"),
          default = "fit_preprocessors",
          tags = "train"),
        memory_saving_mode = p_uty(default = "auto", tags = "train", custom_check = function(x) {
          if ((x == "auto") || test_flag(x) || test_number(x, lower = 0)) {
            TRUE
          } else {
            "Invalid value for memory_saving_mode. Must be 'auto', a TRUE/FALSE value, or a number > 0."
          }
        }),
        random_state = p_int(default = 0, tags = "train"),
        n_jobs = p_int(lower = 1, default = 1, tags = "train")
      )

      # set train_mode to "both" -- fit python model and store training data
      ps$values$train_mode = "both"
      # set n_jobs to 1 as mlr3 has its own parallelization
      ps$values$n_jobs = 1
      # set a seed for the python `fit` function, following TabPFN's default
      ps$values$random_state = 0

      super$initialize(
        id = "classif.tabpfn",
        feature_types = c("integer", "numeric", "logical"),
        predict_types = c("response", "prob"),
        packages = "rpart",
        param_set = ps,
        properties = c("missings", "twoclass", "multiclass"),
        label = "TabPFN Classifier",
        man = "mlr3extralearners::mlr_learners_classif.tabpfn"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      train_mode = pars$train_mode
      if (train_mode == "both") {
        train_mode = c("fit", "store")
      }
      # remove train_mode from the param set that will be passed to the model
      pars$train_mode = NULL

      # create torch device
      if (!is.null(pars$device)) {
        torch = reticulate::py_require("torch")
        pars$device = torch$device(pars$device)
      }
      # create dtype object
      dtype = pars$inference_precision
      if (!is.null(dtype) && !dtype %in% c("auto", "autocast")) {
        torch = reticulate::py_require("torch")
        pars$inference_precision = switch(dtype,
          float32 = torch$float32,
          float64 = torch$float64,
          bfloat16 = torch$bfloat16,
          float16 = torch$float16
        )
      }

      # get training data
      target_name = task$target_names[[1]]
      # X is an (n_samples, n_features) array,
      X = as.matrix(task$data()[, -target_name, with = FALSE])
      # y is an (n_samples,) array
      y = task$data()[[target_name]]

      res = list()
      if ("fit" %in% train_mode) {
        # create python model and fit
        reticulate::py_require("tabpfn")
        tabpfn = reticulate::import("tabpfn")

        if (!is.null(pars$categorical_features_indices)) {
          # convert to python indexing
          pars$categorical_features_indices = pars$categorical_features_indices - 1
        }

        classifier = mlr3misc::invoke(tabpfn$TabPFNClassifier, .args = pars)
        X_py = reticulate::r_to_py(X)
        y_py = reticulate::r_to_py(y)

        res$fitted = mlr3misc::invoke(classifier$fit, X = X_py, y = y_py)
      }
      if ("store" %in% train_mode) {
        # just store training data
        res$X = X
        res$y = y
      }

      res
    },

    .predict = function(task) {
      # wrap the usual predict function in a helper function for tryCatch
      get_pred = function() {
        model = self$model$fitted
        # get test data
        target_name = task$target_names[[1]]
        X = as.matrix(task$data()[, -target_name, with = FALSE])
        X_py = reticulate::r_to_py(X)

        if (self$predict_type == "response") {
          response = mlr3misc::invoke(model$predict, X = X_py)
          response = reticulate::py_to_r(response)
          list(response = response)
        } else {
          prob = mlr3misc::invoke(model$predict_proba, X = X_py)
          prob = reticulate::py_to_r(prob)
          colnames(prob) = reticulate::py_to_r(model$classes_)
          list(prob = prob)
        }
      }

      tryCatch(
        get_pred(),
        error = function(e) {
          # if error occurs, re-fit the model and try again
          self$param_set$values$train_mode = "both"
          self$train(task)
          get_pred()
        }
      )
    }
  )
)

.extralrns_dict$add("classif.tabpfn", LearnerClassifTabPFN)

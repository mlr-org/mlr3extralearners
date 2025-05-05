#' @title TabPFN Classification Learner
#' @author b-zhou
#' @name mlr_learners_classif.tabpfn
#'
#' @description
#' Foundation model for tabular data.
#' Uses \CRANpgk{reticulate} to interface with the [`tabpfn`](https://github.com/PriorLabs/TabPFN) Python package.
#' 
#' @section Installation:
#' While the Python dependencies are handled via `reticulate::py_require()`, you can
#' manually specify a virtual environment by calling `reticulate::use_virtualenv()`
#' prior to calling the `$train()` function.
#' In this virtual environment, the `tabpfn` package and its dependencies must be installed.
#' 
#' @section Initial parameter values:
#' - `n_jobs` is initialized to 1 to avoid threading conflicts with \CRANpkg{future}.#'
#'
#' @section Custom mlr3 parameters:
#' - `train_mode`: Controls the behavior of the `$train()` method.
#'   Possible options are `"fit"`, `"store"`, and `"both"` (default).
#'   - If `"fit"` is selected, the `$train()` function creates a Python object
#'     of the class `TabPFNClassifier` and stores the output of the `fit()` function.
#'   - If `"store"` is selected, the `$train()` function only stores the training task.
#'   - If `"both"` is selected, the `$train()` function does both.
#'   The fitted model (Python object), if created, is stored in the `$model$fitted` slot.
#'   The training task, if stored, can be accessed in the `$model$task` slot.
#'   Note that if you save this learner and load it later, the fitted model (Python object)
#'   in `$model$fitted` will be corrupted due to serialization issues.
#'   Therefore, it is recommended to use the `"store"` or `"both"` option to store
#'   the training data.
#'   When calling `$predict()` without an intact fitted model, the model will be fitted
#'   on-the-fly and stored in `$model$fitted` henceforth.
#'   After this, the `train_mode` parameter will automatically be set to `"both"`.
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
          # torch.dtype option is currently not supported
          c("auto", "autocast"),
          default = "auto",
          tags = "train"),
        fit_mode = p_fct(
          c("low_memory", "fit_preprocessors", "fit_with_cache"),
          default = "fit_preprocessors",
          tags = "train"),
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

      # set train_mode to "both" -- fit python model and store training data
      ps$values$train_mode = "both"
      # set n_jobs to 1 as mlr3 has its own parallelization
      ps$values$n_jobs = 1

      super$initialize(
        id = "classif.tabpfn",
        feature_types = c("integer", "numeric", "logical"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("twoclass", "multiclass", "missings", "marshal"),
        label = "TabPFN Classifier",
        man = "mlr3extralearners::mlr_learners_classif.tabpfn"
      )
    },
    #' @description
    #' Marshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`marshal_model()`].
    marshal = function(...) {
      learner_marshal(.learner = self, ...)
    },
    #' @description
    #' Unmarshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`unmarshal_model()`].
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
      reticulate::py_require("tabpfn")
      reticulate::py_require("torch")

      pars = self$param_set$get_values(tags = "train")
      train_mode = pars$train_mode
      if (train_mode == "both") {
        train_mode = c("fit", "store")
      }
      # remove train_mode from the param set that will be passed to the model
      pars$train_mode = NULL

      # create torch device
      if (!is.null(pars$device)) {
        torch = reticulate::import("torch")
        pars$device = torch$device(pars$device)
      }
      
      # X is an (n_samples, n_features) array
      X = as.matrix(task$data(cols = task$feature_names))
      # y is an (n_samples,) array
      y = task$truth()

      tabpfn = reticulate::import("tabpfn")
      if (!is.null(pars$categorical_features_indices)) {
        # convert to python indexing
        pars$categorical_features_indices = pars$categorical_features_indices - 1
      }
      # create tabpfn model
      classifier = mlr3misc::invoke(tabpfn$TabPFNClassifier, .args = pars)
      # prepare python data
      X_py = reticulate::r_to_py(X)
      y_py = reticulate::r_to_py(y)
      # fit model
      model = classifier$fit(X = X_py, y = y_py)
      print(model)

      structure(list(model), class = c("classif.tabpfn_model", "list"))
      # model
    },

    .predict = function(task) {
      model = self$model[[1]]
      # get test data
      X = as.matrix(task$data(cols = task$feature_names))
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
  )
)

.extralrns_dict$add("classif.tabpfn", LearnerClassifTabPFN)


#' @export
marshal_model.classif.tabpfn_model = function(model, inplace = FALSE, ...) {
  # pickle should be available in any python environment
  pickle = reticulate::import("pickle")
  # save model as bytes
  pickled = pickle$dumps(model[[1]])
  # ensure object is converted to R
  pickled = reticulate::py_to_r(pickled)

  structure(list(
    marshaled = pickled,
    packages = "mlr3extralearners"
  ), class = c("classif.tabpfn_model_marshaled", "marshaled"))
}

#' @export
unmarshal_model.classif.tabpfn_model_marshaled = function(model, inplace = FALSE, ...) {
  pickle = reticulate::import("pickle")
  unmarshaled = model$marshaled
  # convert bytes to python object
  model = pickle$loads(unmarshaled)
  
  model
}

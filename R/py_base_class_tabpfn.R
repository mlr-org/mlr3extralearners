# R/learner_classif_tabpfn.R

LearnerPythonClassifTabPFN <- R6::R6Class(
  "LearnerPythonClassifTabPFN",
  inherit = LearnerPythonClassif,

  public = list(
    initialize = function() {
      ps <- ps(
        n_estimators = p_int(lower = 1L, default = 4L, tags = "train"),
        categorical_features_indices = p_uty(tags = "train", custom_check = function(x) {
          check_integerish(x, lower = 1, any.missing = FALSE, min.len = 1)
        }),
        softmax_temperature = p_dbl(default = 0.9, lower = 0, tags = "train"),
        balance_probabilities = p_lgl(default = FALSE, tags = "train"),
        average_before_softmax = p_lgl(default = FALSE, tags = "train"),
        model_path = p_uty(default = "auto", tags = "train", custom_check = check_string),
        device = p_uty(default = "auto", tags = "train", custom_check = check_string),
        ignore_pretraining_limits = p_lgl(default = FALSE, tags = "train"),
        inference_precision = p_fct(
          c("auto","autocast",
            "torch.float32","torch.float","torch.float64","torch.double",
            "torch.float16","torch.half","torch.bfloat16"),
          default = "auto", tags = "train"
        ),
        fit_mode = p_fct(
          c("low_memory","fit_preprocessors","fit_with_cache"),
          default = "fit_preprocessors", tags = "train"
        ),
        memory_saving_mode = p_uty(default = "auto", tags = "train", custom_check = function(x) {
          if (identical(x, "auto") || test_flag(x) || test_number(x, lower = 0)) TRUE
          else "Invalid value for memory_saving_mode. Must be 'auto', a TRUE/FALSE value, or a number > 0."
        }),
        random_state = p_int(default = 0L, special_vals = list("None"), tags = "train"),
        n_jobs = p_int(lower = 1L, init = 1L, special_vals = list(-1L), tags = "train")
      )

      super$initialize(
        id             = "classif.python.tabpfn",
        feature_types  = c("integer","numeric","logical"),
        predict_types  = c("response","prob"),
        param_set      = ps,
        py_packages       = c("numpy","pandas","torch","tabpfn"),
        python_version = "3.10",
        method         = "auto",
        properties     = c("twoclass", "multiclass", "missings", "marshal"),
        man            = "mlr3extralearners::mlr_learners_classif.tabpfn"
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
    #'   Additional arguments passed to [`mlr3::marshal_model()`][mlr3::marshaling()].
    unmarshal = function(...) {
      learner_unmarshal(.learner = self, ...)
    }
  ),

  active = list(
    #' @field internal_valid_scores (named `list()` or `NULL`)
    #' The validation scores extracted from `eval_protocol` which itself is set by fitting the `fastai::tab_learner`.
    #' If early stopping is activated, this contains the validation scores of the model for the optimal `n_epoch`,
    #' otherwise the `n_epoch` for the final model.
    internal_valid_scores = function() {
      self$state$internal_valid_scores
    },

    #' @field internal_tuned_values (named `list()` or `NULL`)
    #' If early stopping is activated, this returns a list with `n_epoch`,
    #' which is the last epoch that yielded improvement w.r.t. the `patience`, extracted by `max(eval_protocol$epoch)+1`
    internal_tuned_values = function() {
      self$state$internal_tuned_values
    },

    #' @field validate (`numeric(1)` or `character(1)` or `NULL`)
    #' How to construct the internal validation data. This parameter can be either `NULL`,
    #' a ratio, `"test"`, or `"predefined"`.
    validate = function(rhs) {
      if (!missing(rhs)) {
        private$.validate = assert_validate(rhs)
      }
      private$.validate
    },

    #' @field marshaled (`logical(1)`)
    #' Whether the learner has been marshaled.
    marshaled = function() {
      learner_marshaled(self)
    }
  ),

  private = list(
    .fit_py = function(x, y, pars, task) {
      torch  <- reticulate::import("torch",  delay_load = FALSE)
      tabpfn <- reticulate::import("tabpfn", delay_load = FALSE)

      ip <- pars$inference_precision
      if (!is.null(ip) && startsWith(ip, "torch.")) {
        dtype <- strsplit(ip, "\\.", fixed = TRUE)[[1]][2]
        pars$inference_precision <- reticulate::py_get_attr(torch, dtype)
      }
      if (!is.null(pars$device) && pars$device != "auto") {
        pars$device <- torch$device(pars$device)
      }
      if (identical(pars$random_state, "None")) {
        pars$random_state <- reticulate::py_none()
      }
      if (!is.null(pars$categorical_features_indices)) {
        pars$categorical_features_indices <- as.integer(pars$categorical_features_indices - 1L)
      }

      X <- as.matrix(x); storage.mode(X) <- "double"; X[is.na(X)] <- NaN
      X_py <- reticulate::r_to_py(X)
      y_py <- reticulate::r_to_py(as.vector(y))

      clf    <- mlr3misc::invoke(tabpfn$TabPFNClassifier, .args = pars)
      fitted <- mlr3misc::invoke(clf$fit, X = X_py, y = y_py)

      classes <- as.character(reticulate::py_to_r(fitted$classes_))
      list(model = fitted, meta = list(classes = classes))
    },

    .predict_py = function(model, newdata, predict_types, meta, class_names) {
      X <- as.matrix(newdata); storage.mode(X) <- "double"; X[is.na(X)] <- NaN
      X_py <- reticulate::r_to_py(X)

      if ("prob" %in% predict_types) {
        prob <- mlr3misc::invoke(model$predict_proba, X = X_py)
        prob <- reticulate::py_to_r(prob)
        colnames(prob) <- meta$classes %||% as.character(reticulate::py_to_r(model$classes_))
        list(response = NULL, prob = prob)
      } else {
        response <- mlr3misc::invoke(model$predict, X = X_py)
        response <- reticulate::py_to_r(response)
        list(response = as.character(response), prob = NULL)
      }
    }
  )
)

.extralrns_dict$add("classif.python.tabpfn", LearnerPythonClassifTabPFN)

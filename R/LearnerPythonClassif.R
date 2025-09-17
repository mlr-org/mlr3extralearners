# R/learner_python_classif_base.R

LearnerPythonClassif = R6::R6Class(
  "LearnerPythonClassif",
  inherit = mlr3::LearnerClassif,

  public = list(
    initialize = function(id,
                          feature_types   = c("logical","integer","numeric","factor","ordered"),
                          predict_types   = c("response"),
                          param_set       = paradox::ParamSet$new(),
                          properties      = character(),
                          packages        = "reticulate",              # R packages
                          label           = NA_character_,
                          man             = NA_character_,
                          # Python requirements
                          py_packages,
                          python_version,
                          method          = c("auto","virtualenv","conda"),
                          envname         = NULL) {

      method = match.arg(method)

      base_ps = ps(
        py_env    = p_uty(default = envname, tags = "python"),
        py_method = p_fct(levels = c("auto","virtualenv","conda"),
                          default = method, tags = "python")
      )
      param_set = ps_union(list(param_set, base_ps))

      super$initialize(
        id = id,
        feature_types = feature_types,
        predict_types = predict_types,
        param_set     = param_set,
        properties    = properties,
        packages      = union(c("mlr3", "mlr3extralearners"), packages),
        label = label,
        man   = man
      )

      private$.py_packages = py_packages
      private$.py_version  = python_version
      private$.py_method   = method
      private$.py_env      = envname
    },

    py_requirements = function() {
      list(
        packages       = private$.py_packages,
        python_version = private$.py_version,
        method         = private$.py_method,
        envname        = private$.py_env
      )
    },

    ensure_deps = function() {
      if (!requireNamespace("reticulate", quietly = TRUE)) {
        stop("Package 'reticulate' required.")
      }
      # assert/install in-session
      reticulate::py_require(private$.py_packages, python_version = private$.py_version)
      invisible(TRUE)
    }
  ),

  private = list(
    .py_packages = NULL, .py_version = NULL, .py_method = NULL, .py_env = NULL,

    .train = function(task) {
      self$ensure_deps()

      x    = task$data(cols = task$feature_names)
      y    = task$truth()
      pars = self$param_set$get_values(tags = "train")

      fit = private$.fit_py(x = x, y = y, pars = pars, task = task)

      meta = if (is.null(fit$meta)) list() else fit$meta

      structure(
        list(
          fitted     = fit$model,                # PyObject
          meta       = meta,                     # any R metadata (e.g., classes)
          py_modules = private$.py_packages,
          py_version = private$.py_version,
          learner_class = paste0(self$id, "_model")
        ),
        class = c("pybytes_model", paste0(self$id, "_model"))  # pybytes first for S3
      )
    },

    .predict = function(task) {
      self$ensure_deps()
      if (is.null(self$model)) stop("Model not trained yet.")

      newdata = ordered_features(task, self)
      res = private$.predict_py(
        model         = self$model$fitted,
        newdata       = newdata,
        predict_type = self$predict_type,
        meta          = self$model$meta,
        class_labels = task$class_names
      )

      if ("prob" %in% self$predict_types && !is.null(res$prob)) {
        mlr3::PredictionClassif$new(task = task, prob = res$prob)
      } else {
        mlr3::PredictionClassif$new(task = task, response = res$response)
      }
    },

    # Hooks every subclass must implement:
    .fit_py = function(x, y, pars, task, ...) {
      stop("Subclass must implement .fit_py(x, y, pars, task, ...).")
    },

    .predict_py = function(model, newdata, predict_types, meta) {
      stop("Subclass must implement .predict_py(model, newdata, predict_types, meta).")
    }
  )
)

# ---- Generic bytes-only marshaling for all python learners ----

#' @export
marshal_model.pybytes_model <- function(model, inplace = FALSE, ...) {
  print("marshalling python model...")
  reticulate::py_require(model$py_modules, python_version = model$py_version)
  pickle <- reticulate::import("pickle")

  raw <- as.raw(pickle$dumps(model$fitted))

  # capture any additional classes (e.g. "classif.tabpfn_model"), keep first one
  learner_class <- setdiff(class(model), "pybytes_model")
  learner_class <- if (length(learner_class)) learner_class[1L] else NULL

  structure(
    list(
      marshaled     = raw,
      py_modules    = model$py_modules,
      py_version    = model$py_version,
      meta          = model$meta,
      learner_class = learner_class
    ),
    class = c("pybytes_model_marshaled", "marshaled")
  )
}

#' @export
unmarshal_model.pybytes_model_marshaled <- function(model, inplace = FALSE, ...) {
  print("unmarshalling python model...")
  reticulate::py_require(model$py_modules, python_version = model$py_version)
  pickle <- reticulate::import("pickle")
  fitted <- pickle$loads(reticulate::r_to_py(model$marshaled))

  classes <- if (is.null(model$learner_class)) {
    "pybytes_model"
  } else {
    c("pybytes_model", model$learner_class)
  }

  structure(
    list(
      fitted     = fitted,
      meta       = if (is.null(model$meta)) list() else model$meta,
      py_modules = model$py_modules,
      py_version = model$py_version
    ),
    class = classes
  )
}

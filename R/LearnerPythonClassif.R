# R/learner_python_classif_base.R

LearnerPythonClassif <- R6::R6Class(
  "LearnerPythonClassif",
  inherit = mlr3::LearnerClassif,

  public = list(
    initialize = function(id,
                          feature_types = c("logical","integer","numeric","factor","ordered"),
                          predict_types = c("response"),
                          param_set     = paradox::ParamSet$new(),
                          properties    = character(),
                          packages      = "reticulate", # R packages
                          label         = NA_character_,
                          man           = NA_character_,
                          py_packages,  # Python packages e.g. c("numpy","pandas","tabpfn")
                          python_version,  # "3.10"
                          method = c("auto","virtualenv","conda"),
                          envname = NULL) {

      method <- match.arg(method)

      base_ps <- ps(
        py_env    = p_uty(default = envname, tags = "python"),
        py_method = p_fct(levels = c("auto","virtualenv","conda"),
                          default = method, tags = "python")
      )
      param_set <- ps_union(list(param_set, base_ps))

      super$initialize(
        id = id,
        feature_types = feature_types,
        predict_types = predict_types,
        param_set = param_set,
        properties = properties,
        packages   = union(c("mlr3", "mlr3extralearners"), packages),  # keep mlr3 + your R deps
        label = label,
        man = man
      )

      private$.py_packages <- py_packages
      private$.py_version  <- python_version
      private$.py_method   <- method
      private$.py_env      <- envname

      self$model <- NULL
    },

    py_requirements = function() {
      list(
        packages = private$.py_packages,
        python_version = private$.py_version,
        method = private$.py_method,
        envname = private$.py_env
      )
    },

    ensure_deps = function() {
      if (!requireNamespace("reticulate", quietly = TRUE)) {
        stop("Package 'reticulate' required.")
      }
      assert_python_packages(private$.py_packages, python_version = private$.py_version)
      invisible(TRUE)
    }
  ),

  private = list(
    .py_packages = NULL, .py_version = NULL, .py_method = NULL, .py_env = NULL,

    .train = function(task) {
      self$ensure_deps()
      x = task$data(cols = task$feature_names)
      y = task$truth()
      pars = self$param_set$get_values(tags = "train")

      # fit_py returns a list with entrie "model" holding the trained Python model
      # and optionally "meta" holding some extra data
      fit = private$.fit_py(x = x, y = y, pars = pars, task = task)

      self$model = structure(
        list(
          fitted = fit$model,
          meta = fit$meta %||% list(),
          py_modules = private$.py_packages,
          py_version = private$.py_version
        ),
        class = c(paste0(self$id, "_model"), "pybytes_model")
      )
    },

    .predict = function(task) {
      self$ensure_deps()
      if (is.null(self$model)) stop("Model not trained yet.")
      newdata =  ordered_features(task, self)
      res = private$.predict_py(model = self$model$fitted,
                                newdata = newdata,
                                predict_type = self$predict_type,
                                meta = self$model$meta,
                                class_labels = task$class_names)
      if ("prob" %in% self$predict_types && !is.null(res$prob)) {
        mlr3::PredictionClassif$new(task = task, prob = res$prob)
      } else {
        mlr3::PredictionClassif$new(task = task, response = res$response)
      }
    },

    # Hooks every subclass must implement:
    .fit_py = function(x, y, pars, task, ...) stop("Subclass must implement .fit_py(x, y, pars)."),
    .predict_py = function(model, newdata, predict_types, meta, class_labels)
      stop("Subclass must implement .predict_py(model, newdata, predict_types, meta).")
  )
)


#' @export
marshal_model.pybytes_model <- function(model, inplace = FALSE, ...) {
  # If you don't have assert_python_packages(), use py_require() directly:
  reticulate::py_require(model$py_modules, python_version = model$py_version)

  pickle <- reticulate::import("pickle")
  raw <- as.raw(pickle$dumps(model$fitted))

  structure(list(
    marshaled  = raw,
    py_modules = model$py_modules,
    py_version = model$py_version,
    meta       = model$meta
  ), class = c("pybytes_model_marshaled", "marshaled"))
}

#' @export
unmarshal_model.pybytes_model_marshaled <- function(model, inplace = FALSE, ...) {
  reticulate::py_require(model$py_modules, python_version = model$py_version)

  pickle <- reticulate::import("pickle")
  fitted <- pickle$loads(reticulate::r_to_py(model$marshaled))

  structure(list(
    fitted     = fitted,
    meta       = model$meta %||% list(),
    py_modules = model$py_modules,
    py_version = model$py_version
  ), class = c(paste0(self$id, "_model"), "pybytes_model"))
}


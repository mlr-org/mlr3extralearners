LearnerPythonClassif = R6::R6Class(
  "LearnerPythonClassif",
  inherit = mlr3::LearnerClassif,

  public = list(
    initialize = function(id,
                          feature_types   = c("logical","integer","numeric","factor","ordered"),
                          predict_types   = c("response", "prob"),
                          param_set       = ps(),
                          properties      = character(),
                          packages        = "reticulate",
                          label           = NA_character_,
                          man             = NA_character_,
                          # Python requirements
                          py_packages,
                          python_version) {

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
    },


    py_requirements = function(rhs) {
      assert_ro_binding(rhs)
      list(
        packages       = private$.py_packages,
        python_version = private$.py_version
      )
    }
  ),

  private = list(
    .py_packages = NULL, .py_version = NULL,

    .train = function(task) {
      py_requirements = self$py_requirements()
      do.call(assert_python_packages, py_requirements)

      out = named_list()

      fit = private$.train_py(task = task)
      assert_list(fit, all.missing = FALSE, min.len = 1)
      assert_names(names(fit), must.include = "model")

      structure(
        mlr3misc::insert_named(out, fit),
        class = c("pybytes_model", paste0(self$id, "_model"))
      )
    },

    .predict = function(task) {
      py_requirements = self$py_requirements()
      do.call(assert_python_packages, py_requirements)

      newdata = ordered_features(task, self)
      preds = private$.predict_py(task = task, newdata = newdata, predict_type = self$predict_type)
      preds
    },

    # ---- subclass hooks ----
    .train_py = function(x, y, pars, task, ...) {
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
  reticulate::py_require(model$py_modules, python_version = model$py_version)
  pickle = reticulate::import("pickle")

  raw = as.raw(pickle$dumps(model$model))

  learner_class = setdiff(class(model), "pybytes_model")
  if (length(learner_class) > 1L) {
    stop(sprintf(
      "Expected at most one learner-specific class; got: %s",
      paste(learner_class, collapse = ", ")
    ))
  }

  raw_model = list(
    marshaled     = raw,
    learner_class = learner_class,
    py_modules    = model$py_modules,
    py_version    = model$py_version
  )
  meta_data = setdiff(model, "model")

  structure(
    mlr3misc::insert_named(raw_model, meta_data),
    class = c("pybytes_model_marshaled", "marshaled")
  )
}

#' @export
unmarshal_model.pybytes_model_marshaled <- function(model, inplace = FALSE, ...) {
  # use python requirements stored in the marshaled object
  reticulate::py_require(model$py_modules, python_version = model$py_version)
  pickle <- reticulate::import("pickle")
  fitted <- pickle$loads(reticulate::r_to_py(model$marshaled))

  classes <- if (is.null(model$learner_class)) {
    "pybytes_model"
  } else {
    c("pybytes_model", model$learner_class)
  }
  meta_data = setdiff(model, "marshaled")
  out = list(
    model         = fitted,
    learner_class = classes,
    py_modules    = model$py_modules,
    py_version    = model$py_version
  )

  structure(
    mlr3misc::insert_named(out, meta_data),
    class = classes
  )
}

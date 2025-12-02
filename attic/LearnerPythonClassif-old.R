LearnerPythonClassif = R6::R6Class(
  "LearnerPythonClassif",
  inherit = mlr3::LearnerClassif,

  public = list(
    initialize = function(id,
                          feature_types   = c("logical","integer","numeric","factor","ordered"),
                          predict_types   = c("response"),
                          param_set       = paradox::ParamSet$new(),
                          # Python requirements
                          packages,              # character(), e.g. c("numpy","pandas","tabpfn")
                          python_version,        # e.g. "3.10"
                          method = c("auto","virtualenv","conda"),
                          envname = NULL,
                          storage = c("file","bytes"),
                          man = NA_character_) {

      method  = match.arg(method)
      storage = match.arg(storage)

      base_ps = paradox::ParamSet$new(list(
        paradox::ParamUty$new("py_env",      default = envname, tags = "python"),
        paradox::ParamFct$new("py_method",   levels = c("auto","virtualenv","conda"),
                              default = method, tags = "python"),
        paradox::ParamLgl$new("py_preflight", default = TRUE, tags = "python")
      ))
      param_set = paradox::combine_ps(param_set, base_ps)

      super$initialize(
        id = id, feature_types = feature_types, predict_types = predict_types,
        param_set = param_set, man = man
      )

      private$.py_packages = packages
      private$.py_version  = python_version
      private$.py_method   = method
      private$.py_env      = envname %||% .mlr_envname(id, python_version)
      private$.storage     = storage

      # Register only (no downloads here)
      register_python_learner(
        id = id, packages = packages, python_version = python_version,
        method = method, envname = private$.py_env
      )

      # R-side state only; no reticulate objects here
      self$state = list(
        storage    = storage,
        model_path = NULL,     # if storage == "file"
        model_raw  = NULL,     # if storage == "bytes"
        meta       = NULL      # e.g., class levels
      )
    },

    prepare_env = function() {
      cfg = private$.cfg()
      .ensure_python_env(cfg$envname, cfg$packages, cfg$python_version, cfg$method)
      invisible(TRUE)
    },

    marshal = function(dir) {
      dir.create(dir, recursive = TRUE, showWarnings = FALSE)
      meta = private$.marshal_meta()
      jsonlite::write_json(meta, file.path(dir, "python_env.json"), auto_unbox = TRUE, pretty = TRUE)
      jsonlite::write_json(self$state$meta %||% list(), file.path(dir, "model_meta.json"),
                           auto_unbox = TRUE, pretty = TRUE)

      if (self$state$storage == "file") {
        stopifnot(!is.null(self$state$model_path) && file.exists(self$state$model_path))
        file.copy(self$state$model_path, file.path(dir, "model.pkl"), overwrite = TRUE)
      } else {
        stopifnot(is.raw(self$state$model_raw))
        saveRDS(self$state$model_raw, file.path(dir, "model_bytes.rds"))
      }
      invisible(dir)
    },

    unmarshal = function(dir) {
      meta = jsonlite::read_json(file.path(dir, "python_env.json"))
      .ensure_python_env(meta$envname, meta$packages, meta$python_version, meta$method)

      self$state$meta = tryCatch(jsonlite::read_json(file.path(dir, "model_meta.json")), error = function(e) NULL)

      if (file.exists(file.path(dir, "model.pkl"))) {
        # file mode
        tmp_dir = file.path(tempdir(), paste0("mlr3x-", self$id, "-", as.integer(runif(1,1,1e9))))
        dir.create(tmp_dir, recursive = TRUE)
        file.copy(file.path(dir, "model.pkl"), file.path(tmp_dir, "model.pkl"), overwrite = TRUE)
        self$state$storage    = "file"
        self$state$model_path = file.path(tmp_dir, "model.pkl")
        self$state$model_raw  = NULL
      } else {
        # bytes mode
        raw = readRDS(file.path(dir, "model_bytes.rds"))
        self$state$storage    = "bytes"
        self$state$model_raw  = raw
        self$state$model_path = NULL
      }
      invisible(TRUE)
    }
  ),

  private = list(
    .py_packages = NULL, .py_version = NULL, .py_method = NULL, .py_env = NULL,
    .storage = NULL,

    .cfg = function() list(
      packages = private$.py_packages,
      python_version = private$.py_version,
      method = self$param_set$values$py_method %||% private$.py_method,
      envname = self$param_set$values$py_env %||% private$.py_env
    ),

    .marshal_meta = function() {
      cfg = private$.cfg()
      list(id = self$id, packages = unname(cfg$packages), python_version = cfg$python_version,
           method = cfg$method, envname = cfg$envname, timestamp = as.character(Sys.time()))
    },

    # --- lifecycle hooks ------------------------------------------------------

    .train = function(task) {
      if (isTRUE(self$param_set$values$py_preflight)) self$prepare_env()

      x = task$data(cols = task$feature_names)
      y = task$truth()
      cfg = private$.cfg()

      if (self$state$storage == "file") {
        # The worker will write a pickle file here
        model_dir  = file.path(tempdir(), paste0("mlr3x-", self$id, "-", as.integer(runif(1,1,1e9))))
        dir.create(model_dir, recursive = TRUE, showWarnings = FALSE)
        model_path = file.path(model_dir, "model.pkl")

        meta = .python_callr(cfg$envname, cfg$method,
                              fn = private$.worker_fit_file,   # subclass must provide
                              args = list(x = x, y = y, model_path = model_path,
                                          learner_id = self$id, predict_types = self$predict_types)
        )

        self$state$model_path = model_path
        self$state$model_raw  = NULL
        self$state$meta       = meta

      } else { # "bytes"
        ret = .python_callr(cfg$envname, cfg$method,
                             fn = private$.worker_fit_bytes,  # subclass must provide
                             args = list(x = x, y = y, learner_id = self$id, predict_types = self$predict_types)
        )
        # ret should be list(raw = <raw>, meta = <list>)
        self$state$model_raw  = ret$raw
        self$state$model_path = NULL
        self$state$meta       = ret$meta
      }

      invisible(NULL)
    },

    .predict = function(task) {
      cfg = private$.cfg()
      newdata = task$data(cols = task$feature_names)

      if (self$state$storage == "file") {
        res = .python_callr(cfg$envname, cfg$method,
                             fn = private$.worker_predict_file,  # subclass must provide
                             args = list(model_path = self$state$model_path, newdata = newdata,
                                         learner_id = self$id, predict_types = self$predict_types)
        )
      } else {
        res = .python_callr(cfg$envname, cfg$method,
                             fn = private$.worker_predict_bytes, # subclass must provide
                             args = list(model_raw = self$state$model_raw, newdata = newdata,
                                         learner_id = self$id, predict_types = self$predict_types)
        )
      }
      if ("prob" %in% self$predict_types && !is.null(res$prob)) {
        return(mlr3::PredictionClassif$new(task = task, prob = res$prob))
      } else {
        return(mlr3::PredictionClassif$new(task = task, response = res$response))
      }
    },

    # --- abstract worker functions (to implement in subclasses) ---------------
    # Each receives only base R objects; they run inside the Python-activated worker.
    # They must import the right Python packages and do the work there.

    .worker_fit_file   = function(envname, method, x, y, model_path, learner_id, predict_types)
      stop("Subclass must implement .worker_fit_file()"),

    .worker_predict_file = function(envname, method, model_path, newdata, learner_id, predict_types)
      stop("Subclass must implement .worker_predict_file()"),

    .worker_fit_bytes  = function(envname, method, x, y, learner_id, predict_types)
      stop("Subclass must implement .worker_fit_bytes()"),

    .worker_predict_bytes = function(envname, method, model_raw, newdata, learner_id, predict_types)
      stop("Subclass must implement .worker_predict_bytes()")
  )
)

# Process runner: run any fun. in clean R session that activates some specific python env
.python_callr = function(envname, method, fn, args = list(), libpaths = .libPaths(), timeout = Inf) {
  callr::r(
    function(envname, method, fn_serialized, args, libpaths) {
      .libPaths(libpaths)  # ensures the worker can load the same R packages as the caller
      if (!requireNamespace("reticulate", quietly = TRUE))
        stop("Package 'reticulate' is required.")

      # Choose env
      if (method == "conda") {
        reticulate::use_condaenv(envname, required = TRUE)
      } else if (method == "virtualenv") {
        reticulate::use_virtualenv(envname, required = TRUE)
      } else {
        conda_ok = tryCatch(!is.na(reticulate::conda_binary("auto")), error = function(e) FALSE)
        if (conda_ok) reticulate::use_condaenv(envname, required = TRUE)
        else reticulate::use_virtualenv(envname, required = TRUE)
      }

      fn = eval(fn_serialized, envir = baseenv())
      do.call(fn, c(list(envname = envname, method = method), args), envir = baseenv())
    },
    args = list(
      envname = envname,
      method  = method,
      fn_serialized = substitute(fn),
      args    = args,
      libpaths = libpaths
    ),
    timeout = timeout
  )
}

# env bootstrap: build python env in clean process
# meant for preflight , not during R CMD check
.ensure_python_env = function(envname, packages, python_version, method = "auto") {
  callr::r(function(envname, packages, python_version, method) {
    if (!requireNamespace("reticulate", quietly = TRUE))
      stop("Package 'reticulate' is required.")

    reticulate::py_install(
      packages = packages, envname = envname,
      method = method, python_version = python_version, pip = TRUE
    )
    # Write requiriements.txt for marshalling or debugging
    req = tryCatch(reticulate::py_list_packages(envname = envname), error = function(e) NULL)
    if (!is.null(req)) {
      dir.create(envname, showWarnings = FALSE, recursive = TRUE)
      writeLines(sprintf("%s==%s", req$package, req$version),
                 file.path(envname, "requirements.txt"))
    }

    TRUE
  },
  args = list(envname = envname, packages = packages, python_version = python_version, method = method))
}

# registry helpers to remember each learner’s env config
.mlr_py_registry = new.env(parent = emptyenv())

# builds a stable, readable env name from learner id and Python version
# id = "classif.fastai", python_version = "3.10" => mlr3x-classif-fastai-py310
.mlr_envname = function(id, python_version) {
  paste0("mlr3x-", gsub("[^a-z0-9]+", "-", tolower(id)), "-py", gsub("\\D", "", python_version))
}

register_python_learner = function(id, packages, python_version,
                                    method = c("auto","virtualenv","conda"),
                                    envname = NULL) {
  method = match.arg(method)
  if (is.null(envname)) {
    envname = .mlr_envname(id, python_version)

  } # else pass env name if two learners should share a Python env
  .mlr_py_registry[[id]] = list(
    id = id, packages = packages, python_version = python_version,
    method = method, envname = envname
  )
  invisible(envname)  # callers can capture envname if needed
}

# Create required python envs ahead of time
# CI step before R CMD check, so (hopefully) no NOTE
prepare_python_envs = function(ids = NULL) {
  # registry snapshot:
  items = as.list.environment(.mlr_py_registry, all.names = TRUE)
  if (!is.null(ids)) {
    items = items[intersect(names(items), ids)]
  }
  for (cfg in items) {
    .ensure_python_env(cfg$envname, cfg$packages, cfg$python_version, cfg$method)
  }
  invisible(TRUE)
}

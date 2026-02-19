options(old_opts)
lg = lgr::get_logger("mlr3")
lg$set_threshold(old_threshold)

mirai::daemons(0, .compute = "mlr3_encapsulation")

if (requireNamespace("reticulate", quietly = TRUE)) {
  # created by reticulate and uv
  python_temp_dir = dirname(reticulate::py_run_string("import tempfile; x=tempfile.NamedTemporaryFile().name", local = TRUE)$x)
  detritus = list.files(python_temp_dir, pattern = "^uv-setuptools-[0-9A-Fa-f]{16}\\.lock$", full.names = TRUE)
  if (length(detritus)) unlink(detritus)

  # created by tabpfn test
  detritus = list.files(python_temp_dir, pattern = "^torchinductor_runner$", full.names = TRUE)
  if (length(detritus)) unlink(detritus, recursive = TRUE, force = TRUE)

  # created by fastai test
  detritus = list.files(python_temp_dir, pattern = "^tmp[A-Za-z0-9_]{8}$", full.names = TRUE)
  if (length(detritus)) unlink(detritus, recursive = TRUE, force = TRUE)
}

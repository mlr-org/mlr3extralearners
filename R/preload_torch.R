# Imports the python module torch with RTLD_DEEPBIND, so that libtorch resolves the MKL symbols it bundles
# (e.g. cblas_dgemm_batch) to its own copies.
# Otherwise, they resolve to the BLAS library that R loaded into the global symbol scope,
# and newer OpenBLAS versions export these symbols too, which segfaults.
# Must run before anything else imports torch, so it has no effect if torch was already imported in this session.
# Does nothing if torch is not installed or on platforms without RTLD_DEEPBIND.
preload_torch = function() {
  reticulate::py_run_string(paste(
    "import sys, os, importlib.util",
    "if 'torch' not in sys.modules and hasattr(os, 'RTLD_DEEPBIND') and importlib.util.find_spec('torch'):",
    "    flags = sys.getdlopenflags()",
    "    sys.setdlopenflags(flags | os.RTLD_DEEPBIND)",
    "    try:",
    "        import torch",
    "    finally:",
    "        sys.setdlopenflags(flags)",
    sep = "\n"), local = TRUE)
  invisible(NULL)
}

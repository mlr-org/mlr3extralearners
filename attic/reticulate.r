library(reticulate)

py_require("fastai")

import("fastai")

result = callr::r(
  function() {
    # Remove any inherited pointer to a fixed Python interpreter so that
    # reticulate can freely select (or create) a fresh interpreter that
    # matches the requested version.
    Sys.unsetenv("RETICULATE_PYTHON")

    reticulate::py_require(c("torch", "pycox", "numpy"), python_version = "3.10")

    # Directly attempt to import the module and report success / failure.
    tryCatch({
      reticulate::import("pycox")
      TRUE
    }, error = function(e) FALSE)

    reticulate::py_module_available("pycox")
  },
  # Ensure the child process does not inherit a pinned Python interpreter
  env = c(RETICULATE_PYTHON = "")
)

result




callr::r(function() {
  testthat::expect_equal(1, 2)
})

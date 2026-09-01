#' @title Assert Python Packages
#'
#' @description
#' Assert that the given Python packages are available.
#'
#' @param packages (`character()`)\cr
#'   Python packages to check.
#' @param python_version (`character(1)`)\cr
#'   Python version to use. If `NULL`, the default Python version is used.
#'
#' @return (`character()`)\cr
assert_python_packages = function(packages, python_version = NULL) {
  reticulate::py_require(packages, python_version = python_version)
  # packages may carry pip-style version constraints, e.g. "fastcore<2.0.0"
  modules = trimws(sub("[<>=!~\\[].*$", "", packages))
  available = map_lgl(modules, reticulate::py_module_available)
  if (any(!available)) {
    stopf("Package %s not available.", as_short_string(modules[!available]))
  }
  invisible(packages)
}


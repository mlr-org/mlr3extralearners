#' @title Assert Python Packages
#'
#' @description
#' Assert that the given Python packages are available.
#'
#' @param packages (`character()`)\cr
#'   Python packages to check.
#' @param python_version (`character(1)`)\cr
#'   Python version to use. If `NULL`, the default Python version is used.
#' @param modules (`character()`)\cr
#'   Names of the Python modules to check, one per element of `packages`.
#'   Only needed if a module name differs from the name of its package, e.g. `"sklearn"` for `"scikit-learn"`,
#'   or if the package is given as a direct reference, e.g. `"pkg @ git+https://..."`.
#'   If `NULL`, the module names are derived from `packages`.
#'
#' @return (`character()`)\cr
assert_python_packages = function(packages, python_version = NULL, modules = NULL) {
  assert_character(modules, any.missing = FALSE, len = length(packages), null.ok = TRUE)
  reticulate::py_require(packages, python_version = python_version)
  # packages may carry pip-style version constraints, e.g. "fastcore<2.0.0"
  modules = modules %??% trimws(sub("[<>=!~\\[].*$", "", packages))
  if ("torch" %in% modules) {
    preload_torch()
  }
  available = map_lgl(modules, reticulate::py_module_available)
  if (any(!available)) {
    stopf("Package %s not available.", as_short_string(modules[!available]))
  }
  invisible(packages)
}


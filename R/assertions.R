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
  available = map_lgl(packages, reticulate::py_module_available)
  if (any(!available)) {
    stopf("Package %s not available.", packages[!available])
  }
  invisible(packages)
}


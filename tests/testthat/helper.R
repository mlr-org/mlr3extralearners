library(checkmate)
library(mlr3)
library(mlr3extralearners)

if (mlr3misc::require_namespaces("mlr3proba", quietly = TRUE)) {
  # proba is suggests
  library(mlr3proba)
}

lapply(list.files(system.file("testthat", package = "mlr3"),
  pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

lapply(list.files(system.file("testthat", package = "mlr3proba"),
  pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

expect_paramtest = function(paramtest) {
  if (!is.atomic(paramtest)) {
    if (length(paramtest$missing)) {
      info_missing = paste0("- '", paramtest$missing, "'", collapse = "\n")
    } else {
      info_missing = ""
    }
    if (length(paramtest$extra)) {
      info_extra = paste0("- '", paramtest$extra, "'", collapse = "\n")
    } else {
      info_extra = ""
    }
    info = paste0("\nMissing parameters:\n", info_missing, "\nExtra parameters:\n", info_extra)
  }
  expect_true(paramtest, info = info)
}

# extracts the S4 .local function so that we can do a proper parameter test
# @example
# library(kernlab)
# args_s4(getMethod("ksvm", "matrix"))
s4_helper = function(x) {
  # f creates .local and then calls .local(x, ...), so we have to modify the function such that
  # it returns the .local function on which we can then call formalArgs
  f = x@.Data
  body(f) = body(f)[1:2]
  formals(f) = pairlist()
  return(f())
}

skip_if_not_installed_py = function(...) {
  pkgs = c(...)
  # We skip the tests if the python packages are not installed and we are not in GHA
  # Because if we are in GHA, we want to ensure that the installation of the python packages
  # is working
  available = map_lgl(pkgs, reticulate::py_module_available)
  in_gha = Sys.getenv("GITHUB_ACTIONS") == "true"
  only_suggests = Sys.getenv("_R_CHECK_DEPENDS_ONLY_", "FALSE") == "TRUE"

  # We:
  # * Don't want to run the tests locally if they are not available, as this will mean
  #   other contributors always have to download the python packages
  # * Want to run the tests in GHA. If installation fails there, we want to notice, etcept
  # * We test only suggested packages in GHA
  if (!all(available) && (!in_gha || only_suggests)) {
    skip(paste0("Python packages ", paste(pkgs[!available], collapse = ", "), " not available."))
  }
  invisible()
}

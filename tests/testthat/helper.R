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

lapply(list.files(system.file("testthat", package = "mlr3cmprsk"),
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

# Python-based (reticulate) learners are tested in pinned virtualenvs, one per
# requirement group, see R/install_python_test_envs.R.
# The environments are activated via RETICULATE_PYTHON in fresh callr sessions.
# The callr isolation is mandatory for two reasons:
# * reticulate binds one python interpreter per R process, so groups with
#   conflicting requirements cannot share a process.
# * python torch cannot share a process with the libtorch bundled by the R torch
#   package (e.g. loaded by surv.survdnn tests in the main test process).
skip_if_no_python_env = function(group) {
  envname = paste0("mlr3extralearners-", group)
  in_gha = Sys.getenv("GITHUB_ACTIONS") == "true"
  only_suggests = Sys.getenv("_R_CHECK_DEPENDS_ONLY_", "FALSE") == "TRUE"

  # We:
  # * Skip locally if the environment is missing, so that contributors are not
  #   forced to download the python environments.
  # * Never skip in GHA (except in depends-only checks), so that a broken
  #   environment installation is noticed.
  if (!reticulate::virtualenv_exists(envname) && (!in_gha || only_suggests)) {
    skip(sprintf(
      "Python environment '%s' not available. Create it with mlr3extralearners:::install_python_test_envs(\"%s\").",
      envname, group))
  }
  invisible()
}

# Runs fn in a fresh callr session with the pinned virtualenv of the group
# activated, the usual test packages attached, the mlr3 test helpers sourced,
# and a mirai daemon set up for encapsulation.
# Returns TRUE, so tests wrap calls as expect_true(run_py_test(group, fn)).
run_py_test = function(group, fn) {
  envname = paste0("mlr3extralearners-", group)
  if (!reticulate::virtualenv_exists(envname)) {
    stop(sprintf(
      "Python environment '%s' not found. Create it with mlr3extralearners:::install_python_test_envs(\"%s\").",
      envname, group))
  }
  python = reticulate::virtualenv_python(envname)

  callr::r(function(python, fn) {
    # keep the parent's python configuration out of the child session
    Sys.unsetenv(c("VIRTUAL_ENV", "VIRTUAL_ENV_PROMPT", "PYTHONPATH", "R_SESSION_INITIALIZED"))
    Sys.setenv(RETICULATE_PYTHON = python)

    library(mlr3)
    library(mlr3extralearners)
    library(testthat)
    library(checkmate)
    library(paradox)
    if (requireNamespace("mlr3proba", quietly = TRUE)) {
      library(mlr3proba)
    }

    helper_files = list.files(system.file("testthat", package = "mlr3"), pattern = "^helper.*\\.[rR]", full.names = TRUE)
    lapply(helper_files, source)

    mirai::daemons(1, .compute = "mlr3_encapsulation")
    on.exit(mirai::daemons(0, .compute = "mlr3_encapsulation"), add = TRUE)

    mirai::everywhere({
      Sys.setenv(RETICULATE_PYTHON = python)
    }, python = python, .compute = "mlr3_encapsulation")

    fn()
    TRUE
  }, args = list(python = python, fn = fn))
}

library(checkmate)
library(mlr3)
library(mlr3extralearners)
library(mlr3proba)

lapply(list.files(system.file("testthat", package = "mlr3"),
  pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

lapply(list.files(system.file("testthat", package = "mlr3proba"),
  pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

load_tests = function(key) {
  class = strsplit(mlr3::lrn(key)$id, ".", TRUE)[[1]][[1]]

  if (class %in% c("surv", "dens")) {
    if (!requireNamespace("mlr3proba", quietly = TRUE)) {
      remotes::install_github("mlr-org/mlr3proba", upgrade = "always")
    }
    invisible(lapply(list.files(system.file("testthat", package = "mlr3proba"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source))
    require("mlr3proba")
  } else if (class == "clust") {
    if (!requireNamespace("mlr3cluster", quietly = TRUE)) {
      remotes::install_github("mlr-org/mlr3cluster", upgrade = "always")
    }
    invisible(lapply(list.files(system.file("testthat", package = "mlr3cluster"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source))
    require("mlr3cluster")
  }
}

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

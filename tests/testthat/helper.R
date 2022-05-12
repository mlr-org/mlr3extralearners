library(checkmate)
library(mlr3)
library(mlr3extralearners)

.f = function(pkg) {
  lapply(list.files(system.file("testthat", package = pkg),
    pattern = "^helper.*\\.[rR]", full.names = TRUE), source)
}

lapply(c("mlr3", "mlr3proba", "mlr3cluster"), .f)

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

create_temppkg = function() {
  directory = tempfile()
  dir.create(directory)
  directory = sprintf("%s/mlr3extralearners", directory)
  dir.create(directory)
  file.create(sprintf("%s/DESCRIPTION", directory))
  dir.create(sprintf("%s/R", directory))
  dir.create(sprintf("%s/tests", directory))
  dir.create(sprintf("%s/tests/testthat", directory))
  return(directory)
}

#!/usr/bin/env Rscript
# Prints a draft paradox ps() block for the formals of one or more R functions.
# The parameter types are guessed from the default values and must be checked against the documentation.
#
# Usage:
#   Rscript draft_paramset.R <pkg::fun> [<pkg::fun> ...]
# Example:
#   Rscript draft_paramset.R MASS::rlm MASS:::rlm.default MASS:::predict.rlm

args = commandArgs(trailingOnly = TRUE)
if (!length(args)) {
  stop("Usage: Rscript draft_paramset.R <pkg::fun> [<pkg::fun> ...]")
}

deparse_default = function(x) paste(deparse(x), collapse = " ")

guess_line = function(name, default) {
  missing_default = is.symbol(default) && nchar(as.character(default)) == 0L
  if (missing_default) {
    return(sprintf("%s = p_uty(tags = \"train\"), # no default, check if required", name))
  }
  value = tryCatch(eval(default, envir = baseenv()), error = function(e) NULL)
  if (is.null(value) && !is.null(default) && !identical(default, quote(NULL))) {
    return(sprintf("%s = p_uty(tags = \"train\"), # default is the expression `%s`", name, deparse_default(default)))
  }
  if (is.null(value)) {
    return(sprintf("%s = p_uty(default = NULL, tags = \"train\"),", name))
  }
  if (is.logical(value) && length(value) == 1L) {
    return(sprintf("%s = p_lgl(default = %s, tags = \"train\"),", name, value))
  }
  if (is.numeric(value) && length(value) == 1L) {
    if (is.integer(value) || (is.finite(value) && value == round(value))) {
      return(sprintf("%s = p_int(default = %dL, tags = \"train\"), # check lower/upper", name, as.integer(value)))
    }
    return(sprintf("%s = p_dbl(default = %s, tags = \"train\"), # check lower/upper", name, format(value)))
  }
  if (is.character(value) && length(value) > 1L) {
    levels = paste0("\"", value, "\"", collapse = ", ")
    return(sprintf("%s = p_fct(levels = c(%s), default = \"%s\", tags = \"train\"),", name, levels, value[[1L]]))
  }
  if (is.character(value) && length(value) == 1L) {
    return(sprintf("%s = p_uty(default = \"%s\", tags = \"train\"), # string: p_fct if the levels are enumerable", name, value))
  }
  sprintf("%s = p_uty(default = %s, tags = \"train\"),", name, deparse_default(default))
}

for (spec in args) {
  fun = eval(parse(text = spec))
  fmls = formals(fun)
  cat(sprintf("# formals of %s\n", spec))
  for (name in names(fmls)) {
    if (name == "...") {
      cat("# `...` is forwarded, add the functions it reaches to the paramtest fun_list\n")
      next
    }
    cat("  ", guess_line(name, fmls[[name]]), "\n", sep = "")
  }
  cat("\n")
}

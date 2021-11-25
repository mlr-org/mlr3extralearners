library(mlr3)
lapply(list.files(system.file("testthat", package = "mlr3"),
  pattern = "helper_autotest", full.names = TRUE), source)

format_exclude_once = function(x) {
  first_char = substr(x, 1, 1)
  if (first_char == "-") {
    x = substr(x, 2, nchar(x))
  }
  last_char = substr(x, nchar(x), nchar(x))
  if (last_char == "-") x = substr(x, 1, nchar(x) - 1)
  x = gsub("-", "_", x)
  return(x)
}

format_exclude = function(x) {
  x = x[(nchar(x) > 0)]
  x = mlr3misc::map_chr(x, format_exclude_once)
  return(x)
}

weka_control_args = function(x) {
  arg_desc = RWeka::WOW(x)
  arg_names = arg_desc$Name
  exclude = format_exclude(arg_names)
  exclude = unique(exclude)
  return(exclude)
}

# Helper functions for RWeka

# Formats an RWeka argument into the mlr3 naming style
format_rweka_once = function(x) {
  first_char = substr(x, 1, 1)
  if (first_char == "-") {
    x = substr(x, 2, nchar(x))
  }
  last_char = substr(x, nchar(x), nchar(x))
  if (last_char == "-") x = substr(x, 1, nchar(x) - 1)
  x = gsub("-", "_", x)
  return(x)
}

# Vectorized formatting
format_rweka = function(x) {
  x = x[(nchar(x) > 0)]
  x = mlr3misc::map_chr(x, format_rweka_once)
  return(x)
}

# Get the RWeka control arguments for function f and translate them into mlr3 style
weka_control_args = function(f) {
  arg_desc = RWeka::WOW(f)
  arg_names = arg_desc$Name
  exclude = format_rweka(arg_names)
  exclude = unique(exclude)
  return(exclude)
}

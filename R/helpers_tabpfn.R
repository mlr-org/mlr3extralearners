# Convert the features of a task to a pandas data frame that tabpfn understands.
# Integer and logical columns are cast to double, because reticulate converts `NA` in integer columns to
# -2147483648 and `NA` in logical columns to `FALSE`, while `NA_real_` is correctly converted to `np.nan`.
# Factor, ordered, and character columns are passed through as is and become pandas `category` and string columns,
# which tabpfn ordinally encodes internally.
tabpfn_data = function(task) {
  data = task$data(cols = task$feature_names)
  cols = names(data)[map_lgl(data, function(x) is.integer(x) || is.logical(x))]
  if (length(cols)) {
    data[, (cols) := lapply(.SD, as.double), .SDcols = cols]
  }
  reticulate::r_to_py(as.data.frame(data))
}

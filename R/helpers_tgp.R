# Encode a mixed-type data.frame into a numeric matrix for tgp.
# Factor columns are one-hot encoded with fixed levels (error on unseen/missing levels).
# Returns the matrix plus factor metadata and column names for downstream reconstruction.
encode_features = function(data, factor_levels = NULL) {
  data = as.data.frame(data)
  factor_cols = names(data)[vapply(data, inherits, logical(1), what = "factor")]
  numeric_cols = setdiff(names(data), factor_cols)

  if (is.null(factor_levels)) {
    factor_levels = if (length(factor_cols)) {
      stats::setNames(lapply(factor_cols, function(col) levels(data[[col]])), factor_cols)
    } else {
      list()
    }
  }

  dummy_mats = list()
  if (length(factor_cols)) {
    for (col in factor_cols) {
      lvls = factor_levels[[col]]
      f = factor(data[[col]], levels = lvls)
      if (anyNA(f)) {
        stop(sprintf("Factor column '%s' contains missing or unseen levels.", col))
      }
      mm = stats::model.matrix(~ f)
      if (ncol(mm) > 1L) {
        mm = mm[, -1, drop = FALSE]
        colnames(mm) = make.names(sprintf("%s.%s", col, lvls[-1]))
        dummy_mats[[col]] = mm
      }
    }
  }

  encoded = if (length(numeric_cols)) {
    as.data.frame(data[, numeric_cols, drop = FALSE])
  } else {
    NULL
  }

  if (length(dummy_mats)) {
    encoded = if (is.null(encoded)) {
      do.call(cbind, dummy_mats)
    } else {
      cbind(encoded, do.call(cbind, dummy_mats))
    }
  }

  if (is.null(encoded)) {
    encoded = matrix(, nrow = nrow(data), ncol = 0)
  }

  mat = as.matrix(encoded)

  list(
    data = mat,
    factor_levels = factor_levels,
    basemax = max(1L, length(numeric_cols)),
    column_names = colnames(mat)
  )
}

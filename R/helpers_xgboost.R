# helper function to construct an `xgb.DMatrix` object
# that has both features and target (label) data for survival objectives
get_xgb_mat = function(task, objective, weights = NULL, row_ids = NULL) {
  # use all task rows if `rows_ids` is not specified
  if (is.null(row_ids)) {
    row_ids = task$row_ids
  }

  x = task$data(rows = row_ids, cols = task$feature_names)
  y = task$truth(rows = row_ids) # Surv object
  times  = y[, 1]
  status = y[, 2]

  x_mat   = as_numeric_matrix(x)

  if (objective == "survival:cox") {
    # event = positive time, censored = negative time
    label = times
    label[status != 1] = -label[status != 1]

    xgboost::xgb.DMatrix(
      data   = x_mat,
      label  = label,
      weight = weights
    )
  } else if (objective == "survival:aft") {
    lower = times
    upper = times
    upper[status == 0] = Inf # right-censoring

    xgboost::xgb.DMatrix(
      data              = x_mat,
      label_lower_bound = lower,
      label_upper_bound = upper,
      weight            = weights
    )
  } else {
    stop("Unsupported xgboost survival objective: ", objective)
  }
}

# return vector of importance scores given an `xgb.Booster` model
xgb_imp = function(model) {
  if (is.null(model)) {
    stopf("No model stored")
  }

  imp = xgboost::xgb.importance(model = model)
  set_names(imp$Gain, imp$Feature)
}

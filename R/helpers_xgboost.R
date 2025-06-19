# helper function to construct an `xgb.DMatrix` object
# that has both features and target (label) data
get_xgb_mat = function(task, objective, private, row_ids = NULL) {
  # use all task rows if `rows_ids` is not specified
  if (is.null(row_ids)) row_ids = task$row_ids

  data = task$data(rows = row_ids, cols = task$feature_names)
  truth = task$truth(rows = row_ids)
  times = truth[, 1]
  status = truth[, 2]

  if (objective == "survival:cox") { # Cox
    # censored => negative times, dead/event => positive times
    times[status != 1] = -1L * times[status != 1]
    data = xgboost::xgb.DMatrix(
      data = as_numeric_matrix(data),
      label = times
    )
  } else { # AFT
    y_lower_bound = y_upper_bound = times
    y_upper_bound[status == 0] = Inf

    data = xgboost::xgb.DMatrix(as_numeric_matrix(data))
    xgboost::setinfo(data, "label_lower_bound", y_lower_bound)
    xgboost::setinfo(data, "label_upper_bound", y_upper_bound)
  }

  xgboost::setinfo(data, "weight", private$.get_weights(task))

  data
}

# return vector of importance scores given an `xgb.Booster` model
xgb_imp = function(model) {
  if (is.null(model)) {
    stopf("No model stored")
  }

  imp = xgboost::xgb.importance(model = model)
  set_names(imp$Gain, imp$Feature)
}

# For lightgbm, we internally convert the factors and logicals to integers, so that the learner
# can be more easily used. Th

encode_lightgbm_train = function(task) {
  dat = task$data(cols = task$feature_names)
  encode_lightgbm(dat, task)
}

# this does the same as the encode_lightgbm_train but checks that the levels did not permute
# or a new level was added or a level was removed
encode_lightgbm_predict = function(task, data_prototype, self) {
  factor_columns = task$feature_types$id[task$feature_types$type == "factor"]

  dat = ordered_features(task, self)

  walk(
    factor_columns,
    function(nm) {
      ok = all.equal(levels(dat[[nm]]), levels(data_prototype[[nm]]))
      if (is.character(ok)) {
        stopf("There is a mismatch with the factor levels of the training phase.")
      }
    }
  )

  encode_lightgbm(dat, task)
}

encode_lightgbm = function(data, task) {
  categorical_feature = task$feature_types$id[task$feature_types$type %in% c("factor", "logical")]

  X = data.matrix(data)

  return(list(X = X, categorical_feature = categorical_feature))
}

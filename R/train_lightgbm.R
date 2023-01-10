train_lightgbm = function(self, task, task_type, pars, init_model = NULL) {
  convert_categorical = pars$convert_categorical
  pars$convert_categorical = NULL
  early_stopping = pars$early_stopping %??% FALSE
  pars$early_stopping = NULL
  if (early_stopping && !length(task$row_roles$test)) {
    stopf("Can't do early stopping if no test data is available.")
  }
  if (!convert_categorical) {
    assert_true(all(task$feature_types$type %in% c("integer", "numeric")))
    categorical_feature = pars$categorical_feature
  } else {
    categorical_feature = c(task$feature_types$id[task$feature_types$type %in% c("factor", "logical")], # nolint
      pars$categorical_feature)
  }
  pars$categorical_feature = NULL

  x_train = data.matrix(task$data(rows = task$row_roles$use, cols = task$feature_names))
  y_train = task$data(rows = task$row_roles$use, cols = task$target_names)[[1L]]

  x_valid = y_valid = NULL
  if (early_stopping) {
    x_valid = data.matrix(task$data(rows = task$row_roles$test, cols = task$feature_names))
    y_valid = task$data(rows = task$row_roles$test, cols = task$target_names)[[1L]]
  }

  if (task_type == "classif") {
    # catch incorrect objective setting
    if (!is.null(pars$objective) && pars$objective %in% c("multiclass", "multiclassova") &&
      !("multiclass" %in% task$properties)) {
      stopf("Objective cannot be 'multiclass' or 'multiclassova' if task is not multiclass.")
    }

    # set default objective
    if (is.null(pars$objective)) {
      if ("multiclass" %in% task$properties) {
        pars$objective = "multiclass"
      } else {
        pars$objective = "binary"
      }
    }

    # set number of classes if multiclass and save label ordering
    if (pars$objective %in% c("multiclass", "multiclassova")) {
      pars$num_class = length(task$class_names)
      self$state$labels = unique(task$truth())
    }

    if (pars$objective %in% c("multiclass", "multiclassova")) {
      y_train = as.integer(y_train) - 1L
      if (early_stopping) {
        y_valid = as.integer(y_valid) - 1L
      }
    } else {
      y_train = as.integer(y_train == task$positive)
      if (early_stopping) {
        y_valid = as.integer(y_valid == task$positive)
      }
    }

  }
  dtrain = lightgbm::lgb.Dataset(
    data = x_train,
    label = y_train,
    free_raw_data = FALSE,
    categorical_feature = categorical_feature
  )
  if ("weights" %in% task$properties) {
    dtrain$set_field("weight", task$weights[get("row_id") %in% task$row_roles$use, "weight"][[1L]])
  }

  valids = list()
  if (early_stopping) {
    dvalid = lightgbm::lgb.Dataset.create.valid(
      dataset = dtrain,
      data = x_valid,
      label = y_valid,
      params = list(
        categorical_feature = categorical_feature
      )
    )
    valids[["test"]] = dvalid

    if ("weights" %in% task$properties) {
      dvalid$set_field("weight", task$weights[get("row_id") %in% task$row_roles$test, "weight"][[1L]]) # nolint
    }
  }

  ii = names(pars) %in% formalArgs(lightgbm::lgb.train)
  args = pars[ii]
  params = pars[!ii]

  invoke(
    lightgbm::lgb.train,
    data = dtrain,
    valids = valids,
    .args = args,
    params = params,
    categorical_feature = categorical_feature,
    init_model = init_model
  )
}

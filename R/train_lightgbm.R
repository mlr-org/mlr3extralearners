train_lightgbm = function(self, task, task_type, pars, init_model = NULL) {
  convert_categorical = pars$convert_categorical
  pars$convert_categorical = NULL
  early_stopping = pars$early_stopping %??% FALSE
  pars$early_stopping = NULL

  if (!convert_categorical) {
    assert_true(all(task$feature_types$type %in% c("integer", "numeric")))
    categorical_feature = pars$categorical_feature
  } else {
    categorical_feature = c(task$feature_types$id[task$feature_types$type %in% c("factor", "logical")], # nolint
      pars$categorical_feature)

  }

  x_train = data.matrix(task$data(rows = "test", cols = task$feature_names))
  y_train = task$data(rows = "use", cols = task$target_names)[[1L]]

  x_valid = y_valid = NULL
  if (early_stopping && !is.null(task$row_roles$test)) {
    x_valid = data.matrix(task$data(rows = "test", cols = task$feature_names))
    y_valid = task$data(rows = "test", cols = task$target_names)[[1L]]
  }

  if (task_type == "classif") {
    # catch incorrect objective setting
    if (!is.null(pars$objective) && pars$objective %in% c("multiclass", "multiclassova") &&
      !("multiclass" %in% task$properties)) {
      stop("Objective cannot be 'multiclass' or 'multiclassova' if task is not multiclass.")
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
    } else {
      y = as.integer(y == task$positive)
    }

  }

  if (!is.null(task$row_roles$test)) {

    if (convert_categorical) {
      X_test = encode_lightgbm_train(task, "test")$test
      X = encoding$X
      categorical_feature = c(encoding$categorical_feature, pars$categorical_feature)
    } else {
      assert_true(all(task$feature_types$type %in% c("integer", "numeric")))
      X = data.matrix(task$data(cols = task$feature_names))
      categorical_feature = pars$categorical_feature
    }

    train_ids = task$row_roles$use
    test_ids = task$row_roles$test

    dtrain = lightgbm::lgb.Dataset(
      data = X[train_ids, , drop = FALSE],
      label = y[train_ids],
      free_raw_data = FALSE,
      categorical_feature = categorical_feature
    )

    dvalid = lightgbm::lgb.Dataset.create.valid(
      dataset = dtrain,
      data = X[test_ids, , drop = FALSE],
      label = y[test_ids],
      params = list(
        categorical_feature = categorical_feature
      )
    )
    valids = list(test = dvalid)

    row_id = NULL
    if ("weights" %in% task$properties) {
      dtrain$set_field("weight", subset(task$weights, row_id %in% train_ids)$weight)
      dvalid$set_field("weight", subset(task$weights, row_id %in% test_ids)$weight)
    }
  } else {
    dtrain = lightgbm::lgb.Dataset(
      data = X,
      label = y,
      free_raw_data = FALSE,
      categorical_feature = categorical_feature
    )
    valids = list()

    if ("weights" %in% task$properties) {
      dtrain$set_field("weight", task$weights$weight)
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

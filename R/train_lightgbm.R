train_lightgbm = function(self, task, task_type, pars, init_model = NULL) {

  # convert data
  x_train = data.matrix(task$data(rows = task$row_roles$use, cols = task$feature_names))
  y_train = task$data(rows = task$row_roles$use, cols = task$target_names)[[1L]]

  # set objective
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
    } else {
      y_train = as.integer(y_train == task$positive)
    }
  }

  # create data set
  categorical_feature = if (any(task$feature_types$type %in% c("factor", "logical"))) {
    task$feature_types$id[task$feature_types$type %in% c("factor", "logical")]
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

  # early stopping
  internal_valid_task = task$internal_valid_task

  if (!is.null(pars$early_stopping_rounds) && is.null(internal_valid_task)) {
    stopf("Learner (%s): Configure field 'validate' to enable early stopping.", self$id)
  }

  valids = list()
  if (!is.null(internal_valid_task)) {

    x_valid = data.matrix(internal_valid_task$data(cols = internal_valid_task$feature_names))
    y_valid = internal_valid_task$data(cols = internal_valid_task$target_names)[[1L]]

    if (task_type == "classif") {
      if (pars$objective %in% c("multiclass", "multiclassova")) {
        y_valid = as.integer(y_valid) - 1L
      } else {
        y_valid = as.integer(y_valid == internal_valid_task$positive)
      }
    }

    dvalid = lightgbm::lgb.Dataset.create.valid(
      dataset = dtrain,
      data = x_valid,
      label = y_valid,
      params = list(
        categorical_feature = categorical_feature
      )
    )

    if ("weights" %in% internal_valid_task$properties) {
      dvalid$set_field("weight", internal_valid_task$weights[get("row_id") %in% internal_valid_task$row_roles$test, "weight"][[1L]])
    }

    valids[["test"]] = dvalid
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
    init_model = init_model
  )
}

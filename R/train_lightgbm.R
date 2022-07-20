train_lightgbm = function(self, task, task_type, pars, init_model = NULL) {
  assert_choice(task_type, c("regr", "classif"))
  self$state$feature_names = task$feature_names
  convert_categorical = pars$convert_categorical
  pars$convert_categorical = NULL

  if (convert_categorical) {
    encoding = encode_lightgbm_train(task)
    X = encoding$X
    categorical_feature = c(encoding$categorical_feature, pars$categorical_feature)
  } else {
    assert_true(all(task$feature_types$type %in% c("integer", "numeric")))
    X = data.matrix(task$data(cols = task$feature_names))
    categorical_feature = pars$categorical_feature
  }
  pars$categorical_feature = NULL

  y = task$data(cols = task$target_names)[[1L]]

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
      y = as.integer(y) - 1L
    } else {
      y = as.integer(y == task$positive)
    }

  }

  early_stopping_split = pars$early_stopping_split
  pars$early_stopping_split = NULL

  if (isTRUE(early_stopping_split > 0)) {
    # we cannot simultaneously do stratification and grouping
    ids = mlr3::partition(task, ratio = 1 - early_stopping_split, stratify = is.null(task$groups))

    self$state$valid_ids = ids$test

    dtrain = lightgbm::lgb.Dataset(
      data = X[ids$train, , drop = FALSE],
      label = y[ids$train],
      free_raw_data = FALSE,
      categorical_feature = categorical_feature
    )

    dvalid = lightgbm::lgb.Dataset.create.valid(
      dataset = dtrain,
      data = X[ids$test, , drop = FALSE],
      label = y[ids$test],
      params = list(
        categorical_feature = categorical_feature
      )
    )
    valids = list(test = dvalid)

    row_id = NULL
    if ("weights" %in% task$properties) {
      dtrain$set_field("weight", subset(task$weights, row_id %in% ids$train)$weight)
      dvalid$set_field("weight", subset(task$weights, row_id %in% ids$test)$weight)
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

glmnet_get_lambda = function(self, pv) {
  model = self$model$model

  if (is.null(model)) {
    stopf("Learner '%s' has no model stored", self$id)
  }

  pv = pv %??% self$param_set$get_values(tags = "predict")
  s = pv$s

  if (is.character(s)) {
    model[[s]]
  } else if (is.numeric(s)) {
    s
  } else { # null / missing
    if (inherits(model, "cv.glmnet")) {
      model[["lambda.1se"]]
    } else if (length(model$lambda) == 1L) {
      model$lambda
    } else {
      default = self$param_set$default$s
      warningf(
        "Multiple lambdas have been fit. Lambda will be set to %s (see parameter 's').", default
      )
      default
    }
  }
}

glmnet_feature_names = function(model) {
  beta = model$beta
  if (is.null(beta)) {
    beta = model$glmnet.fit$beta
  }

  rownames(if (is.list(beta)) beta[[1L]] else beta)
}

glmnet_selected_features = function(self, lambda = NULL) {
  model = self$model$model
  if (is.null(model)) {
    stopf("No model stored")
  }

  assert_number(lambda, null.ok = TRUE, lower = 0)
  lambda = lambda %??% glmnet_get_lambda(self)
  nonzero = predict(model, type = "nonzero", s = lambda)
  if (is.data.frame(nonzero)) {
    nonzero = nonzero[[1L]]
  } else {
    nonzero = unlist(map(nonzero, 1L), use.names = FALSE)
    nonzero = if (length(nonzero)) sort(unique(nonzero)) else integer()
  }

  glmnet_feature_names(model)[nonzero]
}

glmnet_set_offset = function(task, phase = "train", pv) {
  assert_choice(phase, c("train", "predict"))

  if ("offset" %nin% task$properties) return(pv)

  use_pred_offset = isTRUE(pv$use_pred_offset)
  is_train = phase == "train"

  # only right-censored survival tasks supported
  if (task$task_type == "surv") {
    pv[[if (is_train) "offset" else "newoffset"]] =
      if (is_train || use_pred_offset) task$offset$offset else rep(0, task$nrow)
  }

  pv
}

glmnet_invoke = function(data, target, pv, cv = FALSE) {
  saved_ctrl = glmnet::glmnet.control()
  on.exit(invoke(glmnet::glmnet.control, .args = saved_ctrl))
  glmnet::glmnet.control(factory = TRUE)
  is_ctrl_pars = names(pv) %in% names(saved_ctrl)

  if (any(is_ctrl_pars)) {
    invoke(glmnet::glmnet.control, .args = pv[is_ctrl_pars])
    pv = pv[!is_ctrl_pars]
  }

  invoke(
    if (cv) glmnet::cv.glmnet else glmnet::glmnet,
    x = data, y = target, .args = pv
  )
}

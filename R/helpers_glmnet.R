glmnet_get_lambda = function(self, pv) {
  model = self$native_model

  if (is.null(model)) {
    stopf("Learner '%s' has no model stored", self$id)
  }

  pv = pv %??% self$param_set$get_values(tags = "predict")
  s = pv[["s"]]

  if (is.character(s)) {
    model[[s]]
  } else if (is.numeric(s)) {
    s
  } else {
    # null / missing
    if (inherits(model, "cv.glmnet")) {
      model[["lambda.1se"]]
    } else if (length(model$lambda) == 1L) {
      model$lambda
    } else {
      default = self$param_set$default$s
      warningf(
        "Multiple lambdas have been fit. Lambda will be set to %s (see parameter 's').",
        default
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
  model = self$native_model
  if (is.null(model)) {
    stopf("No model stored")
  }

  assert_number(lambda, null.ok = TRUE, lower = 0)
  lambda = lambda %??% glmnet_get_lambda(self)
  nonzero = predict(model, type = "nonzero", s = lambda)

  nonzero = if (is.data.frame(nonzero)) {
    nonzero[[1L]]
  } else {
    sort(unique(unlist(nonzero, use.names = FALSE)))
  }

  glmnet_feature_names(model)[nonzero]
}

glmnet_stratify_surv = function(task, pv) {
  if (is.null(pv$strata)) {
    return(task$truth())
  }

  assert_string(pv$strata)
  assert_subset(pv$strata, task$feature_names)

  glmnet::stratifySurv(
    task$truth(),
    strata = as.integer(task$data(cols = pv$strata)[[1L]])
  )
}

glmnet_set_newstrata = function(task, pv) {
  if (is.null(pv$strata)) {
    return(pv)
  }

  assert_string(pv$strata)
  assert_subset(pv$strata, task$feature_names)

  pv$newstrata = as.integer(task$data(cols = pv$strata)[[1L]])
  remove_named(pv, "strata")
}

glmnet_surv_return = function(fit, lp, pv) {
  if (is.null(pv$newstrata)) {
    surv = t(fit$surv)
    dimnames(surv) = NULL
    return(mlr3proba::surv_return(times = fit$time, surv = surv, lp = lp))
  }

  # number of time points per observation
  ntimes = as.integer(fit$strata)
  ids = rep(seq_along(ntimes), ntimes)
  # one element (times vector) per observation
  times_list = split(fit$time, ids)
  # one element (survival probability vector) per observation
  surv_list = split(fit$surv, ids)
  common_times = sort(unique(fit$time))

  # different strata correspond to different sets of time points
  # interpolate survival probabilities to common time points
  res = Map(
    function(x, times) {
      survdistr::interp(
        x = x,
        times = times,
        eval_times = common_times,
        method = "const_surv",
        output = "surv",
        add_times = FALSE,
        check = FALSE
      )
    },
    surv_list,
    times_list
  )
  # survival matrix with common times
  surv = do.call(rbind, res)
  dimnames(surv) = NULL

  mlr3proba::surv_return(times = common_times, surv = surv, lp = lp)
}

glmnet_set_offset = function(task, phase = "train", pv) {
  assert_choice(phase, c("train", "predict"))

  if ("offset" %nin% task$properties) {
    return(pv)
  }

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

  if (cv) {
    invoke(glmnet::cv.glmnet, x = data, y = target, .args = pv)
  } else {
    invoke(glmnet::glmnet, x = data, y = target, .args = pv)
  }
}

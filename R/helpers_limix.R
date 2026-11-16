# Hugging Face repositories and files of the released checkpoints
limix_checkpoints = list(
  "LimiX-2" = list(repo_id = "stable-ai/LimiX-2", filename = "LimiX-2.ckpt"),
  "LimiX-2M" = list(repo_id = "stable-ai/LimiX-1_2M", filename = "LimiX-1_2M.ckpt"),
  "LimiX-16M" = list(repo_id = "stable-ai/LimiX-1_16M", filename = "LimiX-1_16M.ckpt")
)

# LimiX is not released on PyPI, where the name "limix" belongs to an unrelated package,
# so it is installed from the GitHub repository.
# huggingface_hub downloads the weights but is not declared by LimiX.
# triton is imported unconditionally by LimiX and is only a dependency of the CUDA builds of torch on Linux.
assert_limix_packages = function() {
  packages = c("torch", "LimiX @ git+https://github.com/limix-ldm-ai/LimiX", "huggingface_hub")
  modules = c("torch", "limix", "huggingface_hub")
  if (identical(Sys.info()[["sysname"]], "Linux")) {
    packages = c(packages, "triton")
    modules = c(modules, "triton")
  }
  assert_python_packages(packages, modules = modules)
}

# Parameter set of classif.limix and regr.limix, `regr = TRUE` adds the parameters of the regression decoders.
limix_param_set = function(regr = FALSE) {
  param_set = ps(
    model = p_fct(names(limix_checkpoints), init = "LimiX-2", tags = "train"),
    model_path = p_uty(tags = "train", custom_check = check_string),
    device = p_uty(init = "auto", tags = c("train", "required"), custom_check = check_string),
    inference_config = p_uty(tags = "train", custom_check = check_string),
    mix_precision = p_lgl(default = TRUE, tags = "train"),
    outlier_remove_std = p_dbl(lower = 0, default = 12, tags = "train"),
    softmax_temperature = p_dbl(lower = 0, default = 0.9, tags = "train"),
    use_data_cache = p_lgl(default = FALSE, tags = "train"),
    cache_dir = p_uty(default = "/tmp", tags = "train", custom_check = check_string),
    seed = p_int(default = 0L, tags = "train"),
    deterministic = p_lgl(default = FALSE, tags = "train"),
    test_batch_mode = p_fct(c("full_first", "fixed"), default = "full_first", tags = "train"),
    test_batch_size = p_int(lower = 1L, default = 16384L, special_vals = list("None"), tags = "train"),
    enable_preprocess_parallel = p_lgl(default = TRUE, tags = "train"),
    preprocess_num_jobs = p_int(lower = 1L, default = 16L, tags = c("train", "threads")),
    gpu_ids = p_uty(tags = "train", custom_check = function(x) {
      check_integerish(x, lower = 0, any.missing = FALSE, min.len = 1L)
    }),
    unique_dataset_name = p_uty(tags = "predict", custom_check = check_string)
  )
  if (regr) {
    param_set = c(param_set, ps(
      average_before_softmax = p_lgl(default = TRUE, tags = "train"),
      regression_decoder_type = p_fct(
        c("mse", "bucket", "bucket_4_tabpfn", "hierarchical"),
        default = "mse", tags = "train"
      )
    ))
  }
  param_set
}

# Downloads the checkpoint if needed and constructs the python predictor from the train parameters.
# `task_type` is "Classification" or "Regression" and selects the packaged default inference config.
limix_predictor = function(pars, task_type) {
  assert_limix_packages()
  # convert = FALSE keeps the checkpoint, a dict of tensors, in python
  torch = reticulate::import("torch", convert = FALSE)

  model_path = pars$model_path
  if (is.null(model_path)) {
    checkpoint = limix_checkpoints[[pars$model %??% "LimiX-2"]]
    hub = reticulate::import("huggingface_hub")
    model_path = hub$hf_hub_download(repo_id = checkpoint$repo_id, filename = checkpoint$filename)
  }

  # load the checkpoint once to find out which architecture version it has and hand it on to the predictor
  ckpt = torch$load(model_path, map_location = "cpu", weights_only = FALSE)
  version = reticulate::import("model.version")
  arch_line = version$resolve_arch_line(version$resolve_arch_version(ckpt))

  if (is.null(pars$inference_config)) {
    config = reticulate::import("config")
    filename = sprintf(
      "%s_default_noretrieval%s.json",
      if (task_type == "Classification") "cls" else "reg",
      if (arch_line == "v1_0") "" else "_v2"
    )
    pars$inference_config = file.path(dirname(config[["__file__"]]), filename)
  }

  if (arch_line == "v1_0") {
    # The V1.0 predictor has no cache_dir argument and creates a hard-coded directory below "/mnt/public"
    # on construction, which fails on most machines, so we redirect the default of its cache manager.
    v1 = reticulate::import("inference.v1_0.predictor")
    cache_dir = pars$cache_dir %??% file.path(tempdir(), "limix_cache")
    reticulate::py_set_attr(v1$LimiXPredictor$CacheManager[["__init__"]], "__defaults__", reticulate::tuple(cache_dir))
  }

  device = pars$device
  if (identical(device, "auto")) {
    device = if (reticulate::py_to_r(torch$cuda$is_available())) "cuda" else "cpu"
  }
  pars$device = torch$device(device)

  if (identical(pars$test_batch_size, "None")) {
    pars$test_batch_size = reticulate::py_none()
  }
  if (!is.null(pars$gpu_ids)) {
    pars$gpu_ids = as.list(as.integer(pars$gpu_ids))
  }

  pars$model = NULL
  pars$model_path = model_path
  pars$ckpt = ckpt

  limix = reticulate::import("limix")
  invoke(limix$LimiXPredictor, .args = pars)
}

# Converts features to a data.frame that reticulate turns into a pandas data frame LimiX can preprocess.
# Integer and logical columns are cast to double, because reticulate converts `NA` in integer columns to
# -2147483648 and `NA` in logical columns to `FALSE`, while `NA_real_` is correctly converted to `np.nan`.
# Ordered factors are passed as their integer codes, because LimiX would encode their labels alphabetically.
# Factors are passed as strings and are ordinal encoded by LimiX.
limix_data = function(data) {
  data = as.data.frame(data)
  data[] = map(data, function(x) {
    if (is.ordered(x) || is.integer(x) || is.logical(x)) {
      as.double(x)
    } else if (is.factor(x)) {
      as.character(x)
    } else {
      x
    }
  })
  data
}

# LimiX has no separate fit step, so training only stores the context data and loads the predictor.
limix_train = function(self, task, task_type) {
  pars = self$param_set$get_values(tags = "train")
  target = if (task_type == "Classification") as.integer(task$truth()) - 1L else task$truth()

  structure(
    list(
      predictor = limix_predictor(pars, task_type),
      data = limix_data(task$data(cols = task$feature_names)),
      target = target,
      pars = pars,
      task_type = task_type
    ),
    class = "limix_model"
  )
}

# Returns class probabilities with one column per class level (classification) or the response (regression).
limix_predict = function(self, task) {
  assert_limix_packages()
  model = self$model
  pars = self$param_set$get_values(tags = "predict")

  # the columns of the context and the query data must be in the same order
  newdata = limix_data(ordered_features(task, self))[, names(model$data), drop = FALSE]

  pred = invoke(
    model$predictor$predict,
    x_train = reticulate::r_to_py(model$data),
    y_train = reticulate::r_to_py(model$target),
    x_test = reticulate::r_to_py(newdata),
    task_type = model$task_type,
    .args = pars
  )
  pred = reticulate::py_to_r(pred)

  if (model$task_type == "Regression") {
    return(as.numeric(pred))
  }

  # LimiX returns one column per class present in the training data, sorted by the integer class code
  class_names = task$class_names
  prob = matrix(0, nrow = nrow(pred), ncol = length(class_names), dimnames = list(NULL, class_names))
  prob[, sort(unique(model$target)) + 1L] = pred
  prob
}

#' @export
marshal_model.limix_model = function(model, inplace = FALSE, ...) {
  # The fitted state consists of the context data and the parameters, which are plain R objects.
  # The predictor only holds the pre-trained weights and is reconstructed on unmarshal.
  structure(
    list(marshaled = model[names(model) != "predictor"], packages = "mlr3extralearners"),
    class = c("limix_model_marshaled", "marshaled")
  )
}

#' @export
unmarshal_model.limix_model_marshaled = function(model, inplace = FALSE, ...) {
  model = model$marshaled
  structure(
    c(list(predictor = limix_predictor(model$pars, model$task_type)), model),
    class = "limix_model"
  )
}

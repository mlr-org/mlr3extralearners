params_tabnet = function() {
  param_set = ParamSet$new(list(
    num_threads= p_int(default = 1L, lower = 1L, upper = Inf, tags = c("train", "threads")),
    batch_size = p_int(default = 256L, lower = 1L, upper = Inf, tags = "train"),
    penalty = p_dbl(default = 0.001, tags = "train"),

    # FIXME: NULL here is used for bool FALSE, not sure what to do there.
    clip_value = p_uty(default = NULL, tags = "train"),
    loss = p_fct(default = "auto", levels = c("auto", "mse", "cross_entropy"), tags = "train"),
    epochs = p_int(default = 5L, lower = 1L, upper = Inf, tags = "train"),
    drop_last = p_lgl(default = FALSE, tags = "train"),
    decision_width = p_int(default = 8L, lower = 1L, upper = Inf, tags = "train"),
    attention_width = p_int(default = 8L, lower = 1L, upper = Inf, tags = "train"),
    num_steps = p_int(default = 3L, lower = 1L, upper = Inf, tags = "train"),
    feature_reusage = p_dbl(default = 1.3, lower = 0, upper = Inf, tags = "train"),
    mask_typs = p_fct(default = "sparsemax", levels = c("sparsemax", "entmax"), tags = "train"),
    virtual_batch_size = p_int(default = 128L, lower = 1L, upper = Inf, tags = "train"),
    valid_split = p_dbl(default = 0, lower = 0, upper = 1, tags = "train"),
    learn_rate = p_dbl(default = 0.02, lower = 0, upper = 1, tags = "train"),

    # FIXME: Currently either 'adam' or arbitrary optimizer function according to docs
    optimizer = p_uty(default = "adam", tags = "train"),

    # FIXME: This is either NULL or a function or explicit "steps", needs custom_check fun
    lr_scheduler = p_uty(default = NULL, tags = "train"),

    lr_decay = p_dbl(default = 0.1, lower = 0, upper = 1, tags = "train"),
    step_size = p_int(default = 30L, lower = 1L, upper = Inf, tags = "train"),
    checkpoint_epochs = p_int(default = 10L, lower = 1L, upper = Inf, tags = "train"),
    cat_emb_dim = p_int(default = 1L, lower = 0L, upper = Inf, tags = "train"),
    num_independent = p_int(default = 2L, lower = 0, upper = Inf, tags = "train"),
    num_shared = p_int(default = 2L, lower = 0, upper = Inf, tags = "train"),
    momentum = p_dbl(default = 0.02, lower = 0, upper = 1, tags = "train"),
    pretraining_ratio = p_dbl(default = 0.5, lower = 0, upper = 1, tags = "train"),
    verbose = p_lgl(default = FALSE, tags = "train"),
    devics = p_fct(default = "auto", levels = c("auto", "cpu", "cuda"), tags = "train"),
    importance_sample_size = p_int(lower = 0, upper = 1e5, special_vals = list(NULL), tags = "train")
  ))

  # Set param values that differ from default in tabnet_fit
  param_set$values = list(
    num_threads = 1L,
    # clip_value = NULL,
    decision_width = 8L,
    attention_width = 8L
  )
  return(param_set)
}

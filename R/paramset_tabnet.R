#' Wrapper for the TabNet ParamSet
#'
#' Used to de-duplicate learner setup.
#' @return Object of classes `ParamSet" "R6"`, suitable for use with
#' @keywords internal
#'
params_tabnet = function() {
  param_set = ParamSet$new(list(
    ParamInt$new("num_threads", default = 1L, lower = 1L, upper = Inf, tags = c("train", "threads")),
    ParamInt$new("batch_size", default = 256L, lower = 1L, upper = Inf, tags = "train"),
    ParamDbl$new("penalty", default = 0.001, tags = "train"),

    # FIXME: NULL here is used for bool FALSE, not sure what to do there.
    ParamUty$new("clip_value", default = NULL, tags = "train"),
    ParamFct$new("loss", default = "auto", levels = c("auto", "mse", "cross_entropy"), tags = "train"),
    ParamInt$new("epochs", default = 5L, lower = 1L, upper = Inf, tags = "train"),
    ParamLgl$new("drop_last", default = FALSE, tags = "train"),
    ParamInt$new("decision_width", default = 8L, lower = 1L, upper = Inf, tags = "train"),
    ParamInt$new("attention_width", default = 8L, lower = 1L, upper = Inf, tags = "train"),
    ParamInt$new("num_steps", default = 3L, lower = 1L, upper = Inf, tags = "train"),
    ParamDbl$new("feature_reusage", default = 1.3, lower = 0, upper = Inf, tags = "train"),
    ParamFct$new("mask_type", default = "sparsemax", levels = c("sparsemax", "entmax"), tags = "train"),
    ParamInt$new("virtual_batch_size", default = 128L, lower = 1L, upper = Inf, tags = "train"),
    ParamDbl$new("valid_split", default = 0, lower = 0, upper = 1, tags = "train"),
    ParamDbl$new("learn_rate", default = 0.02, lower = 0, upper = 1, tags = "train"),

    # FIXME: Currently either 'adam' or arbitrary optimizer function according to docs
    ParamUty$new("optimizer", default = "adam", tags = "train"),

    # FIXME: This is either NULL or a function or explicit "steps", needs custom_check fun
    ParamUty$new("lr_scheduler", default = NULL, tags = "train"),

    ParamDbl$new("lr_decay", default = 0.1, lower = 0, upper = 1, tags = "train"),
    ParamInt$new("step_size", default = 30L, lower = 1L, upper = Inf, tags = "train"),
    ParamInt$new("checkpoint_epochs", default = 10L, lower = 1L, upper = Inf, tags = "train"),
    ParamInt$new("cat_emb_dim", default = 1L, lower = 0L, upper = Inf, tags = "train"),
    ParamInt$new("num_independent", default = 2L, lower = 0, upper = Inf, tags = "train"),
    ParamInt$new("num_shared", default = 2L, lower = 0, upper = Inf, tags = "train"),
    ParamDbl$new("momentum", default = 0.02, lower = 0, upper = 1, tags = "train"),
    ParamDbl$new("pretraining_ratio", default = 0.5, lower = 0, upper = 1, tags = "train"),
    ParamLgl$new("verbose", default = FALSE, tags = "train"),
    ParamFct$new("device", default = "auto", levels = c("auto", "cpu", "cuda"), tags = "train"),
    ParamInt$new("importance_sample_size", lower = 0, upper = 1e5, special_vals = list(NULL), tags = "train")
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

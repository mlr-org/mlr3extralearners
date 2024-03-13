#' @section Early stopping:
#' Early stopping can be used to find the optimal number of boosting rounds.
#' The `early_stopping_set` parameter controls which set is used to monitor the
#' performance.
#' By default, `early_stopping_set = "none"` which disables early stopping.
#' Set `early_stopping_set = "test"` to monitor the performance of the model on
#' the test set while training.
#' The test set for early stopping can be set with the `"test"` row role in the
#' [mlr3::Task].
#' Additionally, the range must be set in which the performance must increase
#' with `early_stopping_rounds` and the maximum number of boosting rounds with
#' `nrounds`.
#' While resampling, the test set is automatically applied from the [mlr3::Resampling].
#' Not that using the test set for early stopping can potentially bias the
#' performance scores.

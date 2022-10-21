#' @section Formula:
#' Although most mlr3 learners don't allow to specify the formula manually, and automatically
#' set it by valling `task$formula()`, this learner allows to set the `formula` because it's core
#' functionality depends it. This means that it might not always use all features that are available
#' in the [task][mlr3::Task].
#' Be aware, that this can sometimes lead to unexpected error messages,
#' because mlr3 checks the compatibility between the learner and the task on **all** available features.

#' @section Installation:
#' While the Python dependencies are handled via `reticulate::py_require()`, you can
#' manually specify a virtual environment by calling `reticulate::use_virtualenv()`
#' prior to calling the `$train()` function.
#' In this virtual environment, the `tabpfn` package and its dependencies must be installed.
#'
#' @section Saving a Learner:
#' In order to save a `<%= class %>` for later usage,
#' it is necessary to call the `$marshal()` method on the `Learner`
#' before writing it to disk, as the object will otherwise not be saved correctly.
#' After loading a marshaled `<%= class %>` into R again,
#' you then need to call `$unmarshal()` to transform it into a useable state.
#'
#' @section Initial parameter values:
#' - `n_jobs` is initialized to 1 to avoid threading conflicts with \CRANpkg{future}.

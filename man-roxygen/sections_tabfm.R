#' @section Installation:
#' This learner relies on \CRANpkg{reticulate} to handle Python dependencies.
#' It is not necessary to install any Python package manually in advance or specify a Python environment
#' via `reticulate::use_python()`, `reticulate::use_virtualenv()`, `reticulate::use_condaenv()`,
#' or `reticulate::use_miniconda()`.
#' By calling `$train()` or `$predict()`, the required Python packages will be installed automatically,
#' if not already.
#' The `backend` parameter selects which extra is installed:
#' `"jax"` installs `tabfm[jax]` and `"pytorch"` installs `tabfm[pytorch]`.
#' Reticulate will then configure and initialize an ephemeral environment satisfying those requirements,
#' unless an existing environment (e.g., `"r-reticulate"`) in reticulate's
#' [Order of Discovery](https://rstudio.github.io/reticulate/articles/versions.html#order-of-discovery)
#' contains all the necessary packages.
#'
#' You may also manually install `tabfm` into a Python environment following the
#' [official installation guide](https://github.com/google-research/tabfm#installation)
#' and specify the environment via `reticulate::use_*()` before calling `$train()` or `$predict()`.
#'
#' On the first call to `$train()`, the pre-trained model weights (about 100 MB) are downloaded from
#' [Hugging Face](https://huggingface.co/google) and cached for subsequent calls.
#'
#' @section Saving a Learner:
#' In order to save a `<%= class %>` for later usage,
#' it is necessary to call the `$marshal()` method on the `Learner`
#' before writing it to disk, as the object will otherwise not be saved correctly.
#' After loading a marshaled `<%= class %>` into R again,
#' you then need to call `$unmarshal()` to transform it into a useable state.
#' The several gigabyte pre-trained backbone is not serialized;
#' it is detached before marshaling and reloaded from the Hugging Face cache on `$unmarshal()`.

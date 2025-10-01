#' @section Installation:
#' This learner relies on \CRANpkg{reticulate} to handle Python dependencies. 
#' It is not necessary to install any Python package manually in advance or specify a Python environment
#' via `reticulate::use_python()`, `reticulate::use_virtualenv()`, `reticulate::use_condaenv()`,
#' or `reticulate::use_miniconda()`.
#' By calling `$train()` or `$predict()`, the required Python packages (`tapfn`, `torch`, etc.) will be installed
#' automatically, if not already.
#' Reticulate will then configure and initialize an ephemeral environment satisfying those requirements,
#' unless an existing environment (e.g., `"r-reticulate"`) in reticulate's
#' [Order of Discovery](https://rstudio.github.io/reticulate/articles/versions.html#order-of-discovery)
#' contains all the necessary packages.
#'
#' You may also manually install `tabpfn` into a Python environment following the
#' [official installation guide](https://github.com/PriorLabs/TabPFN?tab=readme-ov-file#-quick-start)
#' and specify the environment via `reticulate::use_*()` before calling `$train()` or `$predict()`.
#' Note that the GPU version of PyTorch cannot be loaded by `reticulate::use_condaenv()` from a conda environment.
#' To use a conda environment, please install the CPU version of PyTorch.
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

#' @section Installation:
#' This learner relies on \CRANpkg{reticulate} to handle Python dependencies.
#' It is not necessary to install any Python package manually in advance or specify a Python environment
#' via `reticulate::use_python()`, `reticulate::use_virtualenv()`, `reticulate::use_condaenv()`,
#' or `reticulate::use_miniconda()`.
#' By calling `$train()` or `$predict()`, the required Python packages will be installed automatically,
#' if not already.
#' `LimiX` is not released on PyPI and is installed from its
#' [GitHub repository](https://github.com/limix-ldm-ai/LimiX), which requires `git` and Python 3.12 or newer.
#' Reticulate will then configure and initialize an ephemeral environment satisfying those requirements,
#' unless an existing environment (e.g., `"r-reticulate"`) in reticulate's
#' [Order of Discovery](https://rstudio.github.io/reticulate/articles/versions.html#order-of-discovery)
#' contains all the necessary packages.
#'
#' You may also manually install `LimiX` into a Python environment following the
#' [official installation guide](https://github.com/limix-ldm-ai/LimiX#-tutorials)
#' and specify the environment via `reticulate::use_*()` before calling `$train()` or `$predict()`.
#' Besides `LimiX`, the environment needs the Python packages `huggingface_hub` and `triton`.
#' `LimiX` imports `triton`, which is only available on Linux, so the learner is only tested on Linux.
#'
#' On the first call to `$train()`, the pre-trained model weights are downloaded from
#' [Hugging Face](https://huggingface.co/stable-ai) and cached for subsequent calls
#' (about 1.6 GB for `"LimiX-2"` and 10 MB for `"LimiX-2M"`).
#' The weights have their own licenses, and the weights of `"LimiX-2"` are released under a non-commercial license.
#' The `"LimiX-2"` model is slow without a GPU.
#'
#' @section Saving a Learner:
#' In order to save a `<%= class %>` for later usage,
#' it is necessary to call the `$marshal()` method on the `Learner`
#' before writing it to disk, as the object will otherwise not be saved correctly.
#' After loading a marshaled `<%= class %>` into R again,
#' you then need to call `$unmarshal()` to transform it into a useable state.
#' The pre-trained weights are not serialized;
#' they are dropped on `$marshal()` and reloaded from the Hugging Face cache or `model_path` on `$unmarshal()`.

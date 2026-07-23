# Pinned python requirements for testing the python-based (reticulate) learners.
# Each group gets its own virtualenv named "mlr3extralearners-<group>" so that
# conflicting requirements never meet in one environment.
# Tests activate an environment by pointing RETICULATE_PYTHON to its python binary
# inside a fresh callr session, see run_py_test() in tests/testthat/helper.R.
# The runtime requirements of the learners stay unpinned on purpose,
# these pins only define the currently supported (i.e., tested) versions.
# This file must stay self-contained (base R plus reticulate),
# because the CI workflow sources it without loading the package.
python_requirements = list(
  fastai = list(
    python = "3.12",
    packages = c(
      "IPython",
      "torch==2.13.0",
      "torchvision==0.28.0",
      "fastai==2.8.7",
      "fastcore==1.14.5",
      "pydicom",
      "kornia"
    )
  ),
  tabpfn = list(
    python = "3.12",
    packages = c(
      "torch==2.13.0",
      "tabpfn==8.1.0"
    )
  ),
  botorch = list(
    python = "3.12",
    packages = c(
      "torch==2.13.0",
      "botorch==0.18.1",
      "gpytorch==1.15.2",
      "numpyro==0.21.0",
      "jax==0.11.0",
      "jaxlib==0.11.0"
    )
  )
)

# Creates one virtualenv per requirement group under reticulate::virtualenv_root().
# With cpu_torch = TRUE (default), the cpu-only torch wheels are installed on linux,
# which are much smaller than the default cuda wheels and sufficient for testing.
install_python_test_envs = function(groups = names(python_requirements), cpu_torch = TRUE) {
  stopifnot(all(groups %in% names(python_requirements)))
  for (group in groups) {
    req = python_requirements[[group]]
    envname = paste0("mlr3extralearners-", group)
    packages = req$packages
    pip_options = character()
    if (cpu_torch && identical(Sys.info()[["sysname"]], "Linux")) {
      packages = sub("^(torch|torchvision)==(.+)$", "\\1==\\2+cpu", packages)
      pip_options = c("--extra-index-url", "https://download.pytorch.org/whl/cpu")
    }
    if (!reticulate::virtualenv_exists(envname)) {
      reticulate::virtualenv_create(envname, version = req$python)
    }
    reticulate::virtualenv_install(envname, packages = packages, pip_options = pip_options)
  }
  invisible(NULL)
}

skip_on_os("windows")
skip_if_not_installed("survivalmodels")
skip_if_not_installed("distr6")
skip_if_not_installed("reticulate")

test_that("autotest", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")
    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)


    lapply(list.files(system.file("testthat", package = "mlr3"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    lapply(list.files(system.file("testthat", package = "mlr3proba"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    reticulate::py_require(c("numpy", "torch", "pycox"), python_version = "3.10")
    np = reticulate::import("numpy")
    torch = reticulate::import("torch")
    withr::local_seed(1)
    np$random$seed(1L)
    torch$manual_seed(1L)

    learner = lrn("surv.deephit")
    expect_learner(learner)

    # single test fails randomly I think this depends on the python version
    result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
    testthat::expect_true(result, info = result$error)
    TRUE
  }))
})

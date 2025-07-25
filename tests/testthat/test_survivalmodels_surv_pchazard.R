skip_on_os("windows")

test_that("autotest", {
  expect_true(callr::r(function() {
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
    set.seed(1)
    np$random$seed(1L)
    torch$manual_seed(1L)

    learner = lrn("surv.pchazard")
    expect_learner(learner)

    run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
    TRUE
  }))
})


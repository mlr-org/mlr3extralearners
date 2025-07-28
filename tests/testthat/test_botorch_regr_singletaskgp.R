test_that("autotest: regr.botorch_singletaskgp", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")

    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)

    lapply(list.files(system.file("testthat", package = "mlr3"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    lapply(list.files(system.file("testthat", package = "mlr3proba"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    learner = mlr3::lrn("regr.botorch_singletaskgp")
    expect_learner(learner)
    result = run_autotest(learner)

    testthat::expect_true(result, info = result$error)
    TRUE
  }))
})

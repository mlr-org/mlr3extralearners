
test_that("autotest: regr.botorch_mixedsingletaskgp", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")

    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)

    lapply(list.files(system.file("testthat", package = "mlr3"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

      lapply(list.files(system.file("testthat", package = "mlr3proba"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)


    learner = mlr3::lrn("regr.botorch_mixedsingletaskgp")
    expect_learner(learner)
    # learner needs at least one logical or categorical feature
    # sanity check includes only numeric features
    result = run_autotest(learner, exclude = c("feat_single_numeric|feat_single_integer|sanity"))

    testthat::expect_true(result, info = result$error)
    TRUE
  }))
})

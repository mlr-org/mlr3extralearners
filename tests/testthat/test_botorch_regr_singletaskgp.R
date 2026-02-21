skip_if_not_installed("reticulate")
skip_if_not_installed("callr")

test_that("autotest: regr.botorch_singletaskgp", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed", OMP_NUM_THREADS = "1")

    library(mlr3)
    library(mlr3extralearners)

    lapply(list.files(system.file("testthat", package = "mlr3"), pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    mirai::daemons(1, .compute = "mlr3_encapsulation_botorch_single")
    on.exit(mirai::daemons(0, .compute = "mlr3_encapsulation_botorch_single"), add = TRUE)

    mirai::everywhere({
      Sys.setenv(RETICULATE_PYTHON = "managed", OMP_NUM_THREADS = "1")
    }, .compute = "mlr3_encapsulation_botorch_single")

    learner = mlr3::lrn("regr.botorch_singletaskgp")
    expect_learner(learner)
    result = run_autotest(learner)

    testthat::expect_true(result, info = result$error)
    TRUE
  }))
})


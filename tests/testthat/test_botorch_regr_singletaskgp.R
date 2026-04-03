skip_if_not_installed("reticulate")
skip_if_not_installed("callr")
skip_on_os(c("windows", "mac"))

test_that("autotest: regr.botorch_singletaskgp", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")

    library(mlr3)
    library(mlr3extralearners)

    lapply(list.files(system.file("testthat", package = "mlr3"), pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    mirai::daemons(1, .compute = "mlr3_encapsulation")

    mirai::everywhere({
      Sys.setenv(RETICULATE_PYTHON = "managed")
    }, .compute = "mlr3_encapsulation")

    learner = mlr3::lrn("regr.botorch_singletaskgp")
    expect_learner(learner)
    result = run_autotest(learner)

    testthat::expect_true(result, info = result$error)
    TRUE
  }))
})

test_that("kernels: regr.botorch_singletaskgp", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")

    library(mlr3)
    library(mlr3extralearners)

    task = tsk("mtcars")
    # Cannot fit model with "cosine" on this dataset
    kernels = c("matern_2.5", "matern_1.5", "matern_0.5", "rbf", "linear", "polynomial", "periodic", "rq", "piecewise_polynomial", "constant")

    for (k in kernels) {
      learner = mlr3::lrn("regr.botorch_singletaskgp", kernel = k)
      learner$train(task)
      prediction = learner$predict(task)
      checkmate::expect_class(prediction, "PredictionRegr", info = sprintf("kernel: %s", k))
    }

    TRUE
  }))
})

test_that("input_transforms: regr.botorch_singletaskgp", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")

    library(mlr3)
    library(mlr3extralearners)

    task = tsk("mtcars")
    # log10 does not work on the complete dataset, but works on a subset
    task$col_roles$feature = c("cyl", "disp", "hp", "drat", "wt", "qsec")
    transforms = c("normalize", "standardize", "log10", "warp", "none")

    for (trafo in transforms) {
      learner = mlr3::lrn("regr.botorch_singletaskgp", input_transform = trafo)
      learner$train(task)
      prediction = learner$predict(task)
      checkmate::expect_class(prediction, "PredictionRegr", info = sprintf("input_transform: %s", trafo))
    }

    TRUE
  }))
})

test_that("outcome_transforms: regr.botorch_singletaskgp", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")

    library(mlr3)
    library(mlr3extralearners)

    task = tsk("mtcars")
    transforms = c("standardize", "log", "none")

    for (trafo in transforms) {
      learner = mlr3::lrn("regr.botorch_singletaskgp", outcome_transform = trafo)
      learner$train(task)
      prediction = learner$predict(task)
      checkmate::expect_class(prediction, "PredictionRegr", info = sprintf("outcome_transform: %s", trafo))
    }

    TRUE
  }))
})


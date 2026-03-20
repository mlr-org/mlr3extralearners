skip_if_not_installed("reticulate")
skip_if_not_installed("callr")

test_that("autotest: regr.botorch_mixedsingletaskgp", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")

    library(mlr3)
    library(mlr3extralearners)

    lapply(list.files(system.file("testthat", package = "mlr3"), pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    mirai::daemons(1, .compute = "mlr3_encapsulation")

    mirai::everywhere({
      Sys.setenv(RETICULATE_PYTHON = "managed")
    }, .compute = "mlr3_encapsulation")

    learner = mlr3::lrn("regr.botorch_mixedsingletaskgp")
    expect_learner(learner)
    result = run_autotest(learner, exclude = c("feat_single_numeric|feat_single_integer|sanity"))

    testthat::expect_true(result, info = result$error)
    TRUE
  }))
})

test_that("kernels: regr.botorch_mixedsingletaskgp", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")

    library(mlr3)
    library(mlr3extralearners)

    task = tsk("mtcars")
    task$col_roles$feature = c("am", "mpg")
    kernels = c("matern_2.5", "matern_1.5", "matern_0.5", "rbf", "linear", "polynomial", "periodic", "cosine", "rq", "piecewise_polynomial", "constant")

    for (k in kernels) {
      learner = mlr3::lrn("regr.botorch_mixedsingletaskgp", kernel = k)
      learner$train(task)
      prediction = learner$predict(task)
      testthat::expect_class(prediction, "PredictionRegr", info = sprintf("kernel: %s", k))
    }

    TRUE
  }))
})

test_that("input_transforms: regr.botorch_mixedsingletaskgp", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")

    library(mlr3)
    library(mlr3extralearners)

    task = tsk("mtcars")
    task$col_roles$feature = c("am", "mpg")
    transforms = c("normalize", "standardize", "log10", "warp", "none")

    for (trafo in transforms) {
      learner = mlr3::lrn("regr.botorch_mixedsingletaskgp", input_transform = trafo)
      learner$train(task)
      prediction = learner$predict(task)
      testthat::expect_class(prediction, "PredictionRegr", info = sprintf("input_transform: %s", trafo))
    }

    TRUE
  }))
})

test_that("outcome_transforms: regr.botorch_mixedsingletaskgp", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")

    library(mlr3)
    library(mlr3extralearners)

    task = tsk("mtcars")
    task$col_roles$feature = c("am", "mpg")
    transforms = c("standardize", "log", "power", "bilog", "none")

    for (trafo in transforms) {
      learner = mlr3::lrn("regr.botorch_mixedsingletaskgp", outcome_transform = trafo)
      learner$train(task)
      prediction = learner$predict(task)
      testthat::expect_class(prediction, "PredictionRegr", info = sprintf("outcome_transform: %s", trafo))
    }

    TRUE
  }))
})

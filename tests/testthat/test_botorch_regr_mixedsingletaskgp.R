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

test_that("input_transforms: regr.botorch_mixedsingletaskgp", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")

    library(mlr3)
    library(mlr3extralearners)

    dat = cbind(mtcars[, c("mpg", "cyl")], am = factor(mtcars$am))
    task = mlr3::as_task_regr(dat, target = "mpg")
    transforms = c("normalize", "standardize", "log10", "warp", "none")

    for (trafo in transforms) {
      learner = mlr3::lrn("regr.botorch_mixedsingletaskgp", input_transform = trafo)
      learner$train(task)
      prediction = learner$predict(task)
      checkmate::expect_class(prediction, "PredictionRegr", info = sprintf("input_transform: %s", trafo))
    }

    TRUE
  }))
})

test_that("outcome_transforms: regr.botorch_mixedsingletaskgp", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")

    library(mlr3)
    library(mlr3extralearners)

    dat = cbind(mtcars[, c("mpg", "cyl")], am = factor(mtcars$am))
    task = mlr3::as_task_regr(dat, target = "mpg")
    transforms = c("standardize", "log", "none")

    for (trafo in transforms) {
      learner = mlr3::lrn("regr.botorch_mixedsingletaskgp", outcome_transform = trafo)
      learner$train(task)
      prediction = learner$predict(task)
      checkmate::expect_class(prediction, "PredictionRegr", info = sprintf("outcome_transform: %s", trafo))
    }

    TRUE
  }))
})

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

    learner = lrn("surv.akritas", lambda = 0.5)
    expect_learner(learner)

    result = run_autotest(learner, check_replicable = FALSE)

    testthat::expect_true(result, info = result$error)
    TRUE
  }))
})

test_that("time points for prediction", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")
    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)

    lapply(list.files(system.file("testthat", package = "mlr3"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    lapply(list.files(system.file("testthat", package = "mlr3proba"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    task = tsk("lung")
    learner = lrn("surv.akritas")
    learner$train(task)
    p = learner$predict(task)
    times = as.integer(colnames(p$data$distr))
    testthat::expect_equal(times, task$unique_times()) # unique train time points are used
    TRUE
  }))

  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")
    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)

    lapply(list.files(system.file("testthat", package = "mlr3"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    lapply(list.files(system.file("testthat", package = "mlr3proba"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    task = tsk("lung")
    learner = lrn("surv.akritas")
    learner$train(task)
    p = learner$predict(task)
    times = as.integer(colnames(p$data$distr))
    testthat::expect_equal(times, task$unique_times()) # unique train time points are used
    TRUE
  }))

  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")
    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)

    lapply(list.files(system.file("testthat", package = "mlr3"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    lapply(list.files(system.file("testthat", package = "mlr3proba"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    task = tsk("lung")
    learner = lrn("surv.akritas")

    # use many more time points than the ones in the train set
    learner$param_set$set_values(.values = list(ntime = 9999))
    learner$train(task)
    p = learner$predict(task)
    times = as.integer(colnames(p$data$distr))
    testthat::expect_equal(times, task$unique_times()) # all unique train time points are still used
    TRUE
  }))

  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")
    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)

    lapply(list.files(system.file("testthat", package = "mlr3"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    lapply(list.files(system.file("testthat", package = "mlr3proba"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    task = tsk("lung")
    learner = lrn("surv.akritas")
    learner$param_set$set_values(.values = list(ntime = 50))
    learner$train(task)
    p = learner$predict(task)
    times = as.integer(colnames(p$data$distr))
    # min and max times are retained after coersion
    testthat::expect_equal(min(times), min(task$unique_times()))
    testthat::expect_equal(max(times), max(task$unique_times()))
    testthat::expect_equal(length(times), 50)
    TRUE
  }))
})



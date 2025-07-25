test_that("autotest aft", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")
    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)


    lapply(list.files(system.file("testthat", package = "mlr3"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    lapply(list.files(system.file("testthat", package = "mlr3proba"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    set.seed(1)

    learner = lrn("surv.parametric")
    expect_learner(learner)

    # single test fails randomly I think this depends on the python version
    result = run_autotest(learner, check_replicable = FALSE, exclude = "utf8_feature_names")
    TRUE
  }))
})

test_that("autotest ph", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")
    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)

    lapply(list.files(system.file("testthat", package = "mlr3"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    lapply(list.files(system.file("testthat", package = "mlr3proba"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    set.seed(1)

    learner = lrn("surv.parametric", form = "ph")
    expect_learner(learner)

    # single test fails randomly I think this depends on the python version
    result = run_autotest(learner, check_replicable = FALSE, exclude = "utf8_feature_names")
    TRUE
  }))
})

test_that("autotest po", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")
    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)

    lapply(list.files(system.file("testthat", package = "mlr3"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    lapply(list.files(system.file("testthat", package = "mlr3proba"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    set.seed(1)

    learner = lrn("surv.parametric", form = "po")
    expect_learner(learner)

    # single test fails randomly I think this depends on the python version
    result = run_autotest(learner, check_replicable = FALSE, exclude = "utf8_feature_names")
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
    learner = lrn("surv.parametric")
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
    learner = lrn("surv.parametric")
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
    learner = lrn("surv.parametric")
    learner$param_set$set_values(.values = list(ntime = 50))
    p = learner$train(task)$predict(task)
    times = as.integer(colnames(p$data$distr))
    # min and max times are retained after coersion
    testthat::expect_equal(min(times), min(task$unique_times()))
    testthat::expect_equal(max(times), max(task$unique_times()))
    testthat::expect_equal(length(times), 50)
    TRUE
  }))

})

test_that("missing", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")
    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)

    lapply(list.files(system.file("testthat", package = "mlr3"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    lapply(list.files(system.file("testthat", package = "mlr3proba"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    lung = survival::lung
    lung$status = lung$status - 1
    lung_missings = mlr3proba::TaskSurv$new("lung", backend = lung, time = "time", event = "status")

    learner = lrn("surv.parametric")
    testthat::expect_error(learner$predict(lung_missings))
    TRUE
  }))
})

test_that("'form' affects survival prediction", {
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
    # aft
    learner = lrn("surv.parametric", form = "aft")
    learner$train(task)
    p = learner$predict(task)
    testthat::expect_true(inherits(p$distr, "Matdist"))
    surv_aft = p$distr$survival(task$unique_times())
    checkmate::expect_matrix(surv_aft, nrows = length(task$unique_times()), ncols = task$nrow,  any.missing = FALSE) # [times x obs]
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
    # tobit
    learner = lrn("surv.parametric", form = "tobit")
    learner$train(task)
    p = learner$predict(task)
    testthat::expect_true(inherits(p$distr, "Matdist"))
    surv_tobit = p$distr$survival(task$unique_times())
    checkmate::expect_matrix(surv_tobit, nrows = length(task$unique_times()), ncols = task$nrow, any.missing = FALSE) # [times x obs]
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
    # ph
    learner = lrn("surv.parametric", form = "ph")
    learner$train(task)
    p = learner$predict(task)
    testthat::expect_true(inherits(p$distr, "Matdist"))
    surv_ph = p$distr$survival(task$unique_times())
    checkmate::expect_matrix(surv_ph, nrows = length(task$unique_times()), ncols = task$nrow, any.missing = FALSE) # [times x obs]
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
    # po
    learner = lrn("surv.parametric", form = "po")
    learner$train(task)
    p = learner$predict(task)
    testthat::expect_true(inherits(p$distr, "Matdist"))
    surv_po = p$distr$survival(task$unique_times())
    checkmate::expect_matrix(surv_po, nrows = length(task$unique_times()), ncols = task$nrow, any.missing = FALSE) # [times x obs]
  }))
})



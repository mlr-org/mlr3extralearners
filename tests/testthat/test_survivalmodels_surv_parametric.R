test_that("autotest aft", {
  result = mirai::collect_mirai(mirai::mirai({
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
  }))

  expect_true(result, info = result$error)
})

test_that("autotest ph", {
  result = mirai::collect_mirai(mirai::mirai({
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
  }))

  expect_true(result, info = result$error)
})

test_that("autotest po", {
  result = mirai::collect_mirai(mirai::mirai({
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
  }))

  expect_true(result, info = result$error)
})

test_that("time points for prediction", {
  result = mirai::collect_mirai(mirai::mirai({
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
  }))

  expect_false(mirai::is_mirai_error(result), info = as.character(result))

  result = mirai::collect_mirai(mirai::mirai({
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
  }))

  expect_false(mirai::is_mirai_error(result), info = as.character(result))


  result = mirai::collect_mirai(mirai::mirai({
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
  }))

  expect_false(mirai::is_mirai_error(result), info = as.character(result))
})

test_that("missing", {
  result = mirai::collect_mirai(mirai::mirai({
    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)

    lapply(list.files(system.file("testthat", package = "mlr3"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    lapply(list.files(system.file("testthat", package = "mlr3proba"),
      pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    learner = lrn("surv.parametric")
    testthat::expect_error(learner$predict(lung_missings))
  }, lung_missings = lung_missings))

  expect_false(mirai::is_mirai_error(result), info = as.character(result))
})

test_that("'form' affects survival prediction", {
  result = mirai::collect_mirai(mirai::mirai({
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
    surv_aft
  }))

  expect_false(mirai::is_mirai_error(result), info = as.character(result))
  surv_aft = if (!mirai::is_mirai_error(result)) result


  result = mirai::collect_mirai(mirai::mirai({
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
    surv_tobit
  }))

  expect_false(mirai::is_mirai_error(result), info = as.character(result))
  surv_tobit = if (!mirai::is_mirai_error(result)) result

  result = mirai::collect_mirai(mirai::mirai({
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
    surv_ph
  }))

  expect_false(mirai::is_mirai_error(result), info = as.character(result))
  surv_ph = if (!mirai::is_mirai_error(result)) result

  result = mirai::collect_mirai(mirai::mirai({
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
    surv_po
  }))

  expect_false(mirai::is_mirai_error(result), info = as.character(result))
  surv_po = if (!mirai::is_mirai_error(result)) result

  # predicted survival matrices are different
  expect_true(!is.null(surv_aft) && !is.null(surv_tobit) && any(surv_aft != surv_tobit))
  expect_true(!is.null(surv_aft) && !is.null(surv_ph) && any(surv_aft != surv_ph))
  expect_true(!is.null(surv_aft) && !is.null(surv_po) && any(surv_aft != surv_po))
  expect_true(!is.null(surv_tobit) && !is.null(surv_ph) && any(surv_tobit != surv_ph))
  expect_true(!is.null(surv_tobit) && !is.null(surv_po) && any(surv_tobit != surv_po))
  expect_true(!is.null(surv_ph) && !is.null(surv_po) && any(surv_ph != surv_po))
})

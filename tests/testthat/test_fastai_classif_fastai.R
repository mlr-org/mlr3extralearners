skip_if_not_installed("fastai")
skip_if_not_installed("reticulate")

test_that("autotest", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")
    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)
    library(testthat)
    library(checkmate)

    lapply(list.files(system.file("testthat", package = "mlr3"), pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    mirai::daemons(1, .compute = "mlr3_encapsulation")

    mirai::everywhere({
      Sys.setenv(RETICULATE_PYTHON = "managed")
    }, .compute = "mlr3_encapsulation")

    learner = lrn("classif.fastai", layers = c(200, 100))
    expect_learner(learner)

    result = run_autotest(learner, check_replicable = FALSE)
    testthat::expect_true(result, info = result$error)
    TRUE
  }))
})

test_that("eval protocol", {
  expect_true(callr::r(function() {
    py = path.expand("~/.virtualenvs/r-reticulate/bin/python")
    Sys.setenv(RETICULATE_PYTHON = py)
    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)
    library(testthat)
    library(checkmate)

    lapply(list.files(system.file("testthat", package = "mlr3"), pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    learner = lrn("classif.fastai")
    task = tsk("sonar")
    learner$train(task)
    testthat::expect_true(is.list(learner$model$eval_protocol))
    TRUE
  }))
})


test_that("validation and inner tuning works", {
  expect_true(callr::r(function() {
    py = Sys.getenv("MLR3EXTRALEARNERS_PYTHON", unset = "managed")
    Sys.setenv(RETICULATE_PYTHON = py)
    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)
    library(testthat)
    library(checkmate)
    library(paradox)

    lapply(list.files(system.file("testthat", package = "mlr3"), pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    task = tsk("spam")

    # with n_epoch and patience parameter
    learner = lrn("classif.fastai",
      n_epoch = 10L,
      patience = 1L,
      validate = 0.2,
      layers = c(200, 100)
    )

    learner$train(task)
    expect_named(learner$model$eval_protocol, c("epoch", "train_loss", "valid_loss", "accuracy"))
    expect_list(learner$internal_valid_scores, types = "numeric")
    expect_equal(names(learner$internal_valid_scores), "accuracy")
    expect_list(learner$internal_tuned_values, types = "integerish")
    expect_equal(names(learner$internal_tuned_values), "n_epoch")

    # without validate parameter
    learner$validate = NULL
    expect_error(learner$train(task), "field 'validate'")

    # with patience parameter
    learner = lrn("classif.fastai",
      n_epoch = 10,
      validate = 0.2,
      layers = c(200, 100)
    )

    learner$train(task)
    expect_equal(learner$internal_tuned_values, NULL)
    expect_named(learner$model$eval_protocol, c("epoch", "train_loss", "valid_loss", "accuracy"))
    expect_list(learner$internal_valid_scores, types = "numeric")
    expect_equal(names(learner$internal_valid_scores), "accuracy")

    # internal tuning
    learner = lrn("classif.fastai",
      n_epoch = to_tune(upper = 20, internal = TRUE),
      validate = 0.2,
      layers = c(200, 100)
    )
    s = learner$param_set$search_space()
    expect_error(learner$param_set$convert_internal_search_space(s), "patience")
    learner$param_set$set_values(patience = 10)
    learner$param_set$disable_internal_tuning("n_epoch")
    expect_equal(learner$param_set$values$patience, NULL)

    learner = lrn("classif.fastai",
      n_epoch = 20,
      patience = 5,
      validate = 0.3,
      layers = c(200, 100)
    )
    learner$train(task)
    expect_equal(learner$internal_valid_scores$accuracy, learner$model$eval_protocol$accuracy[learner$internal_tuned_values$n_epoch])

    # no validation and no internal tuning
    learner = lrn("classif.fastai")
    learner$train(task)
    expect_null(learner$internal_valid_scores)
    expect_null(learner$internal_tuned_values)

    # no tuning without patience parameter
    learner = lrn("classif.fastai", validate = 0.3, n_epoch = 10, layers = c(200, 100))
    learner$train(task)
    expect_equal(learner$internal_valid_scores$accuracy, learner$model$eval_protocol$accuracy[10L])
    expect_null(learner$internal_tuned_values)
    TRUE
    }))
  })

test_that("custom inner validation measure", {
  expect_true(callr::r(function() {
    py = path.expand("~/.virtualenvs/r-reticulate/bin/python")
    Sys.setenv(RETICULATE_PYTHON = py)
    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)
    library(testthat)
    library(checkmate)

    lapply(list.files(system.file("testthat", package = "mlr3"), pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    # internal measure
    task = tsk("sonar")

    learner = lrn("classif.fastai",
      n_epoch = 10,
      validate = 0.2,
      patience = 1,
      eval_metric = "error_rate"
    )

    learner$train(task)

    expect_named(learner$model$eval_protocol, c("epoch", "train_loss", "valid_loss", "error_rate"))
    expect_list(learner$internal_valid_scores, types = "numeric")
    expect_equal(names(learner$internal_valid_scores), "error_rate")

    # binary task and mlr3 measure binary response
    task = tsk("sonar")

    learner = lrn("classif.fastai",
      n_epoch = 10,
      validate = 0.2,
      eval_metric = msr("classif.ce"),
      layers = c(200, 100)
    )

    learner$train(task)

    expect_named(learner$model$eval_protocol, c("epoch", "train_loss", "valid_loss", "classif.ce"))
    expect_numeric(learner$model$eval_protocol$classif.ce, len = 10)
    expect_list(learner$internal_valid_scores, types = "numeric")
    expect_equal(names(learner$internal_valid_scores), "classif.ce")

    # binary task and mlr3 measure binary prob
    task = tsk("sonar")

    learner = lrn("classif.fastai",
      n_epoch = 10,
      validate = 0.2,
      predict_type = "prob",
      eval_metric = msr("classif.logloss"),
      layers = c(200, 100)
    )

    learner$train(task)

    expect_named(learner$model$eval_protocol, c("epoch", "train_loss", "valid_loss", "classif.logloss"))
    expect_numeric(learner$model$eval_protocol$classif.logloss, len = 10)
    expect_list(learner$internal_valid_scores, types = "numeric")
    expect_equal(names(learner$internal_valid_scores), "classif.logloss")

    # binary task and mlr3 measure multiclass prob
    task = tsk("sonar")

    learner = lrn("classif.fastai",
      n_epoch = 10,
      validate = 0.2,
      predict_type = "prob",
      eval_metric = msr("classif.auc"),
      layers = c(200, 100)
    )

    learner$train(task)

    expect_named(learner$model$eval_protocol, c("epoch", "train_loss", "valid_loss", "classif.auc"))
    expect_numeric(learner$model$eval_protocol$classif.auc, len = 10)
    expect_list(learner$internal_valid_scores, types = "numeric")
    expect_equal(names(learner$internal_valid_scores), "classif.auc")

    # multiclass task and mlr3 measure multiclass response
    task = tsk("iris")

    learner = lrn("classif.fastai",
      n_epoch = 10,
      validate = 0.2,
      predict_type = "prob",
      eval_metric = msr("classif.ce"),
      layers = c(200, 100)
    )

    learner$train(task)

    expect_named(learner$model$eval_protocol, c("epoch", "train_loss", "valid_loss", "classif.ce"))
    expect_numeric(learner$model$eval_protocol$classif.ce, len = 10)
    expect_list(learner$internal_valid_scores, types = "numeric")
    expect_equal(names(learner$internal_valid_scores), "classif.ce")

    # multiclass task and mlr3 measure multiclass prob
    task = tsk("iris")

    learner = lrn("classif.fastai",
      n_epoch = 10,
      validate = 0.2,
      predict_type = "prob",
      eval_metric = msr("classif.logloss"),
      layers = c(200, 100)
    )

    learner$train(task)

    expect_named(learner$model$eval_protocol, c("epoch", "train_loss", "valid_loss", "classif.logloss"))
    expect_numeric(learner$model$eval_protocol$classif.logloss, len = 10)
    expect_list(learner$internal_valid_scores, types = "numeric")
    expect_equal(names(learner$internal_valid_scores), "classif.logloss")
    TRUE
  }))
})

test_that("marshaling works for classif.fastai", {
  expect_true(callr::r(function() {
    py = path.expand("~/.virtualenvs/r-reticulate/bin/python")
    Sys.setenv(RETICULATE_PYTHON = py)
    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)
    library(testthat)
    library(checkmate)

    lapply(list.files(system.file("testthat", package = "mlr3"), pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    learner = lrn("classif.fastai")
    task = tsk("iris")
    # expect_marshalable_learner(learner, task)

    learner$train(task)
    pred = learner$predict(task)
    model = learner$model
    class_prev = class(model)

    # checks for marshaling is the same as expect_marshalable_learner
    expect_false(learner$marshaled)
    expect_equal(is_marshaled_model(learner$model), learner$marshaled)
    expect_invisible(learner$marshal())
    expect_equal(mlr3::is_marshaled_model(learner$model), learner$marshaled)

    # checks for unmarshaling differs -- instead of checking equality of model,
    # we check equality of predictions, because expect_equal() on python objects
    # checks the pointer which almost always changes after unmarshaling
    expect_invisible(learner$unmarshal())
    expect_prediction(learner$predict(task))
    expect_equal(learner$predict(task), pred)
    expect_false(learner$marshaled)
    expect_equal(class(learner$model), class_prev)
    TRUE
  }))
})

test_that("n_threads parameter works", {
  expect_true(callr::r(function() {
    py = path.expand("~/.virtualenvs/r-reticulate/bin/python")
    Sys.setenv(RETICULATE_PYTHON = py)
    library(mlr3)
    library(mlr3proba)
    library(mlr3extralearners)
    library(testthat)
    library(checkmate)

    lapply(list.files(system.file("testthat", package = "mlr3"), pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    learner = lrn("classif.fastai")
    set_threads(learner,2)
    expect_equal(learner$param_set$values$num_workers, 2)
    task = tsk("sonar")
    learner$train(task)
    expect_prediction(learner$predict(task))
    TRUE
  }))
})

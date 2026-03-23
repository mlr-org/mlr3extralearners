skip_if_not_installed("reticulate")
skip_if_not_installed("callr")

test_that("autotest: regr.botorch_fullybayesian", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")

    library(mlr3)
    library(mlr3extralearners)

    lapply(list.files(system.file("testthat", package = "mlr3"), pattern = "^helper.*\\.[rR]", full.names = TRUE), source)

    mirai::daemons(1, .compute = "mlr3_encapsulation")

    mirai::everywhere({
      Sys.setenv(RETICULATE_PYTHON = "managed")
    }, .compute = "mlr3_encapsulation")

    learner = mlr3::lrn("regr.botorch_fullybayesian",
      warmup_steps = 8L,
      num_samples = 8L,
      thinning = 2L
    )
    expect_learner(learner)
    # MCMC sampling is not deterministic with fixed seeds
    result = run_autotest(learner, check_replicable = FALSE)

    testthat::expect_true(result, info = result$error)
    TRUE
  }))
})

test_that("input_transforms: regr.botorch_fullybayesian", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")

    library(mlr3)
    library(mlr3extralearners)

    task = tsk("mtcars")
    task$col_roles$feature = c("cyl", "disp", "hp", "drat", "wt", "qsec")
    transforms = c("normalize", "standardize", "log10", "warp", "none")

    for (trafo in transforms) {
      learner = mlr3::lrn("regr.botorch_fullybayesian",
        input_transform = trafo,
        warmup_steps = 8L,
        num_samples = 8L,
        thinning = 2L
      )
      learner$train(task)
      prediction = learner$predict(task)
      checkmate::expect_class(prediction, "PredictionRegr", info = sprintf("input_transform: %s", trafo))
    }

    TRUE
  }))
})

test_that("outcome_transforms: regr.botorch_fullybayesian", {
  expect_true(callr::r(function() {
    Sys.setenv(RETICULATE_PYTHON = "managed")

    library(mlr3)
    library(mlr3extralearners)

    task = tsk("mtcars")
    transforms = c("standardize", "none")

    for (trafo in transforms) {
      learner = mlr3::lrn("regr.botorch_fullybayesian",
        outcome_transform = trafo,
        warmup_steps = 8L,
        num_samples = 8L,
        thinning = 2L
      )
      learner$train(task)
      prediction = learner$predict(task)
      checkmate::expect_class(prediction, "PredictionRegr", info = sprintf("outcome_transform: %s", trafo))
    }

    TRUE
  }))
})

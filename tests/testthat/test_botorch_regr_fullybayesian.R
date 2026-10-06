skip_if_not_installed("reticulate")
skip_if_not_installed("callr")
skip_on_os(c("windows", "mac"))
skip_on_cran()
skip_if_no_python_env("botorch")

test_that("autotest: regr.botorch_fullybayesian", {
  expect_true(run_py_test("botorch", function() {
    learner = lrn("regr.botorch_fullybayesian", warmup_steps = 8L, num_samples = 8L, thinning = 2L)
    expect_learner(learner)
    # MCMC sampling is not deterministic with fixed seeds
    result = run_autotest(learner, check_replicable = FALSE)

    expect_true(result, info = result$error)
  }))
})

test_that("input_transforms: regr.botorch_fullybayesian", {
  expect_true(run_py_test("botorch", function() {
    task = tsk("mtcars")
    task$col_roles$feature = c("cyl", "disp", "hp", "drat", "wt", "qsec")
    transforms = c("normalize", "standardize", "log10", "warp", "none")

    for (trafo in transforms) {
      learner = lrn(
        "regr.botorch_fullybayesian",
        input_transform = trafo,
        warmup_steps = 8L,
        num_samples = 8L,
        thinning = 2L
      )
      learner$train(task)
      prediction = learner$predict(task)
      expect_class(prediction, "PredictionRegr", info = sprintf("input_transform: %s", trafo))
    }
  }))
})

test_that("outcome_transforms: regr.botorch_fullybayesian", {
  expect_true(run_py_test("botorch", function() {
    task = tsk("mtcars")
    transforms = c("standardize", "none")

    for (trafo in transforms) {
      learner = lrn(
        "regr.botorch_fullybayesian",
        outcome_transform = trafo,
        warmup_steps = 8L,
        num_samples = 8L,
        thinning = 2L
      )
      learner$train(task)
      prediction = learner$predict(task)
      expect_class(prediction, "PredictionRegr", info = sprintf("outcome_transform: %s", trafo))
    }
  }))
})

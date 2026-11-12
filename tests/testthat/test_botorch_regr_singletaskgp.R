skip_if_not_installed("reticulate")
skip_if_not_installed("callr")
skip_on_os(c("windows", "mac"))
skip_on_cran()
skip_if_no_python_env("botorch")

test_that("autotest: regr.botorch_singletaskgp", {
  expect_true(run_py_test("botorch", function() {
    learner = lrn("regr.botorch_singletaskgp")
    expect_learner(learner)
    result = run_autotest(learner)

    expect_true(result, info = result$error)
  }))
})

test_that("kernels: regr.botorch_singletaskgp", {
  expect_true(run_py_test("botorch", function() {
    task = tsk("mtcars")
    # Cannot fit model with "cosine" on this dataset
    kernels = c(
      "matern_2.5",
      "matern_1.5",
      "matern_0.5",
      "rbf",
      "linear",
      "polynomial",
      "periodic",
      "rq",
      "piecewise_polynomial",
      "constant"
    )

    for (k in kernels) {
      learner = lrn("regr.botorch_singletaskgp", kernel = k)
      learner$train(task)
      prediction = learner$predict(task)
      expect_class(prediction, "PredictionRegr", info = sprintf("kernel: %s", k))
    }
  }))
})

test_that("input_transforms: regr.botorch_singletaskgp", {
  expect_true(run_py_test("botorch", function() {
    task = tsk("mtcars")
    # log10 does not work on the complete dataset, but works on a subset
    task$col_roles$feature = c("cyl", "disp", "hp", "drat", "wt", "qsec")
    transforms = c("normalize", "standardize", "log10", "warp", "none")

    for (trafo in transforms) {
      learner = lrn("regr.botorch_singletaskgp", input_transform = trafo)
      learner$train(task)
      prediction = learner$predict(task)
      expect_class(prediction, "PredictionRegr", info = sprintf("input_transform: %s", trafo))
    }
  }))
})

test_that("outcome_transforms: regr.botorch_singletaskgp", {
  expect_true(run_py_test("botorch", function() {
    task = tsk("mtcars")
    transforms = c("standardize", "log", "none")

    for (trafo in transforms) {
      learner = lrn("regr.botorch_singletaskgp", outcome_transform = trafo)
      learner$train(task)
      prediction = learner$predict(task)
      expect_class(prediction, "PredictionRegr", info = sprintf("outcome_transform: %s", trafo))
    }
  }))
})

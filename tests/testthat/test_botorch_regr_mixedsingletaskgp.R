skip_if_not_installed("reticulate")
skip_if_not_installed("callr")
skip_on_os(c("windows", "mac"))
skip_on_cran()
skip_if_no_python_env("botorch")

test_that("autotest: regr.botorch_mixedsingletaskgp", {
  expect_true(run_py_test("botorch", function() {
    learner = lrn("regr.botorch_mixedsingletaskgp")
    expect_learner(learner)
    result = run_autotest(learner, exclude = c("feat_single_numeric|feat_single_integer|sanity"))

    expect_true(result, info = result$error)
  }))
})

test_that("input_transforms: regr.botorch_mixedsingletaskgp", {
  expect_true(run_py_test("botorch", function() {
    dat = cbind(mtcars[, c("mpg", "cyl")], am = factor(mtcars$am))
    task = as_task_regr(dat, target = "mpg")
    transforms = c("normalize", "standardize", "log10", "warp", "none")

    for (trafo in transforms) {
      learner = lrn("regr.botorch_mixedsingletaskgp", input_transform = trafo)
      learner$train(task)
      prediction = learner$predict(task)
      expect_class(prediction, "PredictionRegr", info = sprintf("input_transform: %s", trafo))
    }
  }))
})

test_that("outcome_transforms: regr.botorch_mixedsingletaskgp", {
  expect_true(run_py_test("botorch", function() {
    dat = cbind(mtcars[, c("mpg", "cyl")], am = factor(mtcars$am))
    task = as_task_regr(dat, target = "mpg")
    transforms = c("standardize", "log", "none")

    for (trafo in transforms) {
      learner = lrn("regr.botorch_mixedsingletaskgp", outcome_transform = trafo)
      learner$train(task)
      prediction = learner$predict(task)
      expect_class(prediction, "PredictionRegr", info = sprintf("outcome_transform: %s", trafo))
    }
  }))
})

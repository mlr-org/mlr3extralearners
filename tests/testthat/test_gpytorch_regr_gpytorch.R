skip_if_not_installed("reticulate")
skip_if_not_installed("callr")
skip_on_os(c("windows", "mac"))
skip_on_cran()
skip_if_no_python_env("botorch")

test_that("autotest", {
  expect_true(run_py_test("botorch", function() {
    learner = lrn("regr.gpytorch")
    expect_learner(learner)
    result = run_autotest(learner)
    expect_true(result, info = result$error)
  }))
})

test_that("marshaling works", {
  expect_true(run_py_test("botorch", function() {
    learner = lrn("regr.gpytorch", predict_type = "se")
    task = tsk("mtcars")
    learner$train(task)
    pred = learner$predict(task)
    class_prev = class(learner$model)

    expect_false(learner$marshaled)
    expect_invisible(learner$marshal())
    expect_true(is_marshaled_model(learner$model))
    expect_invisible(learner$unmarshal())
    expect_equal(learner$predict(task), pred)
    expect_false(learner$marshaled)
    expect_equal(class(learner$model), class_prev)
  }))
})

test_that("parameters and predictions", {
  expect_true(run_py_test("botorch", function() {
    task = tsk("mtcars")

    for (kernel in c("rbf", "matern_0.5", "matern_1.5", "matern_2.5")) {
      learner = lrn("regr.gpytorch", kernel = kernel, lr = 0.05, n_iter = 20L, device = "cpu", predict_type = "se")
      pred = learner$train(task)$predict(task)
      expect_numeric(pred$response, any.missing = FALSE, len = task$nrow, info = kernel)
      expect_numeric(pred$se, lower = 0, any.missing = FALSE, len = task$nrow, info = kernel)
    }

    learner = lrn("regr.gpytorch")
    mse = learner$train(task)$predict(task)$score(msr("regr.mse"))
    mse_featureless = lrn("regr.featureless")$train(task)$predict(task)$score(msr("regr.mse"))
    expect_lt(mse, mse_featureless)
  }))
})

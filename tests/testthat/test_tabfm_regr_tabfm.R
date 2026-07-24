skip_if_not_installed("reticulate")
skip_if_not_installed("callr")

skip_if_no_python_env("tabfm")

test_that("autotest", {
  expect_true(run_py_test("tabfm", function() {
    learner = lrn("regr.tabfm")
    expect_learner(learner)

    # reproducibility is not guaranteed, hence check_replicable = FALSE
    result = run_autotest(learner, check_replicable = FALSE)
    expect_true(result, info = result$error)
  }))
})

test_that("marshaling works for regr.tabfm", {
  expect_true(run_py_test("tabfm", function() {
    learner = lrn("regr.tabfm")
    task = tsk("mtcars")

    learner$train(task)
    pred = learner$predict(task)
    model = learner$model
    class_prev = class(model)

    expect_false(learner$marshaled)
    expect_invisible(learner$marshal())
    expect_invisible(learner$unmarshal())
    expect_prediction(learner$predict(task))
    expect_equal(learner$predict(task), pred)
    expect_false(learner$marshaled)
    expect_equal(class(learner$model), class_prev)
  }))
})

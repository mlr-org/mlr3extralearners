skip_if_not_installed("reticulate")
skip_if_not_installed("callr")

skip_if_no_python_env("tabfm")

# tabfm wraps a multi-gigabyte foundation model whose CPU inference is slow, so instead of the full
# run_autotest() we run a single smoke test with one fit (n_estimators = 1) covering prediction,
# mixed feature types with missing values, and marshaling.
test_that("regr.tabfm smoke test", {
  expect_true(run_py_test("tabfm", function() {
    learner = lrn("regr.tabfm", n_estimators = 1)
    expect_learner(learner)

    # mixed feature types with missing values exercise tabfm's preprocessing pipeline
    n = 40
    df = data.frame(
      f_int = sample(1:5, n, replace = TRUE),
      f_num = rnorm(n),
      f_fct = factor(sample(c("x", "y", "z"), n, replace = TRUE)),
      y = rnorm(n)
    )
    df$f_num[c(3, 7)] = NA
    df$f_fct[2] = NA
    task = as_task_regr(df, target = "y")

    learner$train(task)
    pred = learner$predict(task)
    expect_prediction(pred)

    # marshaling only re-predicts, it does not re-fit the model
    expect_false(learner$marshaled)
    class_prev = class(learner$model)
    expect_invisible(learner$marshal())
    expect_true(is_marshaled_model(learner$model))
    expect_invisible(learner$unmarshal())
    expect_prediction(learner$predict(task))
    expect_equal(learner$predict(task), pred)
    expect_false(learner$marshaled)
    expect_equal(class(learner$model), class_prev)
  }))
})

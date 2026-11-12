skip_if_not_installed("reticulate")
skip_if_not_installed("callr")

skip_if_no_python_env("tabfm")

# tabfm wraps a multi-gigabyte foundation model whose CPU inference is slow, so instead of the full
# run_autotest() we run a single smoke test with one fit (n_estimators = 1) covering prediction,
# mixed feature types with missing values, and marshaling.
test_that("classif.tabfm smoke test", {
  expect_true(run_py_test("tabfm", function() {
    learner = lrn("classif.tabfm", n_estimators = 1, predict_type = "prob")
    expect_learner(learner)

    # mixed feature types with missing values exercise tabfm's preprocessing pipeline
    n = 40
    df = data.frame(
      f_int = sample(1:5, n, replace = TRUE),
      f_num = rnorm(n),
      f_fct = factor(sample(c("x", "y", "z"), n, replace = TRUE)),
      y = factor(sample(c("a", "b"), n, replace = TRUE))
    )
    df$f_num[c(3, 7)] = NA
    df$f_fct[2] = NA
    task = as_task_classif(df, target = "y")

    learner$train(task)
    pred = learner$predict(task)
    expect_prediction(pred)
    expect_set_equal(colnames(pred$prob), task$class_names)

    # marshaling only re-predicts, it does not re-fit the model
    expect_false(learner$marshaled)
    class_prev = class(learner$model)
    expect_invisible(learner$marshal())
    expect_true(is_marshaled_model(learner$model))
    expect_invisible(learner$unmarshal())
    expect_prediction(learner$predict(task))
    # equality of predictions rather than of python objects, whose pointers change
    expect_equal(learner$predict(task), pred)
    expect_false(learner$marshaled)
    expect_equal(class(learner$model), class_prev)
  }))
})

skip_if_not_installed("reticulate")
skip_if_not_installed("callr")

skip_if_no_python_env("tabfm")

test_that("autotest", {
  expect_true(run_py_test("tabfm", function() {
    learner = lrn("classif.tabfm")
    expect_learner(learner)

    # reproducibility is not guaranteed, hence check_replicable = FALSE
    result = run_autotest(learner, check_replicable = FALSE)
    expect_true(result, info = result$error)
  }))
})

test_that("marshaling works for classif.tabfm", {
  expect_true(run_py_test("tabfm", function() {
    learner = lrn("classif.tabfm")
    task = tsk("iris")

    learner$train(task)
    pred = learner$predict(task)
    model = learner$model
    class_prev = class(model)

    expect_false(learner$marshaled)
    expect_equal(is_marshaled_model(learner$model), learner$marshaled)
    expect_invisible(learner$marshal())
    expect_equal(is_marshaled_model(learner$model), learner$marshaled)

    # equality of predictions rather than of python objects, whose pointers change
    expect_invisible(learner$unmarshal())
    expect_prediction(learner$predict(task))
    expect_equal(learner$predict(task), pred)
    expect_false(learner$marshaled)
    expect_equal(class(learner$model), class_prev)
  }))
})

test_that("custom parameters work for classif.tabfm", {
  expect_true(run_py_test("tabfm", function() {
    task = tsk("iris")

    # "sqrt" and integer are both accepted for n_feature_crosses / n_svd_features
    learner = lrn("classif.tabfm", n_feature_crosses = "sqrt", n_svd_features = 2L)
    expect_invisible(learner$train(task))

    # norm_methods accepts a character vector
    learner = lrn("classif.tabfm", norm_methods = c("none", "power"))
    expect_invisible(learner$train(task))
    expect_error(lrn("classif.tabfm", norm_methods = "invalid"))

    # random_state accepts the special "None" value
    learner = lrn("classif.tabfm")
    learner$param_set$set_values(random_state = "None")
    expect_invisible(learner$train(task))

    # mixed feature types with missing values are handled via tabfm's preprocessing
    n = 40
    df = data.frame(
      f_int = sample(1:5, n, replace = TRUE),
      f_num = rnorm(n),
      f_fct = factor(sample(c("x", "y", "z"), n, replace = TRUE)),
      y = factor(sample(c("a", "b"), n, replace = TRUE))
    )
    df$f_num[c(3, 7)] = NA
    df$f_fct[2] = NA
    mixed = as_task_classif(df, target = "y")
    learner = lrn("classif.tabfm", predict_type = "prob")
    learner$train(mixed)
    expect_prediction(learner$predict(mixed))
  }))
})

skip_if_not_installed("reticulate")
skip_if_not_installed("callr")

skip_if(
  Sys.getenv("TABPFN_TOKEN") == "",
  message = "TABPFN_TOKEN not available (required for the license check of gated TabPFN models)"
)

skip_if_no_python_env("tabpfn")

test_that("autotest", {
  expect_true(run_py_test("tabpfn", function() {
    learner = lrn("regr.tabpfn")
    expect_learner(learner)

    # reproducibility is not guaranteed, hence check_replicable = FALSE
    result = run_autotest(learner, check_replicable = FALSE)
    expect_true(result, info = result$error)
  }))
})

test_that("marshaling works for regr.tabpfn", {
  expect_true(run_py_test("tabpfn", function() {
    learner = lrn("regr.tabpfn")
    task = tsk("mtcars")

    learner$train(task)
    pred = learner$predict(task)
    model = learner$model
    class_prev = class(model)

    # checks for marshaling as with `expect_marshalable_learner`
    expect_false(learner$marshaled)
    expect_equal(is_marshaled_model(learner$model), learner$marshaled)
    expect_invisible(learner$marshal())
    expect_equal(is_marshaled_model(learner$model), learner$marshaled)

    # checks for unmarshaling differs -- instead of checking equality of model,
    # we check equality of predictions, because expect_equal() on python objects
    # checks the pointer which almost always changes after unmarshaling
    expect_invisible(learner$unmarshal())
    expect_prediction(learner$predict(task))
    expect_equal(learner$predict(task), pred)
    expect_false(learner$marshaled)
    expect_equal(class(learner$model), class_prev)
  }))
})

# we put all tests under the same block, as the callr encapsulation takes time
test_that("other tests", {
  expect_true(run_py_test("tabpfn", function() {
    # categorical feature columns are encoded correctly ----
    n = 6
    task = as_task_regr(
      data.frame(
        x1 = sample(1:3, n, replace = TRUE),
        x2 = sample(1:3, n, replace = TRUE),
        x3 = sample(1:3, n, replace = TRUE),
        y = sample(c(0, 1), n, replace = TRUE)
      ),
      target = "y"
    )
    learner = lrn("regr.tabpfn", categorical_features_indices = 5)
    expect_error(learner$train(task))
    learner = lrn("regr.tabpfn", categorical_features_indices = 1:3)
    learner$train(task)
    expect_identical(learner$model$fitted$categorical_features_indices, 0:2)

    # categorical features are passed to python without losing missing values ----
    n = 20
    task = as_task_regr(
      data.frame(
        num = c(NA, rnorm(n - 1)),
        int = sample(1:5, n, replace = TRUE),
        lgl = c(NA, sample(c(TRUE, FALSE), n - 1, replace = TRUE)),
        chr = sample(c("a", "b"), n, replace = TRUE),
        fct = factor(sample(c("x", "y", "z"), n, replace = TRUE)),
        ord = ordered(sample(c("lo", "hi"), n, replace = TRUE), levels = c("lo", "hi")),
        y = rnorm(n)
      ),
      target = "y"
    )

    x_py = mlr3extralearners:::tabpfn_data(task)
    counts = unlist(reticulate::py_to_r(x_py$isna()$sum()$to_dict()))
    expect_equal(
      counts[c("num", "int", "lgl", "chr", "fct", "ord")],
      c(num = 1, int = 0, lgl = 1, chr = 0, fct = 0, ord = 0)
    )

    learner = lrn("regr.tabpfn")
    learner$train(task)
    expect_prediction(learner$predict(task))

    # device selection works ----
    torch = reticulate::import("torch")
    task = tsk("mtcars")

    learner = lrn("regr.tabpfn", device = "cpu")
    learner$train(task)
    expect_class(learner$model$fitted$device, c("torch.device", "python.builtin.object"))
    expect_identical(learner$model$fitted$device$type, "cpu")

    learner = lrn("regr.tabpfn", device = "auto")
    learner$train(task)
    expect_identical(learner$model$fitted$device, "auto")

    # inference_precision works ----
    # No test for the "autocast" option, because it is not supported on cpu.
    # But we test all possible torch dtypes.
    dtypes = c(
      "float32", "float",
      "float64", "double",
      "float16", "half",
      "bfloat16"
    )

    lapply(dtypes, function(dtype) {
      learner = lrn("regr.tabpfn", inference_precision = paste0("torch.", dtype))
      expect_invisible(learner$train(task))
      actual_dtype = learner$model$fitted$inference_precision
      expected_dtype = reticulate::py_get_attr(torch, dtype)
      # actual and expected should be the same torch.dtype object
      expect_identical(reticulate::py_id(actual_dtype), reticulate::py_id(expected_dtype))
    })

    # checks for memory saving mode work ----
    learner = lrn("regr.tabpfn")

    expect_error(learner$param_set$set_values(memory_saving_mode = "foo"))
    expect_error(learner$param_set$set_values(memory_saving_mode = c(1, 2)))

    learner$param_set$set_values(memory_saving_mode = "auto")
    learner$train(task)
    expect_identical(learner$model$fitted$memory_saving_mode, "auto")

    learner$param_set$set_values(memory_saving_mode = TRUE)
    learner$train(task)
    expect_identical(learner$model$fitted$memory_saving_mode, TRUE)

    learner$param_set$set_values(memory_saving_mode = 50)
    learner$train(task)
    expect_identical(learner$model$fitted$memory_saving_mode, 50)

    # random_state works ----
    # different seeds => slightly different predictions
    learner1 = lrn("regr.tabpfn", predict_type = "quantiles")
    learner1$param_set$set_values(random_state = "None")
    learner1$train(task)
    learner2 = lrn("regr.tabpfn", predict_type = "quantiles")
    learner2$param_set$set_values(random_state = "None")
    learner2$train(task)
    expect_character(all.equal(learner1$predict(task), learner2$predict(task)))

    # same seed (default: 0) => (almost) same predictions
    learner1 = lrn("regr.tabpfn", predict_type = "quantiles")
    learner1$train(task)
    learner2 = lrn("regr.tabpfn", predict_type = "quantiles")
    learner2$train(task)
    expect_equal(learner1$predict(task), learner2$predict(task))

    # same seed => (almost) same predictions
    learner1 = lrn("regr.tabpfn", predict_type = "quantiles")
    learner1$param_set$set_values(random_state = 42L)
    learner1$train(task)
    learner2 = lrn("regr.tabpfn", predict_type = "quantiles")
    learner2$param_set$set_values(random_state = 42L)
    learner2$train(task)
    expect_equal(learner1$predict(task), learner2$predict(task))
  }))
})

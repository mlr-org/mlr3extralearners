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

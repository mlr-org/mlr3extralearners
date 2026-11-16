skip_if_not_installed("reticulate")
skip_if_not_installed("callr")
# LimiX imports triton, which is only available on linux
skip_on_os(c("windows", "mac"))

skip_if_no_python_env("limix")

# the default model "LimiX-2" has 400 million parameters and is too slow on a CPU for the autotest
test_that("autotest", {
  expect_true(run_py_test("limix", function() {
    learner = lrn("regr.limix", model = "LimiX-2M")
    expect_learner(learner)

    # reproducibility is not guaranteed, hence check_replicable = FALSE
    result = run_autotest(learner, check_replicable = FALSE)
    expect_true(result, info = result$error)
  }))
})

test_that("marshaling works for regr.limix", {
  expect_true(run_py_test("limix", function() {
    learner = lrn("regr.limix", model = "LimiX-2M")
    task = tsk("mtcars")

    learner$train(task)
    pred = learner$predict(task)
    class_prev = class(learner$model)

    expect_false(learner$marshaled)
    expect_invisible(learner$marshal())
    expect_true(is_marshaled_model(learner$model))
    expect_invisible(learner$unmarshal())
    # equality of predictions rather than of python objects, whose pointers change
    expect_equal(learner$predict(task), pred)
    expect_false(learner$marshaled)
    expect_equal(class(learner$model), class_prev)
  }))
})

test_that("other tests", {
  expect_true(run_py_test("limix", function() {
    n = 40
    df = data.frame(
      f_int = sample(1:5, n, replace = TRUE),
      f_num = rnorm(n),
      f_fct = factor(sample(c("x", "y", "z"), n, replace = TRUE))
    )
    df$y = 2 * df$f_int + rnorm(n, sd = 0.1)
    df$f_num[c(3, 7)] = NA
    df$f_fct[2] = NA
    task = as_task_regr(df, target = "y")

    # predictions are on the scale of the target ----
    learner = lrn("regr.limix", model = "LimiX-2M")
    pred = learner$train(task)$predict(task)
    expect_gt(pred$score(msr("regr.rsq")), 0.5)

    # "LimiX-2" with a custom inference config ----
    # the default config has several ensemble members, which is too slow on a CPU, so only the first one is kept
    config = reticulate::import("config")
    path = file.path(dirname(config[["__file__"]]), "reg_default_noretrieval_v2.json")
    config_file = tempfile(fileext = ".json")
    reticulate::py_run_string(paste(
      "import json",
      "def limix_first_pipeline(path, out):",
      "    with open(path) as f:",
      "        cfg = json.load(f)",
      "    cfg['pipelines'] = cfg['pipelines'][:1]",
      "    with open(out, 'w') as f:",
      "        json.dump(cfg, f)",
      sep = "\n"
    ))
    reticulate::py$limix_first_pipeline(path, config_file)
    learner = lrn("regr.limix", inference_config = config_file, regression_decoder_type = "mse")
    pred = learner$train(task)$predict(task)
    expect_prediction(pred)
    expect_equal(learner$model$predictor$n_estimators, 1L)
    expect_gt(pred$score(msr("regr.rsq")), 0.5)
  }))
})

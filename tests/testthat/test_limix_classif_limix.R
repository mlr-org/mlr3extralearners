skip_if_not_installed("reticulate")
skip_if_not_installed("callr")
# LimiX imports triton, which is only available on linux
skip_on_os(c("windows", "mac"))

skip_if_no_python_env("limix")

# the default model "LimiX-2" has 400 million parameters and is too slow on a CPU for the autotest
test_that("autotest", {
  expect_true(run_py_test("limix", function() {
    learner = lrn("classif.limix", model = "LimiX-2M")
    expect_learner(learner)

    # reproducibility is not guaranteed, hence check_replicable = FALSE
    result = run_autotest(learner, check_replicable = FALSE)
    expect_true(result, info = result$error)
  }))
})

test_that("marshaling works for classif.limix", {
  expect_true(run_py_test("limix", function() {
    learner = lrn("classif.limix", model = "LimiX-2M", predict_type = "prob")
    task = tsk("iris")

    learner$train(task)
    pred = learner$predict(task)
    class_prev = class(learner$model)

    expect_false(learner$marshaled)
    expect_invisible(learner$marshal())
    expect_true(is_marshaled_model(learner$model))
    # the python predictor is dropped, so that the marshaled model is a plain R object
    expect_false(any(rapply(unclass(learner$model), inherits, what = "python.builtin.object", how = "unlist")))
    expect_invisible(learner$unmarshal())
    # equality of predictions rather than of python objects, whose pointers change
    expect_equal(learner$predict(task)$prob, pred$prob)
    expect_false(learner$marshaled)
    expect_equal(class(learner$model), class_prev)
  }))
})

# we put all tests under the same block, as the callr encapsulation takes time
test_that("other tests", {
  expect_true(run_py_test("limix", function() {
    n = 40
    df = data.frame(
      f_int = sample(1:5, n, replace = TRUE),
      f_num = rnorm(n),
      f_lgl = sample(c(TRUE, FALSE), n, replace = TRUE),
      f_fct = factor(sample(c("x", "y", "z"), n, replace = TRUE)),
      f_ord = factor(sample(c("lo", "mid", "hi"), n, replace = TRUE), levels = c("lo", "mid", "hi"), ordered = TRUE),
      y = factor(rep(c("a", "b"), n / 2), levels = c("a", "unused", "b"))
    )
    df$f_num[c(3, 7)] = NA
    df$f_int[4] = NA
    df$f_lgl[5] = NA
    df$f_fct[2] = NA
    df$f_ord[6] = NA
    task = as_task_classif(df, target = "y")

    # missing values and ordered factors are converted correctly ----
    data = mlr3extralearners:::limix_data(task$data(cols = task$feature_names))
    expect_equal(data$f_ord, as.double(df$f_ord))
    expect_true(is.na(data$f_int[4]) && is.na(data$f_lgl[5]) && is.na(data$f_fct[2]))
    expect_character(data$f_fct)
    expect_double(data$f_lgl)

    # class levels that are missing in the training data get a probability of 0 ----
    learner = lrn("classif.limix", model = "LimiX-2M", predict_type = "prob")
    pred = learner$train(task)$predict(task)
    expect_equal(colnames(pred$prob), c("a", "unused", "b"))
    expect_true(all(pred$prob[, "unused"] == 0))
    expect_equal(unname(rowSums(pred$prob)), rep(1, n), tolerance = 1e-5)

    # the order of the feature columns at predict time does not matter ----
    task_rev = as_task_classif(df[, rev(names(df))], target = "y")
    expect_equal(learner$predict(task_rev)$prob, pred$prob)

    # device is passed on ----
    learner = lrn("classif.limix", model = "LimiX-2M", device = "cpu")
    learner$train(task)
    expect_equal(as.character(learner$model$predictor$device), "cpu")

    # "LimiX-2" with a custom inference config and model_path ----
    # the default config has 32 ensemble members, which is too slow on a CPU, so only the first one is kept
    config = reticulate::import("config")
    path = file.path(dirname(config[["__file__"]]), "cls_default_noretrieval_v2.json")
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
    learner = lrn("classif.limix", inference_config = config_file, predict_type = "prob", test_batch_size = "None")
    pred = learner$train(task)$predict(task)
    expect_prediction(pred)
    expect_equal(learner$model$predictor$n_estimators, 1L)
    expect_class(learner$model$predictor, "inference.v2_0.predictor.LimiXPredictor")

    hub = reticulate::import("huggingface_hub")
    model_path = hub$hf_hub_download(repo_id = "stable-ai/LimiX-1_2M", filename = "LimiX-1_2M.ckpt")
    learner = lrn("classif.limix", model_path = model_path)
    learner$train(task)
    expect_class(learner$model$predictor, "inference.v1_0.predictor.LimiXPredictor")
  }))
})
